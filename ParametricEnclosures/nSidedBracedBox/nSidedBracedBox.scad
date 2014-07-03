include <../../SCAD/parts/ParametricLivingHinge.scad>
include <config.scad>

function get_used_circ(panel_angle, circle_radius) =
	((2 * PI * circle_radius) / 360) * (2 * (90 - (panel_angle / 2)));

module LHnSidedBracedBox_EndPanel(panel_length, num_faces, circle_radius)
{
	hull()
	{
		//TODO: For each face draw a circle of radius curcle_radius at angle 360/num_faces
	}
}

module LHnSidedBracedBox_EndBrace()
{
	difference()
	{
		LHnSidedBracedBox_EndPanel(box_width, num_faces, (circle_radius + material_thickness + outer_padding));
		difference()
		{
			LHnSidedBracedBox_EndPanel(box_width, num_faces, (circle_radius + material_thickness));
			LHnSidedBracedBox_EndPanel(box_width, num_faces, circle_radius);
		}
	}
}

module LHnSidedBracedBox_MainSection()
{
	//TODO
}
