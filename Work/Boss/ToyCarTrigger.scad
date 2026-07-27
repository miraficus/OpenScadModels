echo(version=version());

//Chamfer Library
/* https://github.com/SebiTimeWaster/Chamfers-for-OpenSCAD 
*/
include <Chamfers-for-OpenSCAD/Chamfer.scad>;

    
/* [Customizer] */
// Increase the visual detail
$fn = 100;




color("lightblue")
translate([0,0,0])
cube([7,7.5,6]);

color("lightblue")
translate([0,0,6])
cube([1.5,7.5,1]);

module trigger() {
    color("blue")
    translate([5,7,0])
    rotate([0,0,-7.5])
    cube([4,9,6]);

    color("blue")
    translate([5,4.5,0])
    rotate([0,0,3])
    cube([11,3,6]);

    color("blue")
    translate([15,14,0])
    cylinder(d=18, h=6);

}

difference() {
    trigger();

    color("blue")
    translate([15,14,-1])
    cylinder(d=15, h=8);

}

module osa() {
    color("pink")
    translate([-8.5,3.5,4.5])
    cylinder(d=3, h=6);

    color("pink")
    translate([-8.5,3.5,1.5])
    cylinder(d=5, h=3);

    color("pink")
    translate([-8.5,3.5,0.5])
    cylinder(d=7, h=1);

    color("pink")
    translate([-8.5,3.5,-4.5])
    cylinder(d=6, h=6);

}

difference() {
    osa();

    color("brown")
    translate([-8.5,3.5,-5.5])
    cylinder(d=5, h=6);

    color("brown")
    translate([-11,-0.7,6.5])
    rotate([0,0,-10.3])
    cube([4,4,4.5]);

    color("brown")
    translate([-10.5,4.5,6.5])
    rotate([0,0,-10.3])
    cube([4,4,4.5]);

}

module kolibka() {
    linear_extrude(height = 3) {
        polygon(points = [[0,0], [7,0], [7,5], [9,7], [-2,9], [0,5]]);
    }
}

color("purple")
translate([0,0,1.5])
rotate([0,0,90])
kolibka();
