out_dir = ./dxf

all: main_panel side_panel

clean:
	rm -rf $(out_dir)

output_folder:
	mkdir -p $(out_dir)

main_panel: output_folder
	openscad MainPanel.scad -o $(out_dir)/MainPanel.dxf

side_panel: output_folder
	openscad SidePanel.scad -o $(out_dir)/SidePanel.dxf
