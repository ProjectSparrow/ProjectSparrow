///scr_test_multi_parameter(item0, item1, item2)

// Tests a script with exactly 3 parameters

var item0 = argument0;
var item1 = argument1;
var item2 = argument2;

var str = string(id) + "'s Shopping list:";

str += "#";
str += item0;

str += "#";
str += item1;

str += "#";
str += item2;

show_message(str);
