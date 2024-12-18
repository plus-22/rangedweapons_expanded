



minetest.register_tool("rangedweapons:sr_rld", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=1.25,y=1.25,z=1.1},
	description = "",
	loaded_gun = "rangedweapons:sr",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "SR410_rld.png",
})


minetest.register_tool("rangedweapons:sr", {
description = "" ..core.colorize("#35cdff","SR 410\n") ..core.colorize("#FFFFFF", "DMG: 4x3 | Capacity: 5 rounds\n")..core.colorize("#FFFFFF", "Ammo: .410 | Type: Shotgun"),
	range = 0,
	wield_scale = {x=1.25,y=1.25,z=1.1},
	inventory_image = "SR410.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=4,knockback=0},
        gun_recoil = 1.7,
		gun_crit = 19,
		gun_critEffc = 2.2,
		suitable_ammo = {{"rangedweapons:410",5}},
		gun_skill = {"revolver_skill",40},
		gun_icon = "SR410_icon.png",
		gun_unloaded = "rangedweapons:sr_rld",
		gun_cooling = "rangedweapons:sr",
		gun_velocity = 45,
		gun_accuracy = 65,
		gun_cooldown = 1,
		gun_reload = 0.4,
		gun_projectiles = 3,
		gun_durability = 1000,
		gun_smokeSize = 7,
		gun_mob_penetration = 15,
		gun_node_penetration = 5,
		gun_unload_sound = "rangedweapons_shell_insert",
		gun_sound = "rangedweapons_deagle",
	},
	on_use = function(itemstack, user, pointed_thing)
rangedweapons_shoot_gun(itemstack, user)
return itemstack
	end,
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_single_load_gun(itemstack, user)
return itemstack
end,
})

