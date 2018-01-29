tol = 0.25;
screen_tol = 0.8;
pcb_x = 100;
pcb_y = 100;
pcb_z = 4;
bolt_d = 3.6;
shift_bolt = 3;
shift_bolt_x = 4;
shift_bolt_y = 7;
board_w = 1;
board_h = 1;


// box thickness
th = 2;

// bolts
shift_x = th;
shift_y = th;

box_x = pcb_x + 2*th;
box_y = pcb_y + 2*th;

pcb_width = 2;

socket_h = 15;
socket_w = 10;
socket_n = 6;
socket_int = 15.6;
start_socket_x = 6 + shift_x;
eps = 1e-1;

bottom_box_z = socket_h + th + pcb_width;

usb_type_b_w = 12;
usb_type_b_h = 11;
start_type_b_y = shift_y + pcb_y - 36;
start_type_b_z = bottom_box_z - pcb_width - usb_type_b_h - tol;

usb_type_a_w = 14.4;
usb_type_a_h = 7.8;
start_type_a_y = shift_y + 25;
start_type_a_z = bottom_box_z - pcb_width - usb_type_a_h - tol;

// programmator
micro_x = 10;
micro_y = 21.1;
micro_start_x = shift_x + 4.75;
micro_start_y = shift_y + pcb_y - 23.3 - micro_y;

contrast_start_x = shift_x + 38.4;
contrast_start_y = shift_y + 25.7;
//volume_start_x = shift_x + pcb_x - 39.2;
//volume_start_y = contrast_start_y;
pot_d = 7;
under_pcb = 13;
fn = 10;
gaika_h = 4;
gaika_w = 5.5;
stoiki_r = 4;
stoiki_h = socket_h;
wide_stoiki_r = stoiki_r + 2;

dynamic_x = shift_x + 19;
dynamic_y = shift_y + 31;
dynamic_r = 16;

volume_center_y = shift_y + 50;
volume_w = 13;
volume_start_y = volume_center_y - volume_w/2;
volume_h = 3;

translate([0,0,-50]) {

!difference() {
  union() {
    difference() {
      union() {
        cube([box_x, box_y, bottom_box_z-board_h], false);
        translate([th - board_w, th - board_w, 0]) {
          cube([box_x - 2*(th - board_w), box_y - 2*(th - board_w), bottom_box_z], false);
        }
      }
      translate([th, th, th]) {
        cube([box_x-2*th+eps, box_y-2*th+eps, bottom_box_z-th+eps], false);
      }
    }
    // under_pcb, stoiki
    for (dy = [shift_y+shift_bolt_y, shift_y+pcb_y-shift_bolt_y]) {
      for (dx = [shift_x+shift_bolt_x, shift_x+pcb_x-shift_bolt_x]) {
        translate([dx,dy,th-eps]) {
          cylinder($fn=6, r=stoiki_r, h=stoiki_h + eps);
          //cylinder($fn=6, r=wide_stoiki_r, h=gaika_h);
        }
      }
    }
    //translate([box_x/2, box_y/2, th-eps]) {
      //cylinder($fn=6, r=stoiki_r, h=pcb_up);
    //}
  }

  // dynamic
  translate([dynamic_x, dynamic_y, -eps]) {
      cylinder($fn=20, r=dynamic_r, h = th+2*eps);
  }

  // sockets
  for (i = [0:1:socket_n-1]) {
      translate([start_socket_x+i*socket_int - tol, -eps, bottom_box_z - socket_h - pcb_width]) {
        cube(size=[socket_w + 2*tol, socket_h, socket_h + socket_h]);
      }
  }
  // bolts
  for (dx = [shift_x+shift_bolt_x, shift_x+pcb_x-shift_bolt_x]) {
    for (dy = [shift_y+shift_bolt_y, shift_y+pcb_y-shift_bolt_y]) {
      translate([dx,dy,-eps]) {
        cylinder($fn=fn, r=bolt_d/2, h=th+stoiki_h+2*eps);
        // gaika
        //cylinder($fn=6, r=gaika_w / 2 / cos(30) + 0.05, h=gaika_h);
      }
    }
  }

//    // usb_in1 type b
    translate([box_x-th-eps, start_type_b_y-tol, start_type_b_z]) {
        cube(size=[th+2*eps, usb_type_b_w + 2*tol, bottom_box_z]);
    }

    // usb_out1 type a
    translate([box_x - eps - th, start_type_a_y - tol, start_type_a_z]) {
        cube(size=[th+2*eps, usb_type_a_w + 2*tol, bottom_box_z]);
    }

    // volume
    translate([-eps, volume_start_y, bottom_box_z - pcb_width - volume_h]) {
        cube(size=[th+2*eps, volume_w, volume_h + pcb_width + eps]);
    }

}
}

top_box_z = 15 + th;
//stoiki_h = top_box_z - th;
wide_stoiki_h = 4;
pcb_room = 1;
screen_start_x = shift_x + 29;
screen_start_y = shift_y + 38.9;
screen_length_x = 71.2;
screen_length_y = 24.2;
screen_hold_x = 40;
screen_hold_y = 4;
screen_hold_start_z = 12.5;
screen_hold_y_shift = 2;
screen_hold_up_x = 15;
screen_hold_up_x_shift = 5;

