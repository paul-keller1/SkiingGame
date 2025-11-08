xspd = 0;
yspd = 0;

moveSpd = 2;
jumpSpd = 5; //to jump over obstacles
grav = 0.1;
height = 0;
minor_collision_duration = 20;

global.collisionCount = 0;

debug = true;


distraction_dir = 0; //-1 left, 0 straight, 1 right

#macro SOUND_DURATION 80



tilemap_safety_nets = layer_tilemap_get_id("Barriers");

rotation_speed = 3; //must devide 360


alarm[0] = 200;