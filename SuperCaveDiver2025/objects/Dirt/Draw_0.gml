/// @description Draw the Dirt with special borders

// Draw normally, at first
draw_self();

// Check if there is anything to the Right/Left/Above/Below of where we are
var right = place_meeting(x+1, y, Solid);
var left = place_meeting(x-1, y, Solid);
var above = place_meeting(x, y-1, Solid);
var below = place_meeting(x, y+1, Solid);

// If there's nothing to the R/L/A/B of here, draw the corresponding edge
if (!right) {
	draw_sprite_ext(spr_dirt_edge, 0, x+16, y+16, 1, 1, 0, c_white, 1);
}

if (!left) {
	draw_sprite_ext(spr_dirt_edge, 0, x+16, y+16, 1, 1, 180, c_white, 1);
}

if (!above) {
	draw_sprite_ext(spr_dirt_top_edge, 0, x, y-4, 1, 1, 0, c_white, 1);
}

if (!below) {
	draw_sprite_ext(spr_dirt_edge, 0, x+16, y+16, 1, 1, 270, c_white, 1);
}