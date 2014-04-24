include <../primitives/circle_slice.scad>

module scope_threads(scope_radius, scope_mount_height, angle, carrier_width, carrier_height)
{
  rad = scope_radius + 1.5;
  offset_angle = -25;
  rotate([0, 0, angle-offset_angle])
  {
    translate([0, 0, scope_mount_height-1.5])
      linear_extrude(height = carrier_height+1)
        Linear2DCircleSlice(rad, carrier_width);

    translate([0, 0, scope_mount_height-2])
      linear_extrude(height = carrier_height)
      {
        Linear2DCircleSlice(rad, carrier_width);
        rotate([0, 0, offset_angle])
          Linear2DCircleSlice(rad, carrier_width);
      }
  }
}

module scope_bracket(scope_radius, scope_mount_height, threads)
{
  translate([0, 0, -1])
    cylinder(r=scope_radius, h=scope_mount_height+2);
    if(threads)
    {
      scope_threads(scope_radius, scope_mount_height, 45, 4, 1.2);
      scope_threads(scope_radius, scope_mount_height, -135, 4, 1.2);
    }
}

module bubblescope_mount(threads=true)
{
  difference()
  {
    cylinder(r=10, h=5);
	union()
	{
    	scope_bracket(7, 5, threads);
		translate([0, 0, 4.01])
			difference()
			{
				cylinder(r=10.1, h=1);
				translate([0, 0, -0.1])
					cylinder(r=9, h=1.2);
			}
	}
  }
}