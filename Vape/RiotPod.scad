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
    translate([1,-1,-1])
    chamferCube([5, 16, 53], [[1, 1, 1, 1], [0, 0, 0, 0], [0, 0, 0, 0]], 1);

    color("yellow")
    translate([-2.1,0,0])
    chamferCube([7.1, 14, 51], [[1, 1, 1, 1], [0, 0, 0, 0], [0, 0, 0, 0]], 0.5); 

    color("yellow")
    translate([4,0,2])
    cube([3,14,47]);
}

//Clips
color("yellow")
translate([2,0,5])
cube([1,1,3]);

color("yellow")
translate([2,13,5])
cube([1,1,3]);

//Middle Clips
color("yellow")
translate([2,0,22])
cube([1,1,3]);

color("yellow")
translate([2,13,22])
cube([1,1,3]);

//Top Clip

color("yellow")
translate([2,5.5,50])
cube([1,3,1]);

//Back
difference() {
    color("red")
    translate([6,-1,-1])
    chamferCube([17, 16, 53], [[1, 1, 1, 1], [0, 0, 1, 1], [0, 1, 1, 0]], 1);

    color("red")
    translate([5.9,0,0]) 
    chamferCube([16.1, 14, 51], [[1, 1, 1, 1], [0, 0, 1, 1], [0, 1, 1, 0]], 0.5);

    //LED Hole
    color("white")
    translate([26,7,-1])
    cylinder(d=1.5, h=6);  
    
    color("green")
    rotate([0,0,0])
    translate([14.5,7,38])
    cylinder(d=15.5, h=16);
}

//Atomizer Holder
difference() {
    color("green")
    rotate([0,0,0])
    translate([14.5,7,38])
    cylinder(d=17, h=14);

    color("green")
    rotate([0,0,0])
    translate([14.5,7,37])
    cylinder(d=15.5, h=16);

}








