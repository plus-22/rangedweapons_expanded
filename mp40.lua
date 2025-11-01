
	minetest.register_tool("rangedweapons:mp40_r", {
	wield_scale = {x=1.75,y=1.75,z=1.5},
	description = "",
	range = 0,
	rw_next_reload = "rangedweapons:mp40_rr",
	load_sound = "rangedweapons_handgun_mag_in",
	inventory_image = "rangedweapons_mp40_rld.png",
	groups = {not_in_creative_inventory = 1},
})
	minetest.register_tool("rangedweapons:mp40_rr", {
	wield_scale = {x=1.75,y=1.75,z=1.5},
	description = "",
	range = 0,
	rw_next_reload = "rangedweapons:mp40_rrr",
	load_sound = "rangedweapons_reload_a",
	inventory_image = "rangedweapons_mp40.png",
	groups = {not_in_creative_inventory = 1},
})
	minetest.register_tool("rangedweapons:mp40_rrr", {
	wield_scale = {x=1.75,y=1.75,z=1.5},
	description = "",
	range = 0,
	inventory_image = "rangedweapons_mp40_b.png",
	rw_next_reload = "rangedweapons:mp40",
	load_sound = "rangedweapons_reload_b",
	groups = {not_in_creative_inventory = 1},
})



minetest.register_tool("rangedweapons:mp40_rld", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.5},
	description = "",
    loaded_gun="rangedweapons:mp40",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_mp40.png",
})




	minetest.register_tool("rangedweapons:mp40", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.5},
		description = "" ..core.colorize("#35cdff","MP-40\n") ..core.colorize("#FFFFFF", "DMG: 6 | Capacity: 32 rounds\n")..core.colorize("#FFFFFF", "Ammo: 9x19mm Parabellum | Type: SMG"),
	range = 0,
	inventory_image = "rangedweapons_mp40_b.png",
	RW_gun_capabilities = {
		automatic_gun = 1,
		gun_damage = {fleshy=6,knockback=0},
        gun_recoil = 1.1,
		gun_crit = 8,
		gun_critEffc = 2.0,
		suitable_ammo = {{"rangedweapons:9mm",32}},
		gun_skill = {"smg_skill",75},
		gun_magazine = "rangedweapons:machinepistol_mag",
		gun_icon = "rangedweapons_mp40_icon.png",
		gun_unloaded = "rangedweapons:mp40_r",
		gun_velocity = 35,
		gun_accuracy = 75,
		gun_cooldown = 0.13,
		gun_reload = 1.3/4,
		gun_projectiles = 1,
		has_shell = 1,
		gun_gravity = 0,
		gun_durability = 1500,
		gun_smokeSize = 4,
		gun_unload_sound = "rangedweapons_handgun_mag_out",
		gun_sound = "rangedweapons_machine_pistol",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,

})
