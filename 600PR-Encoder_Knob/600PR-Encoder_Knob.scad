echo(version=version());

//Chamfer Library
/* https://github.com/SebiTimeWaster/Chamfers-for-OpenSCAD */
include <Chamfers-for-OpenSCAD/Chamfer.scad>;
    
/* [Customizer] */
// Increase the visual detail
$fn = 100;
// Turn knurling on/off
Knurling = true;

// Turn dent on/off
Dent = true;

//Shaft
module shaft() {
    difference() {
        color("white")
        translate([0,0,-1])
        cylinder(d=6.5, h=13);
    
        translate([-3,3,-1.5])
        cube([6,0.5,14]);  
    }
}

//Knob
module knob() {
    difference() {
    chamferCylinder(14, 20, 20, 0.5, 1);
    
    translate([0,0,-1])
    cylinder(r=17, h=13);
    }
    
    cylinder(r=6, h=13);
}

//Knurling
module knurling() {
    translate([20 - 0.5,0,0.5])
    rotate([0,0,-90])
    linear_extrude(12.5)
    polygon([[0,0],[1,0],[0.5,1]]);
}

//Dent
module dent() {
    translate([0,13,23])
    sphere(10);
}

//Result
module result() {
    difference() {
        knob();
        shaft();
        
        if(Dent==true)
            dent();
    }
    
    if(Knurling==true)
    for (i = [0: 100])
        rotate([0, 0, 360 / 100 * i])
        knurling();
}

//Modules
result();
