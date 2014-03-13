include <../primitives/circle_slice.scad>

module scope_threads(scope_radius, scope_mount_height, angle, carrier_width, carrier_height)
{
  rad = scope_radius + 1.5;
  rotate([0, 0, angle])
  {
    translate([0, 0, scope_mount_height-1.5])
      linear_extrude(height = carrier_height+1)
        Linear2DCircleSlice(rad, carrier_width);

    translate([0, 0, scope_mount_height-2])
      linear_extrude(height = carrier_height)
      {
        Linear2DCircleSlice(rad, carrier_width);
        rotate([0, 0, 90])
          Linear2DCircleSlice(rad, carrier_width);
        intersection()
        {
          circle(rad);
          square([rad, rad]);
        }
      }
  }
}

module scope_bracket(scope_radius, scope_mount_height)
{
  translate([0, 0, -1])
    cylinder(r=scope_radius, h=scope_mount_height+2);
  scope_threads(scope_radius, scope_mount_height, 45, 4, 1.2);
  scope_threads(scope_radius, scope_mount_height, -135, 4, 1.2);
}

module bubblescope_mount()
{
  difference()
  {
    cylinder(r=10, h=5);
    scope_bracket(7, 5);
  }
}
