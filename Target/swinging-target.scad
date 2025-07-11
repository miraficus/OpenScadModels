echo(version=version());
// Increase the visual detail
$fn = 100;

module target() {
    cylinder(d=120, h=1); 
    
}

module hanger() {
    color("red")
    translate([-21, 54, 0])
    cube([42,20,1]);
    
    color("red")
    translate([21,48,0])
    rotate([0,0,0])
    linear_extrude(1)
    polygon([[0,0],[15,0],[0,26]]);
    
    color("red")
    translate([-21,48,0])
    rotate([0,0,90])
    linear_extrude(1)
    polygon([[0,0],[26,0],[0,15]]);

}
    
module hangerholes() {
    color("white")
    translate([15,63,-1])
    cylinder(d=8, h=3);
    
    color("white")
    translate([-15,63,-1])
    cylinder(d=8, h=3);
    
}

difference() {
   hanger();
   hangerholes();
    
}

target();
//hangerholes();







