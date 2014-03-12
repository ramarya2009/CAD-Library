module 2DPoint(x, y)
{
  translate([x, y])
    circle(r=0.01);
}

module 3DPoint(x, y, z)
{
  translate([x, y, z])
    sphere(r=0.01);
}
