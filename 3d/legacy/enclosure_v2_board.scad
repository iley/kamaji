use <cubeX.scad>

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

m3_bolt_top_r = 2.9;
m3_bolt_top_h = 1.5;


// box thickness
th = 2;

// bolts
shift_x = th + 0.5;
shift_y = th + 0.5;

box_x = pcb_x + 2*th + 1;
box_y = pcb_y + 2*th + 1;

pcb_width = 1.8;

socket_h = 14.7;
socket_w = 10;
socket_n = 6;
socket_all_len = 85;
socket_int = socket_w + (socket_all_len - socket_n*socket_w)/(socket_n - 1);
start_socket_x = shift_x + (pcb_x - socket_all_len) / 2;
eps = 1e-1;

bottom_box_z = socket_h + th + pcb_width;

usb_type_b_w = 12;
usb_type_b_h = 11;
start_type_b_y = shift_y + pcb_y - 36.5;
start_type_b_z = bottom_box_z - pcb_width - usb_type_b_h - tol;

usb_type_a_w = 14.4;
usb_type_a_h = 6.3;
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
dynamic_y = shift_y + 30;
dynamic_r = 16;

volume_center_y = shift_y + 50;
volume_w = 15;
volume_start_y = volume_center_y - volume_w/2;
volume_h = 4;
round_radius=2;

translate([0,0,-50]) {

// put exclamation mark here to render bottom
difference() {
  union() {
    difference() {
      union() {
        cubeBottomX([box_x, box_y, bottom_box_z-board_h], radius=round_radius);
        translate([th - board_w, th - board_w, 0]) {
          cubeBottomX([box_x - 2*(th - board_w), box_y - 2*(th - board_w), bottom_box_z], radius=round_radius);
        }
      }
      translate([th, th, th]) {
        cubeBottomX([box_x-2*th+eps, box_y-2*th+eps, bottom_box_z-th+eps], radius=round_radius);
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
   translate([start_socket_x, th - eps, th - eps]) {
     cube([socket_all_len, th/2 + eps, stoiki_h + eps]);
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
        // bolt
        cylinder($fn=12, r=m3_bolt_top_r + 0.05, h=m3_bolt_top_h);
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

top_box_z = 10;
//stoiki_h = top_box_z - th;
wide_stoiki_h = 5;
pcb_room = 1;
screen_start_x = shift_x + 11.5;
screen_start_y = shift_y + 25;
screen_length_x = 77;
screen_length_y = 50.5;
screen_hold_x = 40;
screen_hold_y = 4;
screen_hold_start_z = 12.5;
screen_hold_y_shift = 2;
screen_hold_up_x = 15;
screen_hold_up_x_shift = 5;

master_button_y = shift_y + pcb_y - 7.5;
master_button_x = shift_x + 19;
master_button_int = 31.5;
master_button_r = 6.5;
top_bolt_h = 1.5;
top_bolt_r = 3.5;

// put exclamation mark here to render top
!rotate(a=[180,0,0]) {
difference() {
  union() {
    // board
    translate([0, 0, -board_h]) {
        difference() {
            cubeSideX(size=[box_x, box_y, board_h + eps], radius=round_radius, center=false);
            translate([board_w, board_w, -eps]) {
                cubeSideX(size=[box_x - 2*board_w, box_y - 2*board_w, board_h + 3*eps], radius=round_radius, center=false);
            }
        }
    }
    difference() {
      cubeTopX(size=[box_x,box_y,top_box_z], radius=round_radius, center=false);
      translate([th, th, -eps]) {
        cubeTopX(size=[box_x-2*th+eps, box_y-2*th+eps, top_box_z-th+eps], radius=round_radius, center=false);
      }
    }
    // stoiki
    for (dx = [shift_x+shift_bolt_x, shift_x+pcb_x-shift_bolt_x]) {
      for (dy = [shift_y+shift_bolt_y, shift_y+pcb_y-shift_bolt_y]) {
        translate([dx,dy,-eps]) {
          cylinder($fn=6, r=stoiki_r-0.5, h=top_box_z-th+eps);
        }
        translate([dx,dy,top_box_z-th-wide_stoiki_h+eps]) {
          cylinder($fn=6, r=wide_stoiki_r, h=wide_stoiki_h-2*eps);
        }
      }
    }
  }
  // bolts
  for (dx = [shift_x+shift_bolt_x, shift_x+pcb_x-shift_bolt_x]) {
    for (dy = [shift_y+shift_bolt_y, shift_y+pcb_y-shift_bolt_y]) {
      translate([dx,dy,-2*eps]) {
        cylinder($fn=fn, r=bolt_d/2, h=top_box_z+2*eps);
      }
      translate([dx, dy, top_box_z - wide_stoiki_h]) {
        cylinder($fn=6, r=gaika_w / 2 / cos(30) + 0.05, h=wide_stoiki_h+eps);
        //cylinder($fn=6, r=top_bolt_r, h=top_bolt_h + eps);
      }
    }
  }

  // screen
  translate([screen_start_x - screen_tol, screen_start_y - screen_tol, top_box_z - th - eps]) {
      cube([screen_length_x + 2*screen_tol, screen_length_y + 2*screen_tol, th + 2*eps]);
  }
  // master buttons
  for (i = [0:1:2]) {
    translate([master_button_x + master_button_int*i, master_button_y, top_box_z - th - eps]) {
      cylinder($fn=20, r=master_button_r + tol, h=th+2*eps);
    }
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

module roundedRect(size, radius)
{
    x = size[0];
    y = size[1];
    z = size[2];
    translate([x/2,y/2,0]) {
    linear_extrude(height=z)
        hull()
        {
            // place 4 circles in the corners, with the given radius
            translate([(-x/2)+(radius/2), (-y/2)+(radius/2), 0])
                circle(r=radius);

            translate([(x/2)-(radius/2), (-y/2)+(radius/2), 0])
                circle(r=radius);

            translate([(-x/2)+(radius/2), (y/2)-(radius/2), 0])
                circle(r=radius);

            translate([(x/2)-(radius/2), (y/2)-(radius/2), 0])
                circle(r=radius);
        }
    }
}
