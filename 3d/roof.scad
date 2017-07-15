a = 15;
b = 10;
c = 0.25;
screen_x = 5;
screen_y = 2;
button_r = 0.5;
difference() {
    cube([a,b,c], true);
    translate([0,1,0]) {
    cube([screen_x,screen_y,2*c], true);
        };
translate([screen_x/2,-screen_y,0]) {
    cylinder(h=2*c,r=button_r, $fn=50, center=true);
}
translate([-screen_x/2,-screen_y,0]) {
    cylinder(h=2*c,r=button_r, $fn=50, center=true);
}
    };
