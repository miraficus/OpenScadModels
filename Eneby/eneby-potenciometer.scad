echo(version=version());

//Chamfer Library
/* https://github.com/SebiTimeWaster/Chamfers-for-OpenSCAD */
include <Chamfers-for-OpenSCAD/Chamfer.scad>;

/* [Customizer] */
// Increase the visual detail
$fn = 100;

// How tight fit you want on potentiometer
fit = 0.1;


module kolecko() {
    color("red")
    translate([0,0,0])    
    chamferCylinder(19, 17, 17, 0.5, 0);

}

module rantldira() {
    difference() {
        color("white")
        translate([0,0,15])
        cylinder(d=32, h=5);
        
        color("white")
        translate([0,0,15])
        cylinder(d=28, h=5);
    }
}

module stredovadira() {
    color("green")
    translate([0,0,4])    
    chamferCylinder(16, 12, 12, 1, 0);

}

module stredpotak() {
    difference() {
        color("white")
        translate([0,0,4])    
        cylinder(d=6 + fit, h=12);
        
        color("white")
        translate([-3,-3 - fit,3])
        cube([6,1.5 - fit,14]);
    }
}

module stredpotakzed() {
    difference() {
        color("red")
        translate([0,0,4])    
        cylinder(d=8, h=11);
        
        stredpotak();
    }
}

module vyztuha() {
    color("green")
    translate([-0.5,-16,4])
    cube([1,32,3]);
    
    color("green")
    translate([-0.5,-13.5,7])
    cube([1,10,8]);
    
    color("green")
    translate([-0.5,3.5,7])
    cube([1,10,8]);
    
    
    
    
    color("green")
    translate([-16,-0.5,4])
    cube([32,1,3]);
    
    color("green")
    translate([-13.5,-0.5,7])
    cube([10,1,8]);
    
    color("green")
    translate([3.5,-0.5,7])
    cube([10,1,8]);
}


module result() {
    difference() {
        #kolecko();
        rantldira();
        stredovadira();
        
    }      
}



result();
#stredpotakzed();
vyztuha();

