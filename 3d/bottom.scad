tol = 0.5;
pcb_x = 130;
pcb_y = 110;
pcb_z = 4;
bolt_d = 3.6;
shift_bolt = 5;

// box thickness
th = 3;

shift_x = th + 1;
shift_y = th + 1;

box_x = pcb_x + shift_x + th + 1;
box_y = pcb_y + 2*th + 1;

pcb_width = 2;
pcb_up = 9;

box_z = th + pcb_up + pcb_width - 1;

//socket_h = 15;
socket_w = 10;
socket_n = 5;
socket_int = 20;
start_socket_x = 20 + shift_x;
start_socket_z = th + pcb_z + tol;
eps = 1e-1;

usb_type_b_w = 15.2;
//usb_type_b_h = 3;
start_type_b_y = shift_y + pcb_y - 30.1;
start_type_b_z = th + pcb_z + tol;

usb_type_a_w = 17.3;
//usb_type_a_h = 0.5;
start_type_a_y = shift_y + 44.7;
start_type_a_z = th + pcb_z + tol;

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
under_pcb = 8;
fn = 10;
gaika_d = 6.25;
gaika_h = 2.5;



difference() {
  union() {
    difference() {
      cube([box_x,box_y,box_z], false);
      translate([th, th, th]) {
        cube([box_x-2*th+eps, box_y-2*th+eps, box_z-th+eps], false);
      }
    }
    // under_pcb
    for (dx = [shift_x+shift_bolt, shift_x+pcb_x-shift_bolt]) {
      for (dy = [shift_y+shift_bolt, shift_y+pcb_y-shift_bolt]) {
        translate([dx,dy,pcb_up/2+th-eps]) {
          cube(size=[under_pcb,under_pcb,pcb_up], center=true);
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
        cylinder($fn=6, r=gaika_d/2, h=gaika_h);
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
};

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

