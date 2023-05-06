$fn = 50;
button_h = 13;
overlap = 5;
//total_height = 22;
total_height = 19;
th = 2; // enclosure thickness
eps = 1e-1;

cap_r = 10.2 / 2;
cap_h = total_height - button_h + overlap;
cap_r_bottom = 3;

border_offset = 4 + th;
border_h = 3;
border_r = cap_r + 2;

socket_r = 3.2 / 2;

difference() {
  union() {
    cylinder(r=cap_r_bottom, h=cap_h);
    translate([0, 0, cap_h - border_h - border_offset]) {
      cylinder(r=border_r, h=border_h);
      cylinder(r=cap_r, h=border_h + border_offset);
    }
  }
  translate([0, 0, -eps]) {
    cylinder(r=socket_r, h=overlap+eps);
  }
}
