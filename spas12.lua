minetest.register_tool("rangedweapons:spas12_rld", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	loaded_gun = "rangedweapons:spas12",
	loaded_sound = "rangedweapons_shotgun_reload_b",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_spas12.png",
})

minetest.register_tool("rangedweapons:spas12_rlding", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	loaded_gun = "rangedweapons:spas12",
	loaded_sound = "rangedweapons_shotgun_reload_b",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_spas12_rld.png",
})

minetest.register_tool("rangedweapons:spas12", {
description = "" ..core.colorize("#35cdff","SPAS-12\n") ..core.colorize("#FFFFFF", "DMG: 4x4 | Capacity: 8 rounds\n")..core.colorize("#FFFFFF", "Ammo: 12 gauge | Type: Shotgun"),
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	inventory_image = "rangedweapons_spas12.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=4,knockback=0},
        gun_recoil = 2.1,
		gun_crit = 7,
		gun_critEffc = 2.1,
		suitable_ammo = {{"rangedweapons:shell",8},{"rangedweapons:shell_mini",16},{"rangedweapons:steelshell",8}},
		gun_skill = {"shotgun_skill",20},
		gun_icon = "rangedweapons_spas12_icon.png",
		gun_unloaded = "rangedweapons:spas12_rld",
		gun_cooling = "rangedweapons:spas12_uld",
		gun_velocity = 32,
		gun_accuracy = 62,
		gun_cooldown = 0.45,
		gun_gravity = 0.5,
		gun_reload = 0.25,
		gun_projectiles = 4,
		has_shell = 0,
		gun_durability = 550,
		gun_smokeSize = 15,
		gun_door_breaking = 1,
		gun_sound = "rangedweapons_shotgun_shot",
		gun_unload_sound = "rangedweapons_shell_insert",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_single_load_gun(itemstack, user, "")
return itemstack
end,
	on_use = function(itemstack, user, pointed_thing)
rangedweapons_shoot_gun(itemstack, user)
return itemstack
	end,
})

minetest.register_tool("rangedweapons:spas12_uld", {
	stack_max= 1,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	range = 0,
description = "" ..core.colorize("#35cdff","SPAS-12\n") ..core.colorize("#FFFFFF", "DMG: 4x4 | Capacity: 8 rounds\n")..core.colorize("#FFFFFF", "Ammo: 12 gauge | Type: Shotgun"),
	inventory_image = "rangedweapons_spas12.png",
	groups = {not_in_creative_inventory = 1},
	on_use = function(itemstack, user, pointed_thing)
		
		if not user then
			return itemstack
		end
		local pos = user:get_pos()
		minetest.sound_play("rangedweapons_empty", {
			pos = pos,
			max_hear_distance = 15,
			gain = 1.0,
			fade = 0.0,
			pitch = 1.0,
		})
		return itemstack
	end,
on_secondary_use = function(itemstack, user, pointed_thing)
eject_shell(itemstack,user,"rangedweapons:spas12_rlding",0.6,"rangedweapons_shotgun_reload_a","rangedweapons:empty_shell")
return itemstack
end,
})
