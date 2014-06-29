/*
 * Generic living hinge logic
 * Must include a gap module
 *
 * Generic Living Hinges
 * Dan Nixon, dan-nixon.com
 * 29/06/2014
 */

module LivingHinge(width, height, num_slots=10, dx=2, dy=1)
{
	slot_width = (width - (num_slots * dx)) / num_slots;
	num_rows = (height / dy) - 1;
	
	difference()
	{
		square([width, height], center=false);
	
		union()
		{
			for(r = [1 : num_rows])
			{
				translate([0, (dy * r)])
				if((r % 2) == 0)
				{
					for(x = [(dx / 2) : (slot_width + dx) : (width - slot_width)])
						LH_Gap((x + (slot_width / 2)), slot_width, (r % 2));
				}
				else
				{
					for(x = [0 : (slot_width + dx) : (width)])
						LH_Gap((x), slot_width, (r % 2));
				}
			}
		}
	}
}
