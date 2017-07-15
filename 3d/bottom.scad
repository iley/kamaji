a = 15;
b = 10;
c = 2;
t = 0.25;
socket_h = 1;
socket_w = 1;
socket_n = 4;
socket_int = 1;
eps = 1e-3;
usb_type_b_w = 0.75;
usb_type_b_h = 1;
usb_type_a_w = 1.25;
usb_type_a_h = 0.5;
start_socket = (a-(socket_w+socket_int)*socket_n+socket_w)/2;

difference() {
    cube([a,b,c], false);
    translate([t,t,t]) {
        cube([a-2*t+eps, b-2*t+eps, c-t+eps], false);
    }
    for (i = [0:1:socket_n-1]) {
        translate([start_socket+i*(socket_w+socket_int), -eps, -eps]) {
            cube(size=[socket_w, t+2*eps, socket_h]);
        }
    }
    
    translate([-eps, 2, -eps]) {
        cube(size=[t+2*eps, usb_type_b_w, usb_type_b_h]);
    }
    translate([-eps, 6, 0.5]) {
        cube(size=[t+2*eps, usb_type_a_w, usb_type_a_h]);
    }
};

leg_r = t;
shift = t/2+leg_r;
for (dx = [shift, a-shift])
    for (dy = [shift, b-shift]) {
        translate([dx, dy, 0]) {
            cylinder(h=c, r=leg_r, $fn=40);
        };
    }

