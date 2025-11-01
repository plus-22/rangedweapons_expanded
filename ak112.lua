

minetest.register_tool("rangedweapons:ak12_r", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:ak12_rr",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "ak112_rld.png",
})

minetest.register_tool("rangedweapons:ak12_rr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:ak12_rrr",
	load_sound = "rangedweapons_rifle_reload_a",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "ak112.png",
})

minetest.register_tool("rangedweapons:ak12_rrr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:ak12",
	load_sound = "rangedweapons_rifle_reload_b",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "ak112_b.png",
})


minetest.register_tool("rangedweapons:ak12_rld", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
    loaded_gun="rangedweapons:ak12",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "ak112_b.png",
    weapon_zoom = 1.2,
})

	minetest.register_tool("rangedweapons:ak12", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
		description = "" ..core.colorize("#35cdff","AK-12\n") ..core.colorize("#FFFFFF", "DMG: 5 | Capacity: 40 rounds\n")..core.colorize("#FFFFFF", "Ammo: 5.45mm | Type: assault rifle"),
	range = 0,
    weapon_zoom = 1.2,
	inventory_image = "ak112.png",
	RW_gun_capabilities = {
		automatic_gun = 1,
		gun_damage = {fleshy=5,knockback=0},
        gun_recoil = 1.5,
		gun_crit = 9,
		gun_critEffc = 3.9,
		suitable_ammo = {{"rangedweapons:545mm",40}},
		gun_skill = {"arifle_skill",50},
		gun_magazine = "rangedweapons:assaultrifle_mag",
		gun_icon = "ak112_icon.png",
		gun_unloaded = "rangedweapons:ak12_r",
		gun_velocity = 40,
		gun_accuracy = 89,
		gun_cooldown = 0.08,
		gun_reload = 1.4/4,
		gun_projectiles = 1,
		has_shell = 1,
		gun_gravity = 0,
		gun_durability = 12000,
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

	inventory_image = "ak112.png",
})