master_button_y = shift_y + 10;
master_button_x = shift_x + 43;
master_button_int = 21.8;
master_button_r = 5;
top_bolt_h = 1.5;
top_bolt_r = 3.5;
speaker_shift = 18;
speaker_r = 15;
speaker_h = 15;
speaker_hole_d = 10;
speaker_hole_int = 3;
speaker_hole_w = 1.5;
speaker_shift = 18;

difference() {
  union() {
    // board
    translate([0, 0, -board_h]) {
        difference() {
            cube([box_x, box_y, board_h + eps], false);
            translate([board_w, board_w, -eps]) {
                cube([box_x - 2*board_w, box_y - 2*board_w, board_h + 3*eps], false);
            }
        }
    }
    difference() {
      cube([box_x,box_y,top_box_z], false);
      translate([th, th, -eps]) {
        cube([box_x-2*th+eps, box_y-2*th+eps, top_box_z-th+eps], false);
      }
    }
    // stoiki
    for (dx = [shift_x+shift_bolt, shift_x+pcb_x-shift_bolt]) {
      for (dy = [shift_y+shift_bolt, shift_y+pcb_y-shift_bolt]) {
        translate([dx,dy,pcb_room]) {
          cylinder($fn=6, r=stoiki_r, h=top_box_z-th+eps);
        }
        translate([dx,dy,top_box_z-th-wide_stoiki_h+eps]) {
          cylinder($fn=6, r=wide_stoiki_r, h=wide_stoiki_h+th-2*eps);
        }
      }
    }
    // screen_hold
    translate([screen_start_x + (screen_length_x - screen_hold_x)/2, screen_start_y - screen_hold_y_shift - screen_hold_y, screen_hold_start_z]) {
	cube([screen_hold_x, screen_hold_y, top_box_z - screen_hold_start_z - th + eps]);
    }
    translate([screen_start_x + screen_length_x - screen_hold_up_x - screen_hold_up_x_shift, screen_start_y + screen_length_y + screen_hold_y_shift, screen_hold_start_z]) {
	cube([screen_hold_up_x, screen_hold_y, top_box_z - screen_hold_start_z - th + eps]);
    }
  }
  // - speaker na stoikah
  translate([shift_x + pcb_x - 18, shift_y + 18, 0]) {
    cylinder(r=speaker_r, h = 15, $fn=20);
  }
  // speaker_hole
  for (dy = [shift_y + speaker_shift - speaker_hole_int - speaker_hole_w*3/2, 
             shift_y + speaker_shift - speaker_hole_w/2, 
             shift_y + speaker_shift + speaker_hole_int + speaker_hole_w/2]) { 
    translate([shift_x + pcb_x - speaker_shift - speaker_hole_d, dy, top_box_z-th-eps]) {
      cube(size=[speaker_hole_d, speaker_hole_w, th + 2*eps]);
    }
  }

  // bolts
  for (dx = [shift_x+shift_bolt, shift_x+pcb_x-shift_bolt]) {
    for (dy = [shift_y+shift_bolt, shift_y+pcb_y-shift_bolt]) {
      translate([dx,dy,-eps]) {
        cylinder($fn=fn, r=bolt_d/2, h=top_box_z+2*eps);
      }
      translate([dx, dy, top_box_z - top_bolt_h]) {
        //cylinder($fn=6, r=gaika_w / 2 / cos(30) + 0.05, h=wide_stoiki_h+eps);
        cylinder($fn=6, r=top_bolt_r, h=top_bolt_h + eps);
      }
    }
  }

  // screen
  translate([screen_start_x - screen_tol, screen_start_y - screen_tol, top_box_z - th - eps]) {
      cube([screen_length_x + 2*screen_tol, screen_length_y + 2*screen_tol, th + 2*eps]);
  }
  // sockets
  for (i = [0:1:socket_n-1]) {
      translate([start_socket_x+i*socket_int - tol, box_y-th-eps, -eps - board_h]) {
        cube(size=[socket_w + 2*tol, th+2*eps, socket_h + board_h]);
      }
  }
  // type_b
  translate([box_x - th - eps, start_type_b_y - tol, -tol - board_h]) {
      cube([th + 2*eps, usb_type_b_w + 2*tol, usb_type_b_h + 2*tol + board_h]);
  }
  // type_a
  translate([-eps, start_type_a_y - tol, -eps - board_h]) {
      cube([th + 2*eps, usb_type_a_w + 2*tol, usb_type_a_h + 2*eps + board_h]);
  }
  // master buttons
  for (i = [0:1:2]) {
    translate([master_button_x + master_button_int*i, master_button_y, top_box_z - th - eps]) {
      cylinder($fn=fn, r=master_button_r + tol, h=th+2*eps);
    }
  }
}


//// bolts
//for (dx = [shift_x+shift_bolt, shift_x+pcb_x-shift_bolt]) {
//  for (dy = [shift_y+shift_bolt, shift_y+pcb_y-shift_bolt]) {
//    difference() {
//      translate([dx,dy,pcb_up/2+th]) {
//        cube(size=[a,a,pcb_up], center=true);
//      }
//      translate([dx,dy,-eps]) {
//        cylinder($fn=20, r=bolt_d/2, h=th+pcb_up+2*eps);
//      }
//    }
//  }
//}


//leg_r = t;
//shift = t/2+leg_r;
//for (dx = [shift, a-shift])
//    for (dy = [shift, b-shift]) {
//        translate([dx, dy, 0]) {
//            cylinder(h=c, r=leg_r, $fn=40);
//        }
//    }
