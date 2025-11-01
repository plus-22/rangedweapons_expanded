

minetest.register_tool("rangedweapons:thompson_r", {
	stack_max= 1,
	wield_scale = {x=1.9,y=1.9,z=1.25},
	description = "",
	rw_next_reload = "rangedweapons:thompson_rr",
	load_sound = "rangedweapons_handgun_mag_in",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_thompson_rld.png",
})
minetest.register_tool("rangedweapons:thompson_rr", {
	stack_max= 1,
	wield_scale = {x=1.9,y=1.9,z=1.25},
	description = "",
	rw_next_reload = "rangedweapons:thompson_rrr",
	load_sound = "rangedweapons_reload_a",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_thompson.png",
})
minetest.register_tool("rangedweapons:thompson_rrr", {
	stack_max= 1,
	wield_scale = {x=1.9,y=1.9,z=1.25},
	description = "",
	rw_next_reload = "rangedweapons:thompson",
	load_sound = "rangedweapons_reload_b",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_thompson_b.png",
})







minetest.register_tool("rangedweapons:thompson_rld", {
	stack_max= 1,
	wield_scale = {x=1.9,y=1.9,z=1.25},
	description = "",
    loaded_gun="rangedweapons:thompson",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_thompson_b.png",
})










-------------------------------------------

	minetest.register_tool("rangedweapons:thompson", {
	stack_max= 1,
	wield_scale = {x=1.9,y=1.9,z=1.25},
description = "" ..core.colorize("#35cdff","Thompson\n") ..core.colorize("#FFFFFF", "DMG: 6 | Capacity: 30 rounds\n")..core.colorize("#FFFFFF", "Ammo: .45 ACP/10mm | Type: SMG"),
	range = 0,
	inventory_image = "rangedweapons_thompson.png",
	RW_gun_capabilities = {
		automatic_gun = 1,
		gun_damage = {fleshy=6,knockback=0},
        gun_recoil = 1.3,
		gun_crit = 8,
		gun_critEffc = 2.0,
		suitable_ammo = {{"rangedweapons:10mm",30},{"rangedweapons:45acp",30}},
		gun_skill = {"smg_skill",65},
		gun_magazine = "rangedweapons:machinepistol_mag",
		gun_icon = "rangedweapons_thompson_icon.png",
		gun_unloaded = "rangedweapons:thompson_r",
		gun_velocity = 35,
		gun_accuracy = 75,
		gun_cooldown = 0.1,
		gun_reload = 1.4/4,
		gun_projectiles = 1,
		has_shell = 1,
		gun_gravity = 0,
		gun_durability = 1250,
		gun_smokeSize = 4,
		gun_unload_sound = "rangedweapons_handgun_mag_out",
		gun_sound = "rangedweapons_smg",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,
})





