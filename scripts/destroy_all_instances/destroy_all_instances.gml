var obj = argument0;
var count = instance_number(obj);
for (var i = 0; i <= count; i+=1) {
	target_instance = instance_find(obj, 0);
	instance_destroy(target_instance, false);
}