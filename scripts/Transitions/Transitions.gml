
/*global.midTransition = false;
global.roomTarget = -1;




function transitionPlaceSequence(_type) {
    if(layer_exists("transition")) {
        layer_destroy("transition");
    }
    var _lay = layer_create(-9999, "transition");
    layer_sequence_create(_lay, 0, 0, _type);
}


function transitionStart(_roomTarget, _typeIn, _typeOut) {
    if(!global.midTransition) {
        global.midTransition = true;
        global.roomTarget = _roomTarget;
        transitionPlaceSequence(_typeOut);
        layer_set_target_room(_roomTarget);
        transitionPlaceSequence(_typeIn);
        layer_reset_target_room();
        return true;
    }
    else return false
}


function transitionChangeRoom() {
    room_goto(global.roomTarget);
}


function transitionFinished() {
    layer_sequence_destroy(self.elementID);
    global.midTransition = false;
}*/