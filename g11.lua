------------reload--------------------
minetest.register_tool("rangedweapons:g11_r", {
	stack_max= 1,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	description = "",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	rw_next_reload = "rangedweapons:g11_rr",
	load_sound = "rangedweapons_handgun_mag_in",
	inventory_image = "g11_r.png",
})
minetest.register_tool("rangedweapons:g11_rr", {
	stack_max= 1,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	description = "",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	rw_next_reload = "rangedweapons:g11_rrr",
	load_sound = "rangedweapons_reload_a",
	inventory_image = "g11_rr.png",
})
minetest.register_tool("rangedweapons:g11_rrr", {
	stack_max= 1,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	description = "",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	rw_next_reload = "rangedweapons:g11",
	load_sound = "rangedweapons_reload_b",
	inventory_image = "g11_rrr.png",
})
minetest.register_tool("rangedweapons:g11_rld", {
	stack_max= 1,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	description = "",
	range = 0,
	loaded_gun = "rangedweapons:g11",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "g11_rld.png",
})
-----------------gun--------------

minetest.register_tool("rangedweapons:g11", {
		description = "" ..core.colorize("#35cdff","HK G11\n") ..core.colorize("#FFFFFF", "DMG: 4 | Capacity: 45 rounds\n")..core.colorize("#FFFFFF", "Ammo: 4.7mm caseless | Type: Assault rifle\n") ..core.colorize("#FFFFFF", "AUX1 key to use scope"),
	range = 0,
	wield_scale = {x=0.9,y=0.9,z=1.0},
	inventory_image = "g11.png",
	RW_gun_capabilities = {
        automatic_gun=1,
		gun_damage = {fleshy=4,knockback=0},
        gun_recoil = 0.25,
		gun_crit = 10,
		gun_critEffc = 2.0,
		suitable_ammo = {{"rangedweapons:caseless",45}},
		gun_skill = {"handgun_skill",40},
	--	gun_magazine = "rangedweapons:handgun_mag_black",
		gun_icon = "g11_icon.png",
		gun_unloaded = "rangedweapons:g11_r",
		gun_velocity = 30,
		gun_accuracy = 95,
		gun_cooldown = 0.05,
		gun_reload = 6.0/4,
		gun_projectiles = 1,
		has_shell = 0,
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

