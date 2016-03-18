///transition_create(transition, room, timer)

var obj;

obj = instance_create(0, 0, _transition_get_object(argument0));
obj.gotoRoom = argument1;
obj.timer = argument2;
obj.f_blackout = false;
obj.blackout = false;
obj.f_fadeOut = false;

with(obj){
    event_user(1);
}
return obj;
