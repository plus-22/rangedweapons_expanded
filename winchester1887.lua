minetest.register_tool("rangedweapons:1887_rld", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	loaded_gun = "rangedweapons:1887",
	loaded_sound = "rangedweapons_shotgun_reload_b",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "1887_rld.png",
})

minetest.register_tool("rangedweapons:1887", {
description = "" ..core.colorize("#35cdff","Winchester M1887\n") ..core.colorize("#FFFFFF", "DMG: 4x4 | Capacity: 4 rounds\n")..core.colorize("#FFFFFF", "Ammo: 12 gauge | Type: Shotgun"),
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	inventory_image = "1887.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=4,knockback=0},
        gun_recoil = 2.1,
		gun_crit = 6,
		gun_critEffc = 2.0,
		suitable_ammo = {{"rangedweapons:shell",4},{"rangedweapons:steelshell",4},{"rangedweapons:shell_mini",8}},
		gun_skill = {"shotgun_skill",20},
		gun_icon = "1887_icon.png",
		gun_unloaded = "rangedweapons:1887_rld",
		gun_cooling = "rangedweapons:1887_uld",
		gun_velocity = 35,
		gun_accuracy = 65,
		gun_cooldown = 0.6,
		gun_gravity = 0.5,
		gun_reload = 0.25,
		gun_projectiles = 4,
		has_shell = 0,
		gun_durability = 325,
		gun_smokeSize = 14,
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

minetest.register_tool("rangedweapons:1887_uld", {
	stack_max= 1,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	range = 0,
description = "" ..core.colorize("#35cdff","Winchester M1887\n") ..core.colorize("#FFFFFF", "DMG: 4x4 | Capacity: 4 rounds\n")..core.colorize("#FFFFFF", "Ammo: 12 gauge | Type: Shotgun"),
	inventory_image = "1887.png",
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
eject_shell(itemstack,user,"rangedweapons:1887_rld",0.6,"rangedweapons_shotgun_reload_a","rangedweapons:empty_shell")
return itemstack
end,
})
