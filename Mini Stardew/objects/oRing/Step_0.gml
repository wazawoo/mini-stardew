/// @description Insert description here
// You can write your code in this editor


//Get Player Input
keyLeft = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
keyRight = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")); 
keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")); 
keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")); 
keySpaceHold = keyboard_check(vk_space);

x += TILE_SIZE*(keyRight - keyLeft);
y += TILE_SIZE*(keyDown - keyUp);

if (keySpaceHold) {
	//reset a plant if we press space on it and it is fully grown
	var sprout = instance_position(x, y, oSprout);
	if (sprout != noone && sprout.image_index == sprout.image_number - 1) {
		sprout.image_index = 0;
		sprout.image_speed = SPROUT_IMAGE_SPEED;
		audio_play_sound(choose(plunk1, plunk2, plunk3, plunk4, plunk5, plunk6), 1, false);
	}
}
