
minetest.register_tool("rangedweapons:m79_r", {
	stack_max= 1,
	wield_scale = {x=2.0,y=2.0,z=2.5},
	range = 0,
	description = "", 
	groups = {not_in_creative_inventory = 1},
	rw_next_reload = "rangedweapons:m79",
	load_sound = "rangedweapons_reload_a",
	inventory_image = "rangedweapons_m79_rld.png",
})

minetest.register_tool("rangedweapons:m79", {
		description = "" ..core.colorize("#35cdff","M79\n") ..core.colorize("#FFFFFF", "DMG:10 by direct contact | Capacity: 1 round\n")..core.colorize("#FFFFFF", "Ammo: 40mm grenade | Type: Grenade launcher"),
	range = 0,
	wield_scale = {x=2.0,y=2.0,z=2.5},
	inventory_image = "rangedweapons_m79.png",
	RW_gun_capabilities = {
		gun_damage = {fleshy=10,knockback=0},
        gun_recoil = 1,
		gun_crit = 8,
		gun_critEffc = 3.0,
		suitable_ammo = {{"rangedweapons:40mm",1}},
		gun_skill = {"",1},
		gun_magazine = "rangedweapons:shell_grenadedrop",
		gun_icon = "rangedweapons_m79_icon.png",
		gun_unloaded = "rangedweapons:m79_r",
		gun_cooling = "rangedweapons:m79",
		gun_velocity = 20,
		gun_accuracy = 92,
		gun_cooldown = 0.0,
		gun_reload = 0.9,
		gun_projectiles = 1,
		gun_smokeSize = 15,
		gun_durability = 100,
		gun_gravity = 5,
		gun_unload_sound = "rangedweapons_handgun_mag_out",
		gun_sound = "rangedweapons_rocket",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,
	on_use = function(itemstack, user, pointed_thing)
rangedweapons_shoot_gun(itemstack, user)
return itemstack
	end,
})




