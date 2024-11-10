

minetest.register_tool("rangedweapons:ak47_r", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:ak47_rr",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_ak47_rld.png",
})

minetest.register_tool("rangedweapons:ak47_rr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:ak47_rrr",
	load_sound = "rangedweapons_rifle_reload_a",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_ak47.png",
})

minetest.register_tool("rangedweapons:ak47_rrr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:ak47",
	load_sound = "rangedweapons_rifle_reload_b",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_ak47_b.png",
})


minetest.register_tool("rangedweapons:ak47_rld", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
    loaded_gun="rangedweapons:ak47",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_ak47_b.png",
})

	minetest.register_tool("rangedweapons:ak47", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
		description = "" ..core.colorize("#35cdff","AK-47\n") ..core.colorize("#FFFFFF", "Gun damage: 5\n") ..core.colorize("#FFFFFF", "accuracy: 77%\n")  ..core.colorize("#FFFFFF", "Gun Critical chance: 12%\n")..core.colorize("#FFFFFF", "Critical efficiency: 2.9x\n")  ..core.colorize("#FFFFFF", "Reload delay: 1.4\n") ..core.colorize("#FFFFFF", "Clip size: 30\n")   ..core.colorize("#FFFFFF", "Ammunition: 7.62mm rounds\n") ..core.colorize("#FFFFFF", "Rate of fire: 0.10(full-auto)\n") ..core.colorize("#FFFFFF", "Gun type: assault rifle\n") ..core.colorize("#FFFFFF", "Block penetration: 5%\n")
..core.colorize("#FFFFFF", "Enemy penetration: 15%\n") ..core.colorize("#FFFFFF", "Bullet velocity: 240"),
	range = 0,
	inventory_image = "rangedweapons_ak47.png",
	RW_gun_capabilities = {
		automatic_gun = 1,
		gun_damage = {fleshy=7,knockback=0},
        gun_recoil = 1.8,
		gun_crit = 12,
		gun_critEffc = 2.9,
		suitable_ammo = {{"rangedweapons:762mm",30}},
		gun_skill = {"arifle_skill",50},
		gun_magazine = "rangedweapons:assaultrifle_mag",
		gun_icon = "rangedweapons_ak47_icon.png",
		gun_unloaded = "rangedweapons:ak47_r",
        gun_cooling="rangedweapons:ak47_rld",
		gun_velocity = 240,
		gun_accuracy = 77,
		gun_cooldown = 0.1,
		gun_reload = 1.4/4,
		gun_projectiles = 1,
		has_shell = 1,
		gun_gravity = 0,
		gun_durability = 1200,
		gun_smokeSize = 5,
		gun_mob_penetration = 15,
		gun_node_penetration = 5,
		gun_unload_sound = "rangedweapons_rifle_clip_out",
		gun_sound = "rangedweapons_ak",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,

	inventory_image = "rangedweapons_ak47.png",
})










--trench ak






minetest.register_tool("rangedweapons:ak47r_r", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:ak47r_rr",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "ak47r_rld.png",
})

minetest.register_tool("rangedweapons:ak47r_rr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:ak47r_rrr",
	load_sound = "rangedweapons_rifle_reload_a",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "ak47r.png",
})

minetest.register_tool("rangedweapons:ak47r_rrr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:ak47r",
	load_sound = "rangedweapons_rifle_reload_b",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "ak47r_b.png",
})


minetest.register_tool("rangedweapons:ak47r_rld", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
    loaded_gun="rangedweapons:ak47r",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "ak47r_b.png",
})

	minetest.register_tool("rangedweapons:ak47r", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
		description = "" ..core.colorize("#af5700","Trench AK-47\n") ..core.colorize("#FFFFFF", "Gun damage: 8\n") ..core.colorize("#FFFFFF", "accuracy: 71%\n")  ..core.colorize("#FFFFFF", "Gun Critical chance: 12%\n")..core.colorize("#FFFFFF", "Critical efficiency: 3.9x\n")  ..core.colorize("#FFFFFF", "Reload delay: 1.8\n") ..core.colorize("#FFFFFF", "Clip size: 30\n")   ..core.colorize("#FFFFFF", "Ammunition: 7.62mm rounds\n") ..core.colorize("#FFFFFF", "Rate of fire: 0.07(full-auto)\n") ..core.colorize("#FFFFFF", "Gun type: assault rifle\n") ..core.colorize("#FFFFFF", "Block penetration: 5%\n")
..core.colorize("#FFFFFF", "Enemy penetration: 15%\n") ..core.colorize("#FFFFFF", "Bullet velocity: 250"),
	range = 0,
	inventory_image = "ak47r.png",
	RW_gun_capabilities = {
		automatic_gun = 1,
		gun_damage = {fleshy=8,knockback=0},
        gun_recoil = 2.1,
		gun_crit = 12,
		gun_critEffc = 3.9,
		suitable_ammo = {{"rangedweapons:762mm",30}},
		gun_skill = {"arifle_skill",50},
		gun_magazine = "rangedweapons:assaultrifle_mag",
		gun_icon = "rangedweapons_ak47_icon.png",
		gun_unloaded = "rangedweapons:ak47r_r",
        gun_cooling="rangedweapons:ak47r_rld",
		gun_velocity = 250,
		gun_accuracy = 71,
		gun_cooldown = 0.1,
		gun_reload = 1.8/4,
		gun_projectiles = 1,
		has_shell = 1,
		gun_gravity = 0,
		gun_durability = 0,
		gun_smokeSize = 5,
		gun_mob_penetration = 15,
		gun_node_penetration = 5,
		gun_unload_sound = "rangedweapons_rifle_clip_out",
		gun_sound = "rangedweapons_ak",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,

	inventory_image = "ak47r.png",
})



