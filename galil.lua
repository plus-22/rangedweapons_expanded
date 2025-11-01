

minetest.register_tool("rangedweapons:galil_r", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:galil_rr",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "galil_rld.png",
})

minetest.register_tool("rangedweapons:galil_rr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:galil_rrr",
	load_sound = "rangedweapons_rifle_reload_a",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "galil.png",
})

minetest.register_tool("rangedweapons:galil_rrr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:galil",
	load_sound = "rangedweapons_rifle_reload_b",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "galil_b.png",
})


minetest.register_tool("rangedweapons:galil_rld", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
    loaded_gun="rangedweapons:galil",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "galil_b.png",
})

	minetest.register_tool("rangedweapons:galil", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
		description = "" ..core.colorize("#35cdff","IMI Galil ARM\n") ..core.colorize("#FFFFFF", "DMG:  5 | Capacity: 25/35 rounds\n")..core.colorize("#FFFFFF", "Ammo: 7.62mm/5.56mm | Type: Assault rifle"),
	range = 0,
	inventory_image = "rangedweapons_ak47.png",
	RW_gun_capabilities = {
		automatic_gun = 1,
		gun_damage = {fleshy=5,knockback=0},
        gun_recoil = 1.6,
		gun_crit = 5,
		gun_critEffc = 3.2,
		suitable_ammo = {{"rangedweapons:762mm",25}, {"rangedweapons:556mm",35}},
		gun_skill = {"arifle_skill",50},
		gun_magazine = "rangedweapons:assaultrifle_mag",
		gun_icon = "galil_icon.png",
		gun_unloaded = "rangedweapons:galil_r",
		gun_velocity = 40,
		gun_accuracy = 79,
		gun_cooldown = 0.11,
		gun_reload = 2/4,
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

	inventory_image = "galil.png",
})

