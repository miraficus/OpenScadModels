echo(version=version());
// Increase the visual detail
$fn = 100;

// Marker type
MarkerType = 3;

// Marker height
MarkerH = 2.5;

// Mainbox

module mainbox() {
    translate([0, 1, 0])
    cube([15,4,2]);
           
    rotate([90,0,90])
    linear_extrude(15)
    polygon([[0,0],[2,0],[1,2]]);

    translate([0, 4, 0])
    rotate([90,0,90])
    linear_extrude(15)
    polygon([[0,0],[2,0],[1,2]]);
}


// Markers

module marker() {
    color("red")
    translate([7, 5, 2])
    rotate([90,0,0])
    linear_extrude(4)
    polygon([[0,0],[1,0],[0.5,MarkerH]]);
}

module marker2() {
    color("red")
    translate([7, 1, 2])
    cube([1,4,MarkerH]);
}

module marker3() {
    color("red")
    translate([7, 1, 2])
    cube([1,4,MarkerH]);
    
    difference() {   
        translate([7.5, 5, MarkerH + 2])
        rotate([90,0,0])
        cylinder(d=3, h=4);
        
        color("blue")
        translate([5.5, 0.5, MarkerH + 0.5])
        cube([4,5,1.5]);
    }
    
}



// Modules

mainbox();

if(MarkerType == 1) {
marker();
}

if(MarkerType == 2) {
marker2();
}

if(MarkerType == 3) {
marker3();
}
