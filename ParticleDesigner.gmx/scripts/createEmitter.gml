///createEmitter(x1, y1, x2, y2, shape, distr)
var emitter = instance_create(0, 0, obj_emitter);
emitter.AX = min(argument0, argument2);
emitter.AY = min(argument1, argument3);
emitter.BX = max(argument0, argument2);
emitter.BY = max(argument1, argument3);
emitter.shape = argument4;
emitter.distr = argument5;
part_emitter_region(obj_system.system, emitter.emitter,
emitter.AX, emitter.AY, emitter.BX, emitter.BY, emitter.shape, emitter.distr);
return emitter;
