echo(version=version());

//Chamfer Library
/* https://github.com/SebiTimeWaster/Chamfers-for-OpenSCAD */
include <Chamfers-for-OpenSCAD/Chamfer.scad>;

/* [Customizer] */
// Increase the visual detail
$fn = 100;

//Front bezel
difference() {
    color("yellow")
    translate([-1.5,-1,-1])
    chamferCube([7.5, 16, 53], [[1, 1, 1, 1], [0, 0, 0, 0], [0, 0, 0, 0]], 1);

    color("yellow")
    translate([-2.1,0,0])
    chamferCube([7.1, 14, 51], [[1, 1, 1, 1], [0, 0, 0, 0], [0, 0, 0, 0]], 0.5); 

    color("yellow")
    translate([4,0,2])
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
    translate([5.9,0,0]) 
    chamferCube([24.1, 14, 51], [[1, 1, 1, 1], [0, 0, 1, 1], [0, 1, 1, 0]], 0.5);

    //Port
    color("red")
    translate([20,2.5,-2])
    chamferCube([3.5, 9, 3], [[0, 0, 0, 0], [0, 0, 0, 0], [1, 1, 1, 1]], 0.3); 
    
    //LED Hole
    color("white")
    translate([26,7,-1])
    cylinder(d=1.5, h=6);  
}

//Port
difference() {
    color("red")
    translate([19,1.5,-1])
    chamferCube([5.5, 11, 2], [[0, 0, 0, 0], [0, 0, 0, 0], [1, 1, 1, 1]], 0.3);
    
    color("red")
    translate([20,2.5,-2])
    chamferCube([3.5, 9, 4], [[0, 0, 0, 0], [0, 0, 0, 0], [1, 1, 1, 1]], 0.3); 
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

//Circle
difference() {    
    color("black")
    rotate([-90,0,00])
    translate([-1.5,-27,15])
    cylinder(d=28, h=0.3);

    color("white")
    rotate([-90,0,00])
    translate([-1.5,-27,14.7])
    cylinder(d=16, h=0.8);
    
    color("black")
    translate([-27.5,14.9,13])
    cube([26,1,28]);
}

//Text
    color("black")
    rotate([90,-90,0])
    translate([1.5, -12])
    linear_extrude(1.3)
    text("CONNEX", font = "Impact", size = 11.2, valign = "center", halign = "left");












