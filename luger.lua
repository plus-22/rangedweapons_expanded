------------reload--------------------
minetest.register_tool("rangedweapons:luger_r", {
	stack_max= 1,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	description = "",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	rw_next_reload = "rangedweapons:luger_rr",
	load_sound = "rangedweapons_handgun_mag_in",
	inventory_image = "rangedweapons_luger.png",
})
minetest.register_tool("rangedweapons:luger_rr", {
	stack_max= 1,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	description = "",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	rw_next_reload = "rangedweapons:luger_rrr",
	load_sound = "rangedweapons_reload_a",
	inventory_image = "rangedweapons_luger.png",
})
minetest.register_tool("rangedweapons:luger_rrr", {
	stack_max= 1,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	description = "",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	rw_next_reload = "rangedweapons:luger",
	load_sound = "rangedweapons_reload_b",
	inventory_image = "rangedweapons_luger_rld.png",
})
minetest.register_tool("rangedweapons:luger_rld", {
	stack_max= 1,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	description = "",
	range = 0,
	loaded_gun = "rangedweapons:luger",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_luger_rld.png",
})
-----------------gun--------------

minetest.register_tool("rangedweapons:luger", {
		description = "" ..core.colorize("#35cdff","Luger P08\n") ..core.colorize("#FFFFFF", "DMG: 6 | Capacity: 8 rounds\n")..core.colorize("#FFFFFF", "Ammo: 9x19mm Parabellum | Type: Pistol"),
	range = 0,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	inventory_image = "rangedweapons_luger.png",
	RW_gun_capabilities = {
		gun_damage = {fleshy=6,knockback=0},
        gun_recoil = 0.7,
		gun_crit = 10,
		gun_critEffc = 2.0,
		suitable_ammo = {{"rangedweapons:9mm",8}},
		gun_skill = {"handgun_skill",40},
		gun_magazine = "rangedweapons:handgun_mag_black",
		gun_icon = "rangedweapons_luger_icon.png",
		gun_unloaded = "rangedweapons:luger_r",
		gun_cooling = "rangedweapons:luger_rld",
		gun_velocity = 30,
		gun_accuracy = 92,
		gun_cooldown = 0.1,
		gun_reload = 1.0/4,
		gun_projectiles = 1,
		has_shell = 1,
		gun_durability = 600,
		gun_smokeSize = 5,
		gun_unload_sound = "rangedweapons_handgun_mag_out",
		gun_sound = "rangedweapons_glock",
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

