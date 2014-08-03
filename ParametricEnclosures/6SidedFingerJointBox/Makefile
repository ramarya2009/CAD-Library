all: machine_parts all_panels

machine_parts: front_back left_right top_bottom

clean:
	rm front_back.dxf
	rm left_right.dxf
	rm top_bottom.dxf
	rm all_panels.dxf

front_back:
	openscad front_back.scad -o front_back.dxf

left_right:
	openscad left_right.scad -o left_right.dxf

top_bottom:
	openscad top_bottom.scad -o top_bottom.dxf

all_panels:
	openscad all_panels.scad -o all_panels.dxf
