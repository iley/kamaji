$fn = 20;
eps = 1e-3;

// TODO: Proper dimensions.
size_x = 50;
size_y = 20;
size_z = 7;
width = 4;

pin_length = 3;
pin_radius = 1;
pin_offset_left = 2;
pin_offset_right = pin_offset_left;
pin_offset_top = 2;
pin_offset_bottom = 2;

translate([-size_x/2, 0, 0]) {
  cube([size_x, width, size_z]);
  cube([width, size_y, size_z]);
  translate([size_x - width, 0, 0]) {
    cube([width, size_y, size_z]);
  };
  translate([pin_offset_left, pin_offset_bottom, -pin_length]) {
    cylinder(pin_length + eps, pin_radius);
  }
  translate([size_x - pin_offset_right, pin_offset_bottom, -pin_length]) {
    cylinder(pin_length + eps, pin_radius);
  }
  translate([pin_offset_left, size_y - pin_offset_top, -pin_length]) {
    cylinder(pin_length + eps, pin_radius);
  }
  translate([size_x - pin_offset_right, size_y - pin_offset_top, -pin_length]) {
    cylinder(pin_length + eps, pin_radius);
  }
}
