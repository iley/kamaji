let midiInputs = [];
let midiOutputs = [];

function initialize() {
  navigator.requestMIDIAccess()
    .then(midi => handleMidiReady(midi), err => handleMidiError(err));
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
  console.log("note on " + channel + " " + pitch + " " + velocity);
}

function handleNoteOff(channel, pitch, velocity) {
  console.log("note off " + channel + " " + pitch + " " + velocity);
}

function updateDevices(midi) {
  midiInputs = [];
  midiOutputs = [];

  midi.inputs.forEach((key, value) => {
    midiInputs.push(key);
  });

  midi.outputs.forEach((key, value) => {
    midiOutputs.push(key);
  });

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

initialize();
