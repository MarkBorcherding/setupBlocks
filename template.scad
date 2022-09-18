mm_in_an_inch = 25.4;

font = "Fira Mono Nerd Font";

width = 3 * mm_in_an_inch;
depth = 0.5 * mm_in_an_inch;
height = 0.5 * mm_in_an_inch;

module label(l) {
	// Use linear_extrude() to make the letters 3D objects as they
	// are only 2D shapes when only using text()
	linear_extrude(height = 2) {
		text(
            l, 
            size = 12, 
            font = font, 
            halign = "right", 
            valign = "center");
	}
}

difference() {
    cube([width, depth, height]);
    translate([width, depth / 2, height - 1]) label("1/2\"");
}