include <../../SCAD/living_hinge/HingeMain.scad>
include <config.scad>

function get_dx(panel_length, panel_angle) =
	(panel_length / sin(90)) * sin(180-90-panel_angle);

function get_dy(panel_length, panel_angle) =
	(panel_length / sin(90)) * sin(panel_angle);

function get_used_circ(panel_angle, circle_radius) =
	((2 * PI * circle_radius) / 360) * (2 * (90 - (panel_angle / 2)));

module LHAngleEnclosure_EndPanel(panel_length, panel_angle, circle_radius)
{
	x = get_dx(panel_length, panel_angle);
	y = get_dy(panel_length, panel_angle);

	hull()
	{
		circle(r=circle_radius);
		
		translate([x, y])
			circle(r=circle_radius);

		translate([(x + circle_radius), -circle_radius])
			circle(r=0.01);
	}
}

module LHAngleEnclosure_EndBrace()
{
	difference()
	{
		LHAngleEnclosure_EndPanel(panel_length, panel_angle, (circle_radius + material_thickness + outer_padding));
		difference()
		{
			LHAngleEnclosure_EndPanel(panel_length, panel_angle, (circle_radius + material_thickness));
			LHAngleEnclosure_EndPanel(panel_length, panel_angle, circle_radius);
		}
	}
}

module LHAngleEnclosure_MainSection()
{
	hinge_A_length = get_used_circ(panel_angle, circle_radius);
	hinge_B_length = get_used_circ((90-panel_angle), circle_radius);
	dx = get_dx(panel_length, panel_angle);
	dy = get_dy(panel_length, panel_angle);

	width = panel_width + (2 * material_thickness);

	square([width, dx]);

	translate([0, dx])
		LivingHinge(width, hinge_A_length, num_hinge_slots, dx=hinge_sep_x, dy=hinge_sep_y, gap=hinge_gap_type);

	translate([0, (dx + hinge_A_length)])
		square([width, panel_length]);

	translate([0, (dx + hinge_A_length + panel_length)])
		LivingHinge(width, hinge_B_length, num_hinge_slots, dx=hinge_sep_x, dy=hinge_sep_y, gap=hinge_gap_type);

	translate([0, (dx + hinge_A_length + panel_length + hinge_B_length)])
		square([width, dy]);
}
