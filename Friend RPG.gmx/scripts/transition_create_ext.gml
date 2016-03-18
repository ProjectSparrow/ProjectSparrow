///transition_create_ext(transition, room, timer, blackout, fadeout, easeIn, easeOut)

var obj;

obj = instance_create(0, 0, _transition_get_object(argument0));
obj.gotoRoom = argument1;
obj.timer = argument2;
obj.f_blackout = argument3;
obj.blackout = obj.f_blackout;
obj.f_fadeOut = argument4;
obj.easeIn = argument5;
obj.easeOut = argument6;

with(obj){
    event_user(1);
}
return obj;
