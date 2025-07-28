echo(version=version());

//Chamfer Library
/* https://github.com/SebiTimeWaster/Chamfers-for-OpenSCAD */
include <Chamfers-for-OpenSCAD/Chamfer.scad>;

    
/* [Customizer] */
// Increase the visual detail
$fn = 100;

// Game Case Height
GCH = 170;

// Game Case Width
GCW = 11;

// Game Case Depth
GCD = 105;

/* [Hidden] */
FontSize = 3.9;

SPACES = GCD / 4;

module holder() {
    color("red")
    translate([0,0,0])
    cube([GCW + 3,GCD + 3,4]);

    color("blue")
    translate([GCW + 3,0,4])
    rotate([0,270,0])
    linear_extrude(GCW + 3)
    polygon([[0,0],[30,0],[0,50]]);

}

module game() {
    difference() {
        holder();
        
        color("green")
        translate([1,1,1])
        cube([GCW,GCD + 1,GCH]);
    }
}

module thing() {
    color("grey")
    translate([0,0,0])
    rotate([0,0,0])
    linear_extrude(34)
    polygon([[0,0],[3,0],[0,3]]);

    color("grey")
    translate([0,0,0])
    rotate([0,0,-90])
    linear_extrude(34)
    polygon([[0,0],[3,0],[0,3]]);

}


//holder();
game();

translate([12.5,6,0])
thing();

translate([12.5,SPACES,0])
thing();

translate([12.5,SPACES * 2,0])
thing();

translate([12.5,SPACES * 3,0])
thing();

translate([12.5,GCD -6,0])
thing();


