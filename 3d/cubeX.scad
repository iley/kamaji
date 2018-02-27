//
// Simple and fast corned cube!
// Anaximandro de Godinho.
//

// bottom is rounded
module cubeBottomX(size, radius=1, rounded=true, center=false) {
    difference() {
        cubeX([size[0], size[1], size[2]+radius], radius, rounded, center, $fn=20);
        translate([0, 0, size[2]]) {
            cube([size[0], size[1], radius], center=center);
        }
    }
}

// top is rounded
module cubeTopX(size, radius=1, rounded=true, center=false) {
    translate([0, 0, -radius]){
        difference() {
            cubeX([size[0], size[1], size[2]+radius], radius, rounded, center, $fn=20);
            cube([size[0], size[1], radius], center=center);
        }
    }
}

module cubeSideX(size, radius=1, rounded=true, center=false) {
    translate([0, 0, -radius]){
        difference() {
            cubeX([size[0], size[1], size[2]+2*radius], radius, rounded, center, $fn=20);
            translate([0, 0, size[2] + radius]) {
                cube([size[0], size[1], radius], center=center);
            }
            cube([size[0], size[1], radius], center=center);
        }
    }
}

module cubeBottom2X(size, radius=1, rounded=true, center=false) {
    union() {
        cubeX(size, radius, rounded, center);
        translate([0, 0, radius]) {
            translate([radius, 0, 0]) {
                cube([size[0]-2*radius, size[1], size[2] - radius], center=center);
            }
            translate([0, radius, 0]) {
                cube([size[0], size[1]-2*radius, size[2] - radius], center=center);
            }
        }
    }
}

module cubeX( size, radius=1, rounded=true, center=false )
{
    l = len( size );
    if( l == undef )
        _cubeX( size, size, size, radius, rounded, center );
    else
        _cubeX( size[0], size[1], size[2], radius, rounded, center );
}

module _cubeX( x, y, z, r, rounded, center )
{
    if( rounded )
        if( center )
            translate( [-x/2, -y/2, -z/2] )
                __cubeX( x, y, z, r );
        else
            __cubeX( x, y, z, r );
    else
        cube( [x, y, z], center );
}

module __cubeX( x, y, z, r )
{
    //TODO: discount r.
    rC = r;
    hull()
    {
        translate( [rC, rC, rC] )
            sphere( r );
        translate( [rC, y-rC, rC] )
            sphere( r );
        translate( [rC, rC, z-rC] )
            sphere( r );
        translate( [rC, y-rC, z-rC] )
            sphere( r );

        translate( [x-rC, rC, rC] )
            sphere( r );
        translate( [x-rC, y-rC, rC] )
            sphere( r );
        translate( [x-rC, rC, z-rC] )
            sphere( r );
        translate( [x-rC, y-rC, z-rC] )
            sphere( r );
    }
}
