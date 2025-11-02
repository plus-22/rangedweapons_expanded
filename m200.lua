

minetest.register_tool("rangedweapons:m200_uld", {
	stack_max= 1,
	wield_scale = {x=2.1,y=2.1,z=1.2},
	range = 0,
		description = "" ..core.colorize("#35cdff","CheyTac m200 intervention\n") ..core.colorize("#FFFFFF", "DMG: 22 | Capacity: 7 rounds\n")..core.colorize("#FFFFFF", "Ammo: .408 CheyTac | Type: Anti-material rifle\n") ..core.colorize("#FFFFFF", "AUX1 key to use scope"),
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_m200.png",
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
eject_shell(itemstack,user,"rangedweapons:m200_rld",1.0,"rangedweapons_rifle_reload_a","rangedweapons:empty_shell")
return itemstack
end,
})


minetest.register_tool("rangedweapons:m200_r", {
	rw_next_reload = "rangedweapons:m200_rr",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	wield_scale = {x=2.1,y=2.1,z=1.2},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_m200_noclip.png",
})
minetest.register_tool("rangedweapons:m200_rr", {
	rw_next_reload = "rangedweapons:m200_rrr",
	load_sound = "rangedweapons_rifle_reload_a",
	range = 0,
	wield_scale = {x=2.1,y=2.1,z=1.2},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_m200.png",
})
minetest.register_tool("rangedweapons:m200_rrr", {
	rw_next_reload = "rangedweapons:m200",
	load_sound = "rangedweapons_rifle_reload_b",
	range = 0,
	wield_scale = {x=2.1,y=2.1,z=1.2},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_m200_rld.png",
})


minetest.register_tool("rangedweapons:m200_rld", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=2.1,y=2.1,z=1.2},
	description = "",
	loaded_gun = "rangedweapons:m200",
	loaded_sound = "rangedweapons_rifle_reload_b",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_m200_rld.png",
})


minetest.register_tool("rangedweapons:m200", {
		description = "" ..core.colorize("#35cdff","CheyTac m200 intervention\n") ..core.colorize("#FFFFFF", "DMG: 22 | Capacity: 7 rounds\n")..core.colorize("#FFFFFF", "Ammo: .408 CheyTac | Type: Anti-material rifle\n") ..core.colorize("#FFFFFF", "AUX1 key to use scope"),
	range = 0,
	wield_scale = {x=2.1,y=2.1,z=1.2},
	inventory_image = "rangedweapons_m200.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=22,knockback=0},
        gun_recoil = 2.7,
		gun_crit = 33,
		gun_critEffc = 3.25,
		suitable_ammo = {{"rangedweapons:408cheytac",7}},
		gun_skill = {"rifle_skill",12},
		gun_magazine = "rangedweapons:rifle_mag",
		gun_icon = "rangedweapons_m200_icon.png",
		gun_unloaded = "rangedweapons:m200_r",
		gun_cooling = "rangedweapons:m200_uld",
		gun_velocity = 50,
		gun_accuracy = 100,
		gun_cooldown = 1.5,
		gun_reload = 2.5/4,
		gun_projectiles = 1,
		has_shell = 0,
		gun_durability = 900,
		gun_smokeSize = 8,
		gun_dps = 75,
		gun_mob_penetration = 45,
		gun_node_penetration = 15,
		gun_unload_sound = "rangedweapons_rifle_clip_out",
		gun_sound = "rangedweapons_rifle_b",
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


