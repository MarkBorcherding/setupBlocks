mm_in_an_inch = 25.4;

font = "Fira Mono Nerd Font";


module label(t, height) {
	// Use linear_extrude() to make the letters 3D objects as they
	// are only 2D shapes when only using text()
	linear_extrude(height = 2) {
		text(
            t,
            size = 9,
            font = font,
            spacing = 0.8,
            halign = "right",
            valign = "center");
	}
}

module block(h, t, w = 3, d = 0.5) {
    height = h * mm_in_an_inch;
    width = w * mm_in_an_inch;
    depth = d  * mm_in_an_inch;
    difference() {
        cube([width, depth, height]);
        translate([width, depth / 2, height - 1]) label(t, height);
    }
}
