//get inputs

rightKey = keyboard_check(ord("D"));
leftKey = keyboard_check(ord("A"));
upKey = keyboard_check(ord("W"));
downKey = keyboard_check(ord("S"));
jumpKeyPressed = keyboard_check_pressed(vk_space);
debugKeyPressed = keyboard_check_pressed(ord("O"));




xspd = (rightKey - leftKey) * moveSpd;
if debugKeyPressed
{
	debug = !debug;
	show_debug_message(debug);

} else if debug {
	yspd = (downKey - upKey) * moveSpd;
} else {
	yspd = moveSpd;
}

if (height == 0 && jumpKeyPressed) 
{
	height += 2;
}

//set sprite of player

if leftKey && !rightKey
{
    if dir != 0 and alarm[0] < 0 {
        audio_play_sound(snd_snow1, 0, false, 1, 0, random_range(0.5,1.5)); //different pitches
        alarm[0] = SOUND_DURATION;
    }
    dir = 0;
	sprite_index = spr_player_left;
} else if rightKey && !leftKey
{    
    if dir != 1 and alarm[0] < 0 {
        audio_play_sound(snd_snow3, 0, false, 1, 0, random_range(0.5,1.5));
        alarm[0] = SOUND_DURATION;
    }
    dir = 1;
	sprite_index = spr_player_right;
} else
{
    if dir != 2 and alarm[0] < 0 {
        audio_play_sound(snd_snow2, 0, false, 1, 0, random_range(0.5,1.5));
        alarm[0] = SOUND_DURATION;
    }
    dir = 2;
	sprite_index = spr_player_straight;
}

	




//collisions
// x collision
if place_meeting(x + xspd, y, oGateBlue) 
{
	global.collisionCount++;
	var _pixelCheck = sign(xspd) //set variable to 1 pixel in movement direction
	while !place_meeting(x + _pixelCheck, y, oGateBlue) {
		x += _pixelCheck;
	}
	xspd = 0;
}
if place_meeting(x + xspd, y + yspd, oGateBlue) 
{
	global.collisionCount++;
	var _pixelCheck = sign(yspd) //set variable to 1 pixel in movement direction
	while !place_meeting(x, y + _pixelCheck, oGateBlue) {
		y += _pixelCheck;
	}
	yspd = 0;
}

x += xspd;
y += yspd;