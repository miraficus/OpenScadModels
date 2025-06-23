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
    cylinder(d=25, h=4);

    color("red")
    translate([0,0,4])
//    cylinder(d=20, h=20);
    
    chamferCylinder(20, 10, 10, 0, 0.5);

}

module stredasegrovka() {
    color("white")
    translate([0,0,-1])
    cylinder(d=8, h=26);
    
    color("white")
    translate([0,0,20])
    cylinder(d=13, h=1);
    
    color("white")
    translate([-15, -6.5, 20])
    cube([15,13,1]);

    color("white")
    translate([-15, -4, 21])
    cube([15,8,2]);

}

module koleckostred() {
    difference() {
        kolecko();
        stredasegrovka();       
    }

}


#koleckostred();
//stredasegrovka();





























