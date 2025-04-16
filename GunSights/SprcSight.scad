echo(version=version());
// Increase the visual detail
$fn = 100;

// Ring

module ring() {
    difference() {
        rotate([0,0,22.5])
        linear_extrude(4)
        translate([0, 0]) circle(26,$fn=8);
         
        color("red")
        rotate([0,0,22.5])
        linear_extrude(4)
        translate([0, 0]) circle(24,$fn=8);  
    }    
}    
 
// North

color("blue")
translate([24, -0.5, 0])
cube([4,1,4]);

// South

color("blue")
translate([-26, -0.5, 0])
cube([2,1,4]);

// East

color("blue")
translate([-0.5, -27, 0])
cube([1,3,4]);

// West

color("blue")
translate([-0.5, 24, 0])
cube([1,5,4]);


// Modules

ring();
