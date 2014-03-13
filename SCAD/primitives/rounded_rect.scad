module RoundedRect(x, y, z, r, centre=false)
{
  module OriginRect(x, y, z, r)
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

  module CentreRect(x, y, z, r)
  {
    cx = (x / 2) - r;
    cy = (y / 2) - r;
    cz = -(z / 2);
    hull()
    {
      translate([-cx, -cy, cz])
        cylinder(r=r, h=z);
      translate([-cx, cy, cz])
        cylinder(r=r, h=z);
      translate([cx, -cy, cz])
        cylinder(r=r, h=z);
      translate([cx, cy, cz])
        cylinder(r=r, h=z);
    }
  }
  
  if(centre)
    CentreRect(x, y, z, r);
  else
    OriginRect(x, y, z, r);
}
