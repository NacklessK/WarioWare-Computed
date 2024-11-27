image_xscale = 2;
image_yscale = 2;
image_speed = global.game_spd;

y_vel = random_range(-25, -15) * 2;
x_vel = random_range(-5, 5) * 2;

sprite = round(random_range(1, 2));

if (sprite == 1) sprite_index = spr_silver_coin_si;
else sprite_index = spr_bronze_coin_si;