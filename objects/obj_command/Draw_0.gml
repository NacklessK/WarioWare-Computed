if (room == rm_demo_stage) && !(did_reset) && (global.stage_state == "next") reset();
if (global.stage_state == "next") &&  (offset_timer >= offset_timer_limit) drawing = true;
if (offset_timer < offset_timer_limit) && (global.stage_state == "next") offset_timer++;
if (drawing) draw();

draw_self();