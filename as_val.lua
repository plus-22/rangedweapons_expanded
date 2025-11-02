

minetest.register_tool("rangedweapons:as_val_r", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:as_val_rr",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "as_val_rld.png",
})

minetest.register_tool("rangedweapons:as_val_rr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:as_val_rrr",
	load_sound = "rangedweapons_rifle_reload_a",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "as_val.png",
})

minetest.register_tool("rangedweapons:as_val_rrr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:as_val",
	load_sound = "rangedweapons_rifle_reload_b",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "as_val_b.png",
})


minetest.register_tool("rangedweapons:as_val_rld", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
    loaded_gun="rangedweapons:as_val",
	range = 0,
	groups = {not_in_creative_inventory = 1},
    weapon_zoom = 3.35,
	inventory_image = "as_val_b.png",
})

	minetest.register_tool("rangedweapons:as_val", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
		description = "" ..core.colorize("#35cdff","AS 'Val'\n") ..core.colorize("#FFFFFF", "DMG: 6 | Capacity: 20 rounds\n")..core.colorize("#FFFFFF", "Ammo: 9x39mm | Type: assault rifle\n") ..core.colorize("#FFFFFF", "AUX1 key to use scope"),
	range = 0,
	inventory_image = "as_val.png",
	RW_gun_capabilities = {
		automatic_gun = 1,
		gun_damage = {fleshy=6,knockback=0},
        gun_recoil = 1.45,
		gun_crit = 35,
		gun_critEffc = 3.5,
		suitable_ammo = {{"rangedweapons:939mm",20}},
		gun_skill = {"arifle_skill",50},
		gun_magazine = "rangedweapons:rifle_mag",
		gun_icon = "as_val_icon.png",
		gun_unloaded = "rangedweapons:as_val_r",
		gun_velocity = 240,
		gun_accuracy = 89,
		gun_cooldown = 0.075,
		gun_reload = 1.0/4,
		gun_projectiles = 1,
		has_shell = 1,
		gun_gravity = 0,
		gun_durability = 9000,
		gun_smokeSize = 5,
		gun_mob_penetration = 25,
		gun_node_penetration = 5,
		gun_unload_sound = "rangedweapons_rifle_clip_out",
		gun_sound = "rangedweapons_makarov",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,

	inventory_image = "as_val.png",
})
