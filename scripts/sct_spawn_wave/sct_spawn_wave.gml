/// @param {Asset.GMObject} type Object of enemy to spawn
/// @param {Real} number Number of enemies to spawn
/// @param {Asset.GMPath} path The path the spawned enemies should take
function spawn_wave(type, number, path) {
	var instance = instance_create_layer(0, 0, "Instances", obj_wave_spawner, 
	{number: number, path: path, spawn_obj: type});
}

/// @param {Asset.GMObject} type Object of enemy to spawn
/// @param {Real} number Number of enemies to spawn
/// @param {Asset.GMPath} path The path the spawned enemies should take
function spawn_mixed_wave(type, number, path) {
	var instance = instance_create_layer(0, 0, "Instances", obj_wave_spawner, 
	{number: number, path: path, spawn_obj: type, mixed: true});
}