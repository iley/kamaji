a = 150;
b = 100;
c = 3;
screen_x = 72;
screen_y = 27;
button_r = 7;
shift = c+c/2;
leg_r = 1;
difference() {
    cube([a,b,c], true);
    translate([0,10,0]) {
	    cube([screen_x,screen_y,2*c], true);
    }
	 translate([screen_x/2,-screen_y,0]) {
       cylinder(h=2*c,r=button_r, $fn=50, center=true);
    }
    translate([-screen_x/2,-screen_y,0]) {
       cylinder(h=2*c,r=button_r, $fn=50, center=true);
    }

for (dx = [-(a-shift)/2, (a-shift)/2])
    for (dy = [-(b-shift)/2, (b-shift)/2]) {
        translate([dx, dy, -c]) {
            cylinder(h=2*c, r=leg_r, $fn=40);
        }
    }
};
