

minetest.register_tool("rangedweapons:m4_r", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:m4_rr",
	load_sound = "rangedweapons_handgun_mag_in",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "m4_rld.png",
})

minetest.register_tool("rangedweapons:m4_rr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:m4_rrr",
	load_sound = "rangedweapons_rifle_reload_a",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "m4.png",
})

minetest.register_tool("rangedweapons:m4_rrr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:m4",
	load_sound = "rangedweapons_rifle_reload_b",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "m4_b.png",
})




minetest.register_tool("rangedweapons:m4_rld", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
    loaded_gun="rangedweapons:m4",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "m4_b.png",
})




	minetest.register_tool("rangedweapons:m4", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
		description = "" ..core.colorize("#35cdff","M4 carbine\n") ..core.colorize("#FFFFFF", "DMG: 5 | Capacity: 30 rounds\n")..core.colorize("#FFFFFF", "Ammo: 5.56mm | Type: Assault rifle"),
	range = 0,
	inventory_image = "m4.png",
	RW_gun_capabilities = {
		automatic_gun = 1,
		gun_damage = {fleshy=5,knockback=0},
        gun_recoil = 1.3,
		gun_crit = 11,
		gun_critEffc = 2.75,
		suitable_ammo = {{"rangedweapons:556mm",30}},
		gun_skill = {"arifle_skill",55},
		gun_magazine = "rangedweapons:rifle_mag",
		gun_icon = "m4_icon.png",
		gun_unloaded = "rangedweapons:m4_r",
		gun_velocity = 45,
		gun_accuracy = 78,
		gun_cooldown = 0.067,
		gun_reload = 1.0/4,
		gun_projectiles = 1,
		has_shell = 1,
		gun_gravity = 0,
		gun_durability = 1550,
		gun_smokeSize = 5,
		gun_mob_penetration = 10,
		gun_unload_sound = "rangedweapons_handgun_mag_out",
		gun_sound = "rangedweapons_smg",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,

	inventory_image = "m4.png",
})

