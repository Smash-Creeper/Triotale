function draw_text_outline(x,y,text,outline_x= 2,outline_y= 2,outline_color= 0){
var org_col= draw_get_color();
draw_set_color(outline_color);
draw_text(x-outline_x,y,text);
draw_text(x+outline_x,y,text);
draw_text(x,y-outline_y,text);
draw_text(x,y+outline_y,text);
draw_set_color(org_col);
draw_text(x,y,text);
}