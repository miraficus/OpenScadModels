echo(version=version());
// Increase the visual detail
$fn = 100;

// Turn rails on/off
Rails = false;

// Turn dividers on/off
Dividers = true;

// How many dividers you want
DividerCount = 5;


// Main Box
module mainboxsolid() {
    //Cubes
    //Main
    translate([4, 4, 1])
    cube([132,44,1]);
    //Bot
    translate([4, 0, 1])
    cube([132,4,36]);
    //Top
    translate([4, 48, 1])
    cube([132,4,36]);
    //Left
    translate([0, 4, 1])
    cube([4,44,36]);
    //Right
    translate([136, 4, 1])
    cube([4,44,36]);
    
    //Cylinders
    //BotL
    translate([4, 4, 1])
    cylinder(r=4, h=36);
    //BotR
    translate([136, 4, 1])
    cylinder(r=4, h=36);
    //TopL
    translate([4, 48, 1])
    cylinder(r=4, h=36);
    //TopR
    translate([136, 48, 1])
    cylinder(r=4, h=36);
}

module mainbox() {
    difference() {
        mainboxsolid();
        
        //Cubes
        //LR
        translate([1, 4, 2])
        cube([138,44,36]);
        //TB
        translate([4, 1, 2])
        cube([132,50,36]);
        
        //Cylinders
        //BotL
        translate([4, 4, 2])
        cylinder(r=3, h=36);
        //BotR
        translate([136, 4, 2])
        cylinder(r=3, h=36);
        //TopL
        translate([4, 48, 2])
        cylinder(r=3, h=36);
        //TopR
        translate([136, 48, 2])
        cylinder(r=3, h=36);
    }
}

// Rails
module rails() {
    //Front Rail
    translate([5, 10, 0])
    cube([130,1,1]);
    
    //Back Rail
    translate([5, 41, 0])
    cube([130,1,1]);
}

// Stopper
module stopper() {
    translate([139, 10, 37])
    cube([1,32,4]);
    
    translate([139, 10, 37])
    rotate([0, 90, 0])
    cylinder(r=4, h=1);
    
    translate([139, 42, 37])
    rotate([0, 90, 0])
    cylinder(r=4, h=1);
}

// Label Slot
module labelslot() {
    difference() {
        translate([-3, 5, 16])
        cube([3,42,21]);

        color("white")
        translate([-2, 6, 18])
        cube([2,40,21]);
        
        color("white")
        translate([-4, 9, 18])
        cube([3,34,20]);
    }
}

// Handle
module handle() {
    difference() {
        translate([-8, 16, 7])
        cube([8,20,10]);

        color("white")
        translate([-9, 17, 6])
        cube([8,18,10]);
    }

    difference() {
        translate([-7, 36, 9])  
        rotate([90, 0, 0])
        cylinder(r=8, h=20);

        color("white")
        translate([-7, 35, 9])  
        rotate([90, 0, 0])
        cylinder(r=7, h=18);

        color("white")
        translate([-15, 15, 0])
        cube([15,22,7]);
    }
}


module dividers() {  
    Cubesize = 138 / (DividerCount +1);
    
    // Front
    for (i = [0:DividerCount -1]) {
        translate([(Cubesize -1) + Cubesize * (i + 0), 1, 2])
        cube([1, 2, 28]);
    } 
      
    for (i = [0:DividerCount -1]) {
        translate([(Cubesize +2) + Cubesize * (i + 0), 1, 2])
        cube([1, 2, 28]);
    }
    
    // Back
    for (i = [0:DividerCount -1]) {
        translate([(Cubesize -1) + Cubesize * (i + 0), 49, 2])
        cube([1, 2, 28]);
    } 
      
    for (i = [0:DividerCount -1]) {
        translate([(Cubesize +2) + Cubesize * (i + 0), 49, 2])
        cube([1, 2, 28]);
    }

    
}


module result() {

    mainbox();
    stopper();
    labelslot();
    handle();
    
    if(Rails==true) {
        rails();
    }

    if(Dividers==true) {
        dividers();
    }
    
}


// Modules

result();


