echo(version=version());

//Chamfer Library
/* https://github.com/SebiTimeWaster/Chamfers-for-OpenSCAD */
include <Chamfers-for-OpenSCAD/Chamfer.scad>;

/*

IMPORTANT NOTE: You need to export it as multiple models!!!

Edit -> Preferences -> Features
Check the box labeled "lazy-union"

If BambuStudio asks to import it as
one model with multiple parts click on "YES"!!!

Font Download: https://www.slunecnice.cz/sw/font-pro-spz-cr/

*/

    
/* [Customizer] */
// Increase the visual detail
$fn = 100;

// Change the plate number
Number = "1B2 3456";

// Change the plate country code
CountryCode = "CZ";

// Change the size of country code
CCFontSize = 1.5;

/* [Hidden] */
TextFont = "SPZ CZ:style=Bold";
FontSize = 3.9;


//Border
module border() {
    difference() {
        color("black")
        cube([80,18,3]); 
        
        corner();
        
        translate([0,18,0])
        rotate([0,0,-90])
        corner();
        
        translate([80,0,0])
        rotate([0,0,90])
        corner();
        
        translate([80,18,0])
        rotate([0,0,180])
        corner(); 
        
        color("black")
        translate([1,1,-1])
        cube([78,16,5]);
    }
}

//Corner
module corner() {
    difference() {
        color("black")
        translate([-0.5,-0.5,-0.5])
        cube([2,2,4]);

        color("black")
        translate([1.5,1.5,-1])
        cylinder(d=3, h=5);
    }
}

//Middle
module middle() {
    difference() {
        color("white")
        translate([9,1,0])
        cube([70,16,3]);

        color("black")
        translate([0,0,1.5])
        number();
    }  
}

//Middle
module ribbon() {
    difference() {
        color("#008ae6")
        translate([1,1,0])
        cube([8,16,3]);
    
        color("#008ae6")
        translate([5,13,-1])
        cylinder(d=6, h=5);
        
        color("white")
        translate([0,0,1.5])
        country();
    }
}

//License Plate Country Code
module country() {
    color("white")
    translate([4.75, 5])
    linear_extrude(1.5)
    text(CountryCode, font = TextFont, size = CCFontSize, valign = "center", halign = "center");
}

//License Plate Number
module number() {
    color("black")
    translate([43.5, 9])
    linear_extrude(1.5)
    text(Number, font = TextFont, size = FontSize, valign = "center", halign = "center");
}


translate([0,0,-1.5])
border();
translate([0,0,-1.5])
middle();
translate([0,0,-1.5])
ribbon();
number();
country();














