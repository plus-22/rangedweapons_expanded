
minetest.register_tool("rangedweapons:m1_uld", {
	stack_max= 1,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	range = 0,
		description = "" ..core.colorize("#35cdff","M1 garand\n") ..core.colorize("#FFFFFF", "DMG: 9 | Capacity: 8 rounds\n")..core.colorize("#FFFFFF", "Ammo: .30-06 springfield | Type: Rifle"),
	groups = {not_in_creative_inventory = 1},
	inventory_image = "m1.png",
	weapon_zoom = 9,
	on_use = function(user)
		minetest.sound_play("rangedweapons_empty", {user})
	end,
on_secondary_use = function(itemstack, user, pointed_thing)
eject_shell(itemstack,user,"rangedweapons:m1_rld",1.0,"rangedweapons_rifle_reload_a","rangedweapons:empty_shell")
return itemstack
end,
})


minetest.register_tool("rangedweapons:m1_r", {
	rw_next_reload = "rangedweapons:m1_rr",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
--	groups = {not_in_creative_inventory = 1}
	inventory_image = "m1_noclip.png",
})
minetest.register_tool("rangedweapons:m1_rr", {
	rw_next_reload = "rangedweapons:m1_rrr",
	load_sound = "rangedweapons_rifle_reload_a",
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
--	groups = {not_in_creative_inventory = 1},
	inventory_image = "m1_rr.png",
})
minetest.register_tool("rangedweapons:m1_rrr", {
	rw_next_reload = "rangedweapons:m1",
	load_sound = "rangedweapons_rifle_reload_b",
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
--	groups = {not_in_creative_inventory = 1},
	inventory_image = "m1_rrr.png",
})


minetest.register_tool("rangedweapons:m1_rld", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	loaded_gun = "rangedweapons:m1",
	loaded_sound = "rangedweapons_rifle_reload_b",
--	groups = {not_in_creative_inventory = 1},
	inventory_image = "m1_rld.png",
})


minetest.register_tool("rangedweapons:m1", {
		description = "" ..core.colorize("#35cdff","M1 garand\n") ..core.colorize("#FFFFFF", "DMG: 9 | Capacity: 8 rounds\n")..core.colorize("#FFFFFF", "Ammo: .30-06 springfield | Type: Rifle"),
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	inventory_image = "m1.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=9,knockback=0},
        gun_recoil = 1.9,
		gun_crit = 30,
		gun_critEffc = 3.0,
		suitable_ammo = {{"rangedweapons:3006",8}},
		gun_skill = {"rifle_skill",20},
	--	gun_magazine = "rangedweapons:rifle_mag",
		gun_icon = "m1_icon.png",
		gun_unloaded = "rangedweapons:m1_r",
	--	gun_cooling = "rangedweapons:m1_uld",
		gun_velocity = 55,
		gun_accuracy = 100,
		gun_cooldown = 0.5,
		gun_reload = 2.0/4,
		gun_projectiles = 1,
		has_shell = 0,
		gun_durability = 700,
		gun_smokeSize = 8,
		gun_dps = 30,
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


