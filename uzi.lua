

minetest.register_tool("rangedweapons:uzi_r", {
	stack_max= 1,
	wield_scale = {x=1.6,y=1.6,z=1.10},
	description = "",
	rw_next_reload = "rangedweapons:uzi_rr",
	load_sound = "rangedweapons_handgun_mag_in",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_uzi_rld.png",
})
minetest.register_tool("rangedweapons:uzi_rr", {
	stack_max= 1,
	wield_scale = {x=1.6,y=1.6,z=1.10},
	description = "",
	rw_next_reload = "rangedweapons:uzi_rrr",
	load_sound = "rangedweapons_reload_a",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_uzi.png",
})
minetest.register_tool("rangedweapons:uzi_rrr", {
	stack_max= 1,
	wield_scale = {x=1.6,y=1.6,z=1.10},
	description = "",
	rw_next_reload = "rangedweapons:uzi",
	load_sound = "rangedweapons_reload_b",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_uzi_b.png",
})







minetest.register_tool("rangedweapons:uzi_rld", {
	stack_max= 1,
	wield_scale = {x=1.6,y=1.6,z=1.10},
	description = "",
    loaded_gun="rangedweapons:uzi",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_uzi_b.png",
})












-------------------------------------------

	minetest.register_tool("rangedweapons:uzi", {
	stack_max= 1,
	wield_scale = {x=1.6,y=1.6,z=1.10},
description = "" ..core.colorize("#35cdff","IMI UZI\n") ..core.colorize("#FFFFFF", "DMG: 4 | Capacity: 40/22 rounds\n")..core.colorize("#FFFFFF", "Ammo: 9x19mm Parabellum/.45 ACP | Type: SMG"),
	range = 0,
	inventory_image = "rangedweapons_uzi.png",
	RW_gun_capabilities = {
		automatic_gun = 1,
		gun_damage = {fleshy=4,knockback=0},
        gun_recoil = 1.1,
		gun_crit = 5,
		gun_critEffc = 1.9,
		suitable_ammo = {{"rangedweapons:9mm",40},{"rangedweapons:45acp",22}},
		gun_skill = {"mp_skill",80},
		gun_magazine = "rangedweapons:machinepistol_mag",
		gun_icon = "rangedweapons_uzi_icon.png",
		gun_unloaded = "rangedweapons:uzi_r",
		gun_velocity = 35,
		gun_accuracy = 72,
		gun_cooldown = 0.08,
		gun_reload = 1.2/4,
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





