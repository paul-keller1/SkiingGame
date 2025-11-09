function spawn_room() {
    
    var _room_width = 1000;
    var _room_height = 1000;
    
    var _maximal_amplitude = 120;
    var _x = _room_width div 2;
    var _y = 0;
    var _points = array_create(_room_height div 16, 3, 2); // Create a 2D array // TODO: error, but actually working
    var _i = 0;

    for (; _y < _room_height; _y += 16) {
        var _new_x_dir = (random(3) div 1 mod 3)*16 - 16; //TODO: change to irandom_range
        _x += _new_x_dir;
        _points[_i][0][0] = _x - 16; // First point x coordinate
        _points[_i][0][1] = _y;     // First point y coordinate
        _points[_i][1][0] = _x;     // Second point x coordinate
        _points[_i][1][1] = _y;     // Second point y coordinate
        _points[_i][2][0] = _x + 16; // Third point x coordinate
        _points[_i][2][1] = _y;     // Third point y coordinate
        _i++;
    }

    for (var _j = 0; _j < _room_height div 16; _j++) {
        show_debug_message("Point 1: (" + string(_points[_j][0][0]) + ", " + string(_points[_j][0][1]) + "), " +
                           "Point 2: (" + string(_points[_j][1][0]) + ", " + string(_points[_j][1][1]) + "), " +
                           "Point 3: (" + string(_points[_j][2][0]) + ", " + string(_points[_j][2][1]) + ")");
    }
}
