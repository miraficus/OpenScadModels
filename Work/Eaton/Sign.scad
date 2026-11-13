echo(version=version());

/* [Customizer] */
// Increase the visual detail
$fn = 100;


/* Sign */
difference() {
    color("green")
    cube([315,155,4]);

    translate([4,145,-1])
    color("yellow")
    cube([3,11,6]);

    translate([308,145,-1])
    color("yellow")
    cube([3,11,6]);
}    
    
/* Clips */


module border() {
    translate([0,155,0])
    color("red")
    cube([4,11,4]);
    
    difference() {
        translate([4,163,0])
        color("blue")
        cube([2,3,4]);
        
        translate([6,163,-1])
        color("pink")
        rotate([0,0,33.5])
        cube([2,4,6]);
    }
}



border();

translate([315,0,4])
rotate([0,180,0])
border();
