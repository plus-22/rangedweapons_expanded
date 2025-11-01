

minetest.register_tool("rangedweapons:g36_r", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:g36_rr",
	load_sound = "rangedweapons_handgun_mag_in",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_g36_rld.png",
})

minetest.register_tool("rangedweapons:g36_rr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:g36_rrr",
	load_sound = "rangedweapons_rifle_reload_a",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_g36.png",
})

minetest.register_tool("rangedweapons:g36_rrr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:g36",
	load_sound = "rangedweapons_rifle_reload_b",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_g36_b.png",
})



minetest.register_tool("rangedweapons:g36_rld", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
    loaded_gun="rangedweapons:g36",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_g36_b.png",
})


	minetest.register_tool("rangedweapons:g36", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
		description = "" ..core.colorize("#35cdff","G36\n") ..core.colorize("#FFFFFF", "DMG: 5 | Capacity: 30 rounds\n")..core.colorize("#FFFFFF", "Ammo: 5.56mm | Type: Assault rifle"),
	range = 0,
	inventory_image = "rangedweapons_g36.png",
	RW_gun_capabilities = {
		automatic_gun = 1,
		gun_damage = {fleshy=5,knockback=0},
        gun_recoil = 1.4,
		gun_crit = 12,
		gun_critEffc = 2.9,
		suitable_ammo = {{"rangedweapons:556mm",30}},
		gun_skill = {"arifle_skill",55},
		gun_magazine = "rangedweapons:assaultrifle_mag",
		gun_icon = "rangedweapons_g36_icon.png",
		gun_unloaded = "rangedweapons:g36_r",
		gun_velocity = 40,
		gun_accuracy = 80,
		gun_cooldown = 0.08,
		gun_reload = 1.2/4,
		gun_projectiles = 1,
		has_shell = 1,
		gun_gravity = 0,
		gun_durability = 1500,
		gun_smokeSize = 5,
		gun_mob_penetration = 17,
		gun_node_penetration = 6,
		gun_unload_sound = "rangedweapons_handgun_mag_out",
		gun_sound = "rangedweapons_smg",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,

	inventory_image = "rangedweapons_g36.png",
})
