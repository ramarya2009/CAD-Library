include <point.scad>

module Linear2DCircleSlice(radius, width)
{
  intersection()
  {
    circle(r = radius);
    hull()
    {
      translate([radius, 0, 0])
      {
        2DPoint(0, width/2);
        2DPoint(0, -width/2);
      }
      circle(r = width/2);
    }
  }
}

module Angular2DCircleSlice(radius, angle)
{
  intersection()
  {
    circle(r = radius);
    hull()
    {
      translate([radius, 0, 0])
        2DPoint(radius, 0);
      rotate([0, 0, angle])
        translate([radius, 0, 0])
          2DPoint(radius, 0);
      2DPoint(0, 0);
    }
  }
}
