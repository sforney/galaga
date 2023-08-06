// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// Rotates an enemy ship towards 90 degrees
function enter_formation() {
	var center_image = 6;
	
	if(image_index < center_image) {
		image_index++;
	} else if(image_index > center_image) {
		image_index--;
	}
	return image_index == center_image;
}