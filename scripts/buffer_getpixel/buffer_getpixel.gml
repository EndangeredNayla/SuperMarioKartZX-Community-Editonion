/// @description
/// @param {real} ind
/// @param {real} x
/// @param {real} y
/// @param {real} width
/// @param {real} height
function buffer_getpixel(argument0, argument1, argument2, argument3, argument4) {
	var buff1 = argument0;
	if (argument1 >= argument3) || (argument2 >= argument4) return 0;

	var px = (argument1+(argument2*argument3))*4;

	var p1 = buffer_peek(buff1,px,buffer_u8);
	var p2 = buffer_peek(buff1,px+1,buffer_u8);
	var p3 = buffer_peek(buff1,px+2,buffer_u8);

	return make_color_rgb(p1,p2,p3);


}
