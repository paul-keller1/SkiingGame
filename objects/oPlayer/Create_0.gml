xspd = 0;
yspd = 0;

moveSpd = 2;
jumpSpd = 5; //to jump over obstacles
grav = 0.1;
height = 0;

global.collisionCount = 0;

debug = true;


#macro SOUND_DURATION 80


tilemap_safety_nets = layer_tilemap_get_id("Barriers");