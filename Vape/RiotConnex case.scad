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
    chamferCylinder(19, 12, 12, 0.5, 0);

}

//Front bezel
difference() {
    color("yellow")
    translate([-1,-1,-1])
    chamferCube([7, 16, 53], [[1, 1, 1, 1], [0, 0, 0, 0], [0, 0, 0, 0]], 1);

    color("yellow")
    translate([-1,0,0])
    chamferCube([6, 14, 51], [[1, 1, 1, 1], [0, 0, 0, 0], [0, 0, 0, 0]], 0.5); 

    color("yellow")
    translate([5,0,2])
    cube([3,14,47]);
}

//Clips
color("yellow")
translate([2,0,2])
cube([1,1,3]);

color("yellow")
translate([2,13,2])
cube([1,1,3]);

color("yellow")
translate([2,0,40])
cube([1,1,3]);

color("yellow")
translate([2,13,40])
cube([1,1,3]);

//Back
difference() {
    color("red")
    translate([6,-1,-1])
    chamferCube([25, 16, 53], [[1, 1, 1, 1], [0, 0, 1, 1], [0, 1, 1, 0]], 1);

    color("red")
    translate([6,0,0]) 
    chamferCube([24, 14, 51], [[1, 1, 1, 1], [0, 0, 1, 1], [0, 1, 1, 0]], 0.5);

    //Port
    color("green")
    translate([20,2.5,-1])
    cube([3.5,9,2]); 

    //LED Hole
    color("white")
    translate([26,7,-1])
    cylinder(d=1, h=6);  
}

//ScrewPost
difference() {
    color("black")
    rotate([0,90,0])
    translate([-10.5,7,24])
    cylinder(d=3, h=6);

    color("white")
    rotate([0,90,0])
    translate([-10.5,7,24])
    cylinder(d=1, h=6);

}

    color("black")
    rotate([90,-90,0])
    translate([1.5, -12])
    linear_extrude(1.5)
    text("CONNEX", font = "Impact", size = 11.2, valign = "center", halign = "left");












