let midiInputs = [];
let midiOutputs = [];

const pitchToPlayer = {
  24: 0, 25: 1, 26: 2, 27: 3,
  28: 4, 29: 5, 30: 6, 31: 7,
};

const playerToPitch = {
  0: 24, 1: 25, 2: 26, 3: 27,
  4: 28, 5: 29, 6: 30, 7: 31,
}

const midiChannelButtons = 0;
const midiChannelLeds = 1;
const midiChannelBuzzer = 2;
const maxVelocity = 127;

let blinkOnPressEnabled = false;
const blinkOnPressDurationMs = 500;

function initialize() {
  navigator.requestMIDIAccess()
    .then(midi => handleMidiReady(midi), err => handleMidiError(err));

  const blinkLedButton = document.getElementById("blink_led");
  blinkLedButton.addEventListener("click", (event) => handleBlinkButton());

  const playSoundButton = document.getElementById("play_sound");
  playSoundButton.addEventListener("click", (event) => handleSoundButton());

  const clearLogButton = document.getElementById("clear_log");
  clearLogButton.addEventListener("click", (event) => handleClearLogButton());

  const blinkOnPressCheckbox = document.getElementById("blink_on_press");
  blinkOnPressCheckbox.addEventListener("change", (event) => handleBlinkOnPresCheckboxChange(event));
}

function log(message) {
  const textarea = document.getElementById("log_box");
  textarea.value += message + "\n";
  textarea.scrollTop = textarea.scrollHeight;
}

function handleMidiReady(midi) {
  midi.addEventListener("statechange", (event) => updateDevices(event.target));
  updateDevices(midi);
}

function handleMidiError(err) {
  console.log("MIDI error: " + err);
}

function handleMidiMessage(event) {
  const command = event.data[0] >> 4;
  const channel = event.data[0] & 0xf;
  const pitch = event.data[1];
  const velocity = event.data[2];

  if (command == 0x09) {
    handleNoteOn(channel, pitch, velocity);
  } else if (command == 0x08) {
    handleNoteOff(channel, pitch, velocity);
  }
}

function handleNoteOn(channel, pitch, velocity) {
  if (channel == midiChannelButtons) {
    const player = pitchToPlayer[pitch];
    if (player === undefined) {
      log(`note on channel=${channel} pitch=${pitch} velocity=${velocity}`);
    } else {
      log(`player ${player+1} button ON`);
      if (blinkOnPressEnabled) {
        blinkLed(player, blinkOnPressDurationMs);
      }
    }
  }
}

function handleNoteOff(channel, pitch, velocity) {
  if (channel == midiChannelButtons) {
    const player = pitchToPlayer[pitch];
    if (player === undefined) {
      log(`note off channel=${channel} pitch=${pitch} velocity=${velocity}`);
    } else {
      log(`player ${player+1} button OFF`);
    }
  }
}

function handleBlinkButton() {
  if (!deviceConnected()) {
    log("blink: no device connected");
    return;
  }
  const ledSelect = document.getElementById("led_select");
  const index = ledSelect.value - 1;

  const durationInput = document.getElementById("blink_duration_input");
  const durationMs = durationInput.value;

  blinkLed(index, durationMs);
}

function blinkLed(index, durationMs) {
  log(`blink led #${index + 1} for ${durationMs}ms`);

  const pitch = playerToPitch[index];
  playNote(midiChannelLeds, pitch, maxVelocity, durationMs);
}

function handleSoundButton(event) {
  if (!deviceConnected()) {
    log("sound: no device connected");
    return;
  }

  const pitchSelect = document.getElementById("pitch_select");
  const pitch = pitchSelect.value;

  const durationInput = document.getElementById("sound_duration_input");
  const duration = durationInput.value;

  log(`play pitch ${pitch} for ${duration} ms`);
  playNote(midiChannelBuzzer, pitch, maxVelocity, duration);
}

function handleClearLogButton(event) {
  const textarea = document.getElementById("log_box");
  textarea.value = "";
  textarea.scrollTop = textarea.scrollHeight;
}

function updateDevices(midi) {
  const previousDevicesNumber = midiInputs.length;

  midiInputs = [];
  midiOutputs = [];

  midi.inputs.forEach((key, value) => {
    midiInputs.push(key);
  });

  midi.outputs.forEach((key, value) => {
    midiOutputs.push(key);
  });

  const devicesNumber = midiInputs.length;
  if (previousDevicesNumber != devicesNumber) {
    log(`${devicesNumber} MIDI device${devicesNumber == 1 ? "" : "s"} connected`);
  }


  updateDeviceList();
}

function updateDeviceList() {
  const inputDeviceList = document.getElementById("input_device_list");
  inputDeviceList.innerText = midiInputs.map(input => input.name).join("; ");

  for (const input of midiInputs) {
    input.addEventListener('midimessage', handleMidiMessage);
  }

  const outputDeviceList = document.getElementById("output_device_list");
  outputDeviceList.innerText = midiOutputs.map(output => output.name).join(" ");
}

function playNote(channel, pitch, velocity, durationMs) {
  sendNoteOnMessage(channel, pitch, velocity);
  setTimeout(() => sendNoteOffMessage(channel, pitch, 0), durationMs);
}

function sendNoteOnMessage(channel, pitch, velocity) {
  for (let device of midiOutputs) {
    const message = [(0x90 | channel), pitch, velocity];
    device.send(message);
  }
}

function sendNoteOffMessage(channel, pitch, velocity) {
  for (let device of midiOutputs) {
    const message = [0x80 | channel, pitch, velocity];
    device.send(message);
  }
}

function handleBlinkOnPresCheckboxChange(event) {
  const checkbox = event.target;
  blinkOnPressEnabled = checkbox.checked; // global state
  log(`blink on button press is ${blinkOnPressEnabled ? "ON" : "OFF"}`);
}

function deviceConnected() {
  return midiInputs.length > 0;
}

initialize();
