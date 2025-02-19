draw_set_alpha(1);

if (room == global.stage_room) && !(did_reset) && (global.stage_state == "next") reset();
if (global.stage_state == "next") &&  (offset_timer >= offset_timer_limit) drawing = true;
if (offset_timer < offset_timer_limit) && (global.stage_state == "next") offset_timer++;
if (drawing) draw();

draw_self();