


minetest.register_craftitem("rangedweapons:tec9_r", {
	stack_max= 1,
	wield_scale = {x=1.25,y=1.25,z=1.50},
	description = "",
	range = 0,
	rw_next_reload = "rangedweapons:tec9_rr",
	load_sound = "rangedweapons_handgun_mag_in",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_tec9_rld.png",
})

minetest.register_craftitem("rangedweapons:tec9_rr", {
	stack_max= 1,
	wield_scale = {x=1.25,y=1.25,z=1.50},
	description = "",
	range = 0,
	rw_next_reload = "rangedweapons:tec9_rrr",
	load_sound = "rangedweapons_reload_a",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_tec9.png",
})

minetest.register_craftitem("rangedweapons:tec9_rrr", {
	stack_max= 1,
	wield_scale = {x=1.25,y=1.25,z=1.50},
	description = "",
	range = 0,
	rw_next_reload = "rangedweapons:tec9",
	load_sound = "rangedweapons_reload_b",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_tec9_b.png",
})



minetest.register_tool("rangedweapons:tec9_rld", {
	stack_max= 1,
	wield_scale = {x=1.25,y=1.25,z=1.50},
	description = "",
    loaded_gun="rangedweapons:tec9",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_tec9_b.png",
})





	minetest.register_craftitem("rangedweapons:tec9", {
	stack_max= 1,
	wield_scale = {x=1.25,y=1.25,z=1.50},
description = "" ..core.colorize("#35cdff","TEC-9\n") ..core.colorize("#FFFFFF", "DMG: 6 | Capacity: 50 rounds\n")..core.colorize("#FFFFFF", "Ammo: 9x19mm Parabellum | Type: Pistol"),
	range = 0,
	inventory_image = "rangedweapons_tec9.png",
	RW_gun_capabilities = {
--		automatic_gun = 1,
		gun_damage = {fleshy=6,knockback=0},
        gun_recoil = 0.9,
		gun_crit = 9,
		gun_critEffc = 1.9,
		suitable_ammo = {{"rangedweapons:9mm",50}},
		gun_skill = {"mp_skill",80},
		gun_magazine = "rangedweapons:machinepistol_mag",
		gun_icon = "rangedweapons_tec9_icon.png",
		gun_unloaded = "rangedweapons:tec9_r",
		gun_velocity = 30,
		gun_accuracy = 75,
		gun_cooldown = 0.1,
		gun_reload = 1.0/4,
		gun_projectiles = 1,
		has_shell = 1,
		gun_gravity = 0,
		gun_durability = 1100,
		gun_smokeSize = 4,
		gun_unload_sound = "rangedweapons_handgun_mag_out",
		gun_sound = "rangedweapons_machine_pistol",
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

