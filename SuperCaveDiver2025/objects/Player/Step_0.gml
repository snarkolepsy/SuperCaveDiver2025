/// @description Controlling the Player object by executing state machine

// Get the input before executing the state
//get_input();
//script_execute(state);

// Check for keystrokes
var right = keyboard_check(vk_right);
var left = keyboard_check(vk_left);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

// Apply horizontal and vertical speed changes
if(right) {
	hspd = spd;
}

if(left) {
	hspd = -spd;
}

if(up) {
	vspd = -spd;
}

if(down) {
	vspd = spd;
}

// Friction?
if(!right && !left) {
	hspd = 0;
}

if(!up && !down) {
	vspd = 0;
}

// Horizontal collision-handling
if (place_meeting(x+hspd, y, Solid)) {
	while (!place_meeting(x+sign(hspd), y, Solid)) {
		x += sign(hspd);
	}
	hspd = 0;
}

// Vertical collision-handing
if (place_meeting(x, y+vspd, Solid)) {
	while (!place_meeting(x, y+sign(vspd), Solid)) {
		y += sign(vspd);
	}
	vspd = 0;
}

// Move the Player
x += hspd;
y += vspd;
