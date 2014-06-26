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
						polygon([[x,0],[x+(slot_width/2),0.1],[x+slot_width,0],[x+(slot_width/2),-0.1]], [[0,1,2,3]]);			
				}
				else
				{
					for(x = [-(slot_width / 2) : (slot_width + dx) : (width)])
						polygon([[x,0],[x+(slot_width/2),0.1],[x+slot_width,0],[x+(slot_width/2),-0.1]], [[0,1,2,3]]);
				}
			}
		}
	}
}