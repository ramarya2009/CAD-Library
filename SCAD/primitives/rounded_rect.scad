module RoundedRect(x, y, z, r)
{
  upper_x = x - r;
  upper_y = y - r;
  hull()
  {
    translate([r, r, 0])
      cylinder(r=r, h=z);
    translate([upper_x, r, 0])
      cylinder(r=r, h=z);
    translate([r, upper_y, 0])
      cylinder(r=r, h=z);
    translate([upper_x, upper_y, 0])
      cylinder(r=r, h=z);
  }
}
