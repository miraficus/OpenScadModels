echo(version=version());
// increase the visual detail
$fn = 100;

//Main Box
module mainbox() {
    difference() {
        cube([45,12,4]);

        cutouts();

        //Holes
        color("white")
        translate([37.5, 8, -0.5])
        cylinder(d=3, h=5);

        color("white")
        translate([7.5, 8, -0.5])
        cylinder(d=3, h=5);
        
        //Screw Head Hole
        color("white")
        translate([37.5, 8, 3])
        sphere(d=5);

        color("white")
        translate([7.5, 8, 3])
        sphere(d=5);
        
        color("white")
        translate([37.5, 8, 3])
        cylinder(d=5, h=5);

        color("white")
        translate([7.5, 8, 3])
        cylinder(d=5, h=5);

        //Hinge Cutout
        color("white")
        translate([-0.5,0,0])
        rotate([0, 90, 0])
        cylinder(r=3, h=46);
    }
}

//Tongue
module tongue() {
    intersection() {
        translate([0,9.5,4])
        cube([45,2.5,4]);

        translate([0, 6, 4])
        rotate([0, 90, 0])
        cylinder(d=12, h=45);
    }
}

module tonguefinish() {
    difference() { 
        tongue();
        
        cutouts();
        
        color("white")
        translate([37.5, 8, 3.5])
        cylinder(d=5, h=2);

        color("white")
        translate([7.5, 8, 3.5])
        cylinder(d=5, h=2);
    }
}
//Cutouts
module cutouts() {
    color("white")
    translate([11, 6, -0.5])
    cube([4,7,9]);
    
    color("white")
    translate([30, 6, -0.5])
    cube([4,7,9]);
}

//Modules
mainbox();
tonguefinish();
