


minetest.register_tool("rangedweapons:deagle_rld", {
	stack_max= 1,
	wield_scale = {x=1.25,y=1.25,z=1.5},
	description = "",
	range = 0,
	loaded_gun = "rangedweapons:deagle",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_deagle_rld.png",
})
minetest.register_tool("rangedweapons:deagle_r", {
	stack_max= 1,
	wield_scale = {x=1.25,y=1.25,z=1.5},
	description = "",
	range = 0,
	rw_next_reload = "rangedweapons:deagle",
	load_sound = "rangedweapons_handgun_mag_in",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_deagle_rld.png",
})

minetest.register_tool("rangedweapons:deagle", {
		description = "" ..core.colorize("#35cdff","IMI Desert Eagle\n") ..core.colorize("#FFFFFF", "DMG: 8 | Capacity: 7 rounds\n")..core.colorize("#FFFFFF", "Ammo: .357/.44/.50 AE | Type: Pistol"),
	wield_scale = {x=1.25,y=1.25,z=1.5},
	range = 0,
	inventory_image = "rangedweapons_deagle.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=8,knockback=0},
        gun_recoil = 2.6,
		gun_crit = 20,
		gun_critEffc = 2.2,
		suitable_ammo = {{"rangedweapons:357",7},{"rangedweapons:44",7},{"rangedweapons:50ae",7}},
		gun_skill = {"revolver_skill",40},
		gun_magazine = "rangedweapons:handgun_mag_white",
		gun_icon = "rangedweapons_deagle_icon.png",
		gun_unloaded = "rangedweapons:deagle_r",
		gun_cooling = "rangedweapons:deagle_rld",
		gun_velocity = 50,
		gun_accuracy = 85,
		gun_cooldown = 0.15,
		gun_reload = 0.6/1,
		gun_projectiles = 1,
		has_shell = 1,
		gun_durability = 900,
		gun_smokeSize = 7,
		gun_mob_penetration = 25,
		gun_node_penetration = 5,
		gun_unload_sound = "rangedweapons_handgun_mag_out",
		gun_sound = "rangedweapons_deagle",
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

minetest.register_tool("rangedweapons:golden_deagle_rld", {
	stack_max= 1,
	wield_scale = {x=1.25,y=1.25,z=1.5},
	description = "",
	range = 0,
	loaded_gun = "rangedweapons:golden_deagle",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_golden_deagle_rld.png",
})
minetest.register_tool("rangedweapons:golden_deagle_r", {
	stack_max= 1,
	wield_scale = {x=1.25,y=1.25,z=1.5},
	description = "",
	range = 0,
	rw_next_reload = "rangedweapons:golden_deagle",
	load_sound = "rangedweapons_handgun_mag_in",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_golden_deagle_rld.png",
})

minetest.register_tool("rangedweapons:golden_deagle", {
		description = "" ..core.colorize("#35cdff","IMI Golden Desert Eagle\n") ..core.colorize("#FFFFFF", "DMG: 8 | Capacity: 7 rounds\n")..core.colorize("#FFFFFF", "Ammo: .357/.44/.50 AE | Type: Pistol"),
	wield_scale = {x=1.25,y=1.25,z=1.5},
	range = 0,
	inventory_image = "rangedweapons_golden_deagle.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=8,knockback=0},
        gun_recoil = 2.6,
		gun_crit = 23,
		gun_critEffc = 2.2,
		suitable_ammo = {{"rangedweapons:357",7},{"rangedweapons:44",7},{"rangedweapons:50ae",7}},
		gun_skill = {"revolver_skill",38},
		gun_magazine = "rangedweapons:handgun_mag_white",
		gun_icon = "rangedweapons_golden_deagle_icon.png",
		gun_unloaded = "rangedweapons:golden_deagle_r",
		gun_cooling = "rangedweapons:golden_deagle_rld",
		gun_velocity = 250,
		gun_accuracy = 90,
		gun_cooldown = 0.15,
		gun_reload = 0.6/1,
		gun_projectiles = 1,
		has_shell = 1,
		gun_durability = 1000,
		gun_smokeSize = 7,
		gun_mob_penetration = 15,
		gun_node_penetration = 5,
		gun_unload_sound = "rangedweapons_handgun_mag_out",
		gun_sound = "rangedweapons_deagle",
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

