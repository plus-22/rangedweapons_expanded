

minetest.register_tool("rangedweapons:p90_r", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:p90_rr",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "p90_r.png",
})

minetest.register_tool("rangedweapons:p90_rr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:p90_rrr",
	load_sound = "rangedweapons_rifle_reload_a",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "p90_rr.png",
})

minetest.register_tool("rangedweapons:p90_rrr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:p90",
	load_sound = "rangedweapons_rifle_reload_b",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "p90_b.png",
})


minetest.register_tool("rangedweapons:p90_rld", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
    loaded_gun="rangedweapons:p90",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "p90_b.png",
})

	minetest.register_tool("rangedweapons:p90", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
		description = "" ..core.colorize("#35cdff","FN P90\n") ..core.colorize("#FFFFFF", "DMG: 5 | Capacity: 50 rounds\n")..core.colorize("#FFFFFF", "Ammo: 5.7x28mm | Type: SMG"),
	range = 0,
	inventory_image = "p90.png",
	RW_gun_capabilities = {
		automatic_gun = 1,
		gun_damage = {fleshy=5,knockback=0},
        gun_recoil = 1.2,
		gun_crit = 12,
		gun_critEffc = 2.9,
		suitable_ammo = {{"rangedweapons:57mm",50}},
		gun_skill = {"arifle_skill",50},
		gun_magazine = "rangedweapons:machinepistol_mag",
		gun_icon = "p90_icon.png",
		gun_unloaded = "rangedweapons:p90_r",
		gun_velocity = 40,
		gun_accuracy = 89,
		gun_cooldown = 0.07,
		gun_reload = 3/4,
		gun_projectiles = 1,
		has_shell = 1,
		gun_gravity = 0,
		gun_durability = 1200,
	--	gun_smokeSize = 5,
		gun_mob_penetration = 15,
		gun_node_penetration = 5,
		gun_unload_sound = "rangedweapons_rifle_clip_out",
		gun_sound = "rangedweapons_machine_pistol",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,

	inventory_image = "p90.png",
})


