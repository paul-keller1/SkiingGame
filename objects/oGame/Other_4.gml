//audio_play_sound(snd_relaxing_music, 0, true);
spawn_room()




var _layer_id = layer_get_id("Instances");
instance_create_layer(room_width/2, 500, _layer_id, oPlayer);



for (var _i = 0; _i < room_height; _i += 32) {
    instance_create_layer(room_width/2 - 0.5*cam_width, _i, _layer_id, oBarrierLeft);
    instance_create_layer(room_width/2 + 0.5*cam_width - 32, _i, _layer_id, oBarrierRight);
    
}





function check_coords(_x, _y, _coords_array, _array_length) {
    var _minimal_distance = 30;
    for (var _i = 0; _i < _array_length; _i++) {
        if sqrt(power(_x - _coords_array[_i][0], 2) + power(_y - _coords_array[_i][1],2)) < 32{
            return false;
        }
    }
    
    return true;
}


var _obstacles_coords
_obstacles_coords[0][0] = 0; //for the first iteration to not get error



obstacle_number = room_height/50 div 1

randomize()
for(var _i = 0; _i < obstacle_number; _i++) {
    var _picked_obstacle_id = irandom_range(0, 2); //TODO global.obstacles length -3
    var _picked_obstacle = global.obstacles[_picked_obstacle_id];
    do {
        //"switch color of gate if same color again"
        if (previous_gate_color == "blue" and _picked_obstacle == oGateBlue) {
            _picked_obstacle = oGateRed;
        } else if (previous_gate_color == "red" and _picked_obstacle == oGateRed) {
            _picked_obstacle = oGateBlue; 
        }
        
        //toggle previous_gate_color"
        if(previous_gate_color == "blue") {
            previous_gate_color = "red";
        } else {
            previous_gate_color = "blue";
        }
        
        
        var _x = irandom_range(room_width/2 - 0.5*cam_width + 32 + 16, room_width/2 + 0.5*cam_width - 32 - 16);
        if (_picked_obstacle == oGateBlue and _x < room_width/2 or 
            _picked_obstacle == oGateRed and _x > room_width/2) {
            _x = room_width - _x;
        } 

        
        
        var _y = irandom_range(84, room_height - 64 - 20);
    } until (check_coords(_x, _y, _obstacles_coords, _i));
    
    _obstacles_coords[_i][0] = _x;
    _obstacles_coords[_i][1] = _y;
    
    instance_create_layer(_x, _y, _layer_id, _picked_obstacle);
    
    
}





