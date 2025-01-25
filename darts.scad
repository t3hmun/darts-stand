

difference() {
    union() {
        translate([-20, -31, 0]) cube([40, 62, 37]);

        translate([0,0,-60]) intersection() {
        translate([0, 0, 100]) cube([50, 80, 100], center=true);
            rotate([90, 0, 0]) translate([0, 0, -200]) difference() {
                cylinder(h=500, r=100, $fn=200);
                translate([0, 0, -10]) cylinder(h=600, r=96, $fn=200);
            }
        }
    }
    rotate([-2.5, 0, 0])translate([0, 28, 0])slot();
    translate([0, 10, 0])slot();
    translate([0, -10, 0])slot();
    rotate([2.5, 0, 0]) translate([0, -28, 0])slot();
}

module slot() {
    translate([0, 0, -10]) cylinder(h=60, r=2, $fn=20);
    rotate([0, -2.5, 0]) translate([-15, 0, -10]) cylinder(h=60, r=2, $fn=20);
rotate([0, 2.5, 0]) translate([15, 0, -10]) cylinder(h=60, r=2, $fn=20);
}
