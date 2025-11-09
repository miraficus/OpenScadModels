echo(version=version());

//Chamfer Library
/* https://github.com/SebiTimeWaster/Chamfers-for-OpenSCAD */
include <Chamfers-for-OpenSCAD/Chamfer.scad>;

/* [Customizer] */
// Increase the visual detail
$fn = 100;


module kolecko() {
    color("red")
    translate([0,0,0])
//    cylinder(d=20, h=20);
    
    chamferCylinder(21, 10, 10, 0.5, 0.5);

}

module stred() {
    color("white")
    translate([0,0,-1])
    cylinder(d=6, h=26);

}

module koleckostred() {
    difference() {
        kolecko();
        stred();       
    }

}

#koleckostred();
//stred();
