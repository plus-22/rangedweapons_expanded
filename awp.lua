

minetest.register_tool("rangedweapons:awp_uld", {
	stack_max= 1,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	range = 0,
		description = "" ..core.colorize("#35cdff","A.W.P\n") ..core.colorize("#FFFFFF", "DMG: 18 | Capacity: 10 rounds\n")..core.colorize("#FFFFFF", "Ammo: 7.62mm/.308 winchester | Type: sniper rifle\n") ..core.colorize("#FFFFFF", "AUX1 key to use scope"),
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_awp.png",
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
eject_shell(itemstack,user,"rangedweapons:awp_rld",1.0,"rangedweapons_rifle_reload_a","rangedweapons:empty_shell")
return itemstack
end,
})


minetest.register_tool("rangedweapons:awp_r", {
	rw_next_reload = "rangedweapons:awp_rr",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_awp_noclip.png",
})
minetest.register_tool("rangedweapons:awp_rr", {
	rw_next_reload = "rangedweapons:awp_rrr",
	load_sound = "rangedweapons_rifle_reload_a",
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_awp.png",
})
minetest.register_tool("rangedweapons:awp_rrr", {
	rw_next_reload = "rangedweapons:awp",
	load_sound = "rangedweapons_rifle_reload_b",
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_awp_rld.png",
})


minetest.register_tool("rangedweapons:awp_rld", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	loaded_gun = "rangedweapons:awp",
	loaded_sound = "rangedweapons_rifle_reload_b",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_awp_rld.png",
})


minetest.register_tool("rangedweapons:awp", {
		description = "" ..core.colorize("#35cdff","A.W.P\n") ..core.colorize("#FFFFFF", "DMG: 18 | Capacity: 10 rounds\n")..core.colorize("#FFFFFF", "Ammo: 7.62mm/.308 winchester | Type: sniper rifle\n") ..core.colorize("#FFFFFF", "AUX1 key to use scope"),
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	inventory_image = "rangedweapons_awp.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=18,knockback=0},
        gun_recoil = 1.5,
		gun_crit = 30,
		gun_critEffc = 3.0,
		suitable_ammo = {{"rangedweapons:762mm",10},{"rangedweapons:308winchester",10}},
		gun_skill = {"rifle_skill",20},
		gun_magazine = "rangedweapons:rifle_mag",
		gun_icon = "rangedweapons_awp_icon.png",
		gun_unloaded = "rangedweapons:awp_r",
		gun_cooling = "rangedweapons:awp_uld",
		gun_velocity = 75,
		gun_accuracy = 100,
		gun_cooldown = 1.0,
		gun_reload = 2.0/4,
		gun_projectiles = 1,
		has_shell = 0,
		gun_durability = 700,
		gun_smokeSize = 8,
		gun_dps = 35,
		gun_mob_penetration = 30,
		gun_node_penetration = 10,
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