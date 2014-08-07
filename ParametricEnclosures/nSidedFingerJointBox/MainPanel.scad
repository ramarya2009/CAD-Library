include <nSidedFingerJointBox.scad>

hinge_len = get_used_circ((180 - get_corner_offset_angle(num_faces)), circle_radius);
y_trans_coeff = ((face_length + hinge_len));
y_trans_const = (face_length / 2) + hinge_len;

square([box_width, (face_length / 2)]);
translate([0, (face_length / 2)])
			LivingHinge(box_width, hinge_len, num_hinge_slots, dx=hinge_sep_x, dy=hinge_sep_y, gap=hinge_gap_type);

rotate(90)
	finger_joint((face_length / 2), material_thickness, ((joint_finger_count / 2) + 1), false);

translate([(box_width + material_thickness), 0])
	rotate(90)
		finger_joint((face_length / 2), material_thickness, ((joint_finger_count / 2) + 1), false);

for(i = [2 : num_faces])
{
	assign(y = ((i - 2) * y_trans_coeff) + y_trans_const)
	{
		translate([0, y])
		{
			square([box_width, face_length]);
			
			rotate(90)
				finger_joint(face_length, material_thickness, joint_finger_count, false);

			translate([(box_width + material_thickness), 0])
				rotate(90)
					finger_joint(face_length, material_thickness, joint_finger_count, false);
		}

		translate([0, (y + face_length)])
			LivingHinge(box_width, hinge_len, num_hinge_slots, dx=hinge_sep_x, dy=hinge_sep_y, gap=hinge_gap_type);
	}
}

translate([0, (((num_faces - 1) * y_trans_coeff) + y_trans_const)])
{
	square([box_width, (face_length / 2)]);

	rotate(90)
		finger_joint((face_length / 2), material_thickness, ((joint_finger_count / 2) + 1), false);

	translate([(box_width + material_thickness), 0])
		rotate(90)
			finger_joint((face_length / 2), material_thickness, ((joint_finger_count / 2) + 1), false);
}
