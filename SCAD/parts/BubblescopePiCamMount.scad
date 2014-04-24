include <../primitives/rounded_rect.scad>
include <BubbleScopeMount.scad>

module chipOpening() {
	clearance = 0.5;
	c = 2 * clearance;
	translate([0,-9.5,0])
		cube(size=[8+c,10+c,5],center=true);
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
		union()
		{
			translate([0, -2, -2.1])
				cube([28, 28, 5], center=true);
	   	translate([10, 0, -9])
			  cylinder(r=3, h=6);
		  translate([-10, 0, -9])
			  cylinder(r=3, h=6);
		}
		mountingHoles();
		lensOpening();
		chipOpening();
	}
}

rotate([0, 180, 0])
	union()
	{
		piCameraAdapter();
		rotate([0, 180, 0])
			translate([0, 0, 4])
				difference()
				{
					bubblescope_mount(threads=true);
					mountingHoles();
				}
	}
