echo(version=version());
// Increase the visual detail
$fn = 100;

// Ring

module ring() {
    difference() {
        rotate([0,0,22.5])
        linear_extrude(4)
        translate([0, 0]) circle(d=26,$fn=8);
         
        color("red")
        rotate([0,0,22.5])
        linear_extrude(4)
        translate([0, 0]) circle(d=24,$fn=8);  
    }    
}    
 
// Top

color("blue")
translate([12, -0.5, 0])
cube([4,1,4]);

// Bot

color("blue")
translate([-14, -0.5, 0])
cube([2,1,4]);

// Right

color("blue")
translate([-0.5, -15, 0])
cube([1,3,4]);

// Left

color("blue")
translate([-0.5, 12, 0])
cube([1,5,4]);


// Modules

ring();
