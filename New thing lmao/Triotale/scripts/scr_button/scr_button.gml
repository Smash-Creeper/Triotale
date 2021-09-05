function scr_kb_button(key){
	if is_string(key) {key= ord(string_upper(key));}
return keyboard_check(key);
}
function scr_kb_button_pressed(key){
	if is_string(key) {key= ord(string_upper(key));}
return keyboard_check_pressed(key);
}
function scr_kb_button_released(key){
	if is_string(key) {key= ord(string_upper(key));}
return keyboard_check_released(key);
}
function scr_mo_button(key){
	if is_string(key) {key= ord(string_upper(key));}
return mouse_check_button(key);
}
function scr_mo_button_pressed(key){
	if is_string(key) {key= ord(string_upper(key));}
return mouse_check_button_pressed(key);
}
function scr_mo_button_released(key){
	if is_string(key) {key= ord(string_upper(key));}
return mouse_check_button_released(key);
}