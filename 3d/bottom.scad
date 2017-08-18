tol = 0.5;
pcb_x = 130;
pcb_y = 110;
pcb_z = 4;
bolt_d = 3.6;
shift_bolt = 5;

// box thickness
th = 2;

shift_x = 4;
shift_y = th + 1;

box_x = pcb_x + shift_x + 4;
box_y = pcb_y + shift_y + th;

pcb_width = 2;
pcb_up = 9;

box_z = th + pcb_up + pcb_width - 1;

socket_h = 15;
socket_w = 10;
socket_n = 5;
socket_int = 20;
start_socket_x = 20 + shift_x;
start_socket_z = th + pcb_z + tol;
eps = 1e-1;

usb_type_b_w = 12;
usb_type_b_h = 11;
start_type_b_y = shift_y + 81.5;
//start_type_b_z = th + pcb_z + tol;

usb_type_a_w = 13.4;
usb_type_a_h = 7.3;
start_type_a_y = shift_y + 47;
//start_type_a_z = th + pcb_z + tol;

// programmator
micro_x = 10;
micro_y = 21.1;
micro_start_x = shift_x + 4.75;
micro_start_y = shift_y + pcb_y - 23.3 - micro_y;

contrast_start_x = shift_x + 38.4;
contrast_start_y = shift_y + 25.7;
volume_start_x = shift_x + pcb_x - 39.2;
volume_start_y = contrast_start_y;
pot_d = 7;
under_pcb = 13;
fn = 10;
gaika_h = 6;
gaika_w = 5.6;
stoiki_r = 4;



translate([0,0,-50]) {

difference() {
  union() {
    difference() {
      cube([box_x,box_y,box_z], false);
      translate([th, th, th]) {
        cube([box_x-2*th+eps, box_y-2*th+eps, box_z-th+eps], false);
      }
    }
    // under_pcb, stoiki
    for (dx = [shift_x+shift_bolt, shift_x+pcb_x-shift_bolt]) {
      for (dy = [shift_y+shift_bolt, shift_y+pcb_y-shift_bolt]) {
//        translate([dx,dy,pcb_up/2+th-eps]) {
//          cube(size=[under_pcb,under_pcb,pcb_up], center=true);
//        }
        translate([dx,dy,th-eps+pcb_up/2]) {
          cylinder(r=stoiki_r, h=pcb_up, center=true);
        }
      }
    }
  }

  // bolts
  for (dx = [shift_x+shift_bolt, shift_x+pcb_x-shift_bolt]) {
    for (dy = [shift_y+shift_bolt, shift_y+pcb_y-shift_bolt]) {
      translate([dx,dy,-eps]) {
        cylinder($fn=fn, r=bolt_d/2, h=th+pcb_up+2*eps);
        // gaika
        cylinder($fn=6, r=gaika_w / 2 / cos(30) + 0.05, h=gaika_h);
      }
    }
  }

//    for (i = [0:1:socket_n-1]) {
//        translate([start_socket_x+i*socket_int-tol, box_y-th-eps, start_socket_z]) {
//            cube(size=[socket_w+2*tol, th+2*eps, box_z]);
//        }
//    }

//    // usb_in1 type b
//    translate([box_x-th-eps, start_type_b_y-tol, start_type_b_z]) {
//        cube(size=[th+2*eps, usb_type_b_w+2*tol, box_z]);
//    }

//    // usb_out1 type a
//    translate([-eps, start_type_a_y - tol, start_type_a_z]) {
//        cube(size=[th+2*eps, usb_type_a_w + 2*tol, box_z]);
//    }

    // programmator
    translate([micro_start_x-tol,micro_start_y-tol, -eps]) {
      cube(size=[micro_x+2*tol, micro_y+2*tol, th+2*eps]);
    }

    // contrast
    translate([contrast_start_x, contrast_start_y, -eps]) {
      cylinder($fn=fn, r=pot_d/2, h=th+2*eps);
    }

    // volume
//    translate([volume_start_x, volume_start_y, -eps]) {
//      cylinder($fn=20, r=pot_d/2, h=th+2*eps);
//    }
}
}

top_box_z = 17 + th;
stoiki_h = top_box_z - th;
pcb_room = 0.5;
screen_start_x = shift_x + 28;
screen_start_y = shift_y + 40;
screen_length_x = 72;
screen_length_y = 24;
screen_hold_x = 40;
screen_hold_y = 4;
screen_hold_start_z = 14;
screen_hold_y_shift = -2;

master_button_y = shift_y + 10;
master_button_x = shift_x + 43;
master_button_int = 21.8;
master_button_r = 3;
top_bolt_h = 2.5;
top_bolt_r = 3.5;
speaker_shift = 18;
speaker_r = 15;
speaker_h = 15;
speaker_hole_d = 10;
speaker_hole_int = 3;
speaker_hole_w = 1.5;
speaker_shift = 18;

!difference() {
  union() {
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
          //cube(size=[under_pcb, under_pcb, stoiki_h + eps], center=true);
        }
      }
    }
    // screen_hold
    translate([screen_start_x + (screen_length_x - screen_hold_x)/2, screen_start_y + screen_hold_y_shift - screen_hold_y, screen_hold_start_z]) {
	cube([screen_hold_x, screen_hold_y, top_box_z - screen_hold_start_z - th + eps]);
    }
  }
  // - speaker
  translate([shift_x + pcb_x - 18, shift_y + 18, 0]) {
    cylinder(r=speaker_r, h = 15, $fn=20);
  }
  // speaker_hole
  for (dy = [shift_y + speaker_shift - speaker_hole_int - speaker_hole_w*3/2, 
             shift_y + speaker_shift - speaker_hole_w/2, 
             shift_y + speaker_shift + speaker_hole_int + speaker_hole_w/2]) { 
    translate([shift_x + pcb_x - 18-speaker_hole_d/2, dy, top_box_z-th-eps]) {
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
        cylinder($fn=6, r=top_bolt_r, h=top_bolt_h + eps);
      }
    }
  }

  // screen
  translate([screen_start_x-tol, screen_start_y-tol, top_box_z - th - eps]) {
      cube([screen_length_x + 2*tol, screen_length_y + 2*tol, th + 2*eps]);
  }
  // sockets
  for (i = [0:1:socket_n-1]) {
      translate([start_socket_x+i*socket_int-tol, box_y-th-eps, -eps]) {
	  cube(size=[socket_w+2*tol, th+2*eps, socket_h+tol]);
      }
  }
  // type_b
  translate([box_x - th - eps, start_type_b_y - tol, -tol]) {
      cube([th + 2*eps, usb_type_b_w + 2*tol, usb_type_b_h + 2*tol]);
  }
  // type_a
  translate([-eps, start_type_a_y, -eps]) {
      cube([th + 2*eps, usb_type_a_w+eps, usb_type_a_h+2*eps]);
  }
  // master buttons
  for (dx = [master_button_x, master_button_x + master_button_int*2])
      translate([dx, master_button_y, top_box_z - th - eps]) {
	  cylinder($fn=fn, r=master_button_r+tol, h=th+2*eps);
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

