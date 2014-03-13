include <../primitives/rounded_rect.scad>
include <BubbleScopeMount.scad>

module chipOpening() {
	clearance = 0.5;
	c = 2 * clearance;
	translate([0,-9.5,0])
		cube(size=[8+c,10+c,4],center=true);
}

module lensOpening() {
	clearance = 0.5;
	c = 2 * clearance;
	translate([0, 0, -0.5])
		cube(size=[8+c,8+c,12], center=true);
}

module mountingHoles()
{
	dx = 10;
	radius = 1.5;
	dz = -10;
	translate([dx, -12.5, dz])
		cylinder(r=radius, h=20);
	translate([-dx, -12.5, dz])
		cylinder(r=radius, h=20);
	translate([dx, 0, dz])
		cylinder(r=radius, h=20);
	translate([-dx, 0, dz])
		cylinder(r=radius, h=20);
}

module piCameraAdapter() {
	difference() {
		difference() {
			translate([0, -2, -1.1])
				cube([28, 28, 6], center=true);
			mountingHoles();
			lensOpening();
			chipOpening();
		}
	}
}

piCameraAdapter();
rotate([0, 180, 0])
  translate([0, 0, 4])
	difference()
	{
      bubblescope_mount();
		mountingHoles();
	}