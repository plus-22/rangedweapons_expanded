minetest.register_tool("rangedweapons:1892_rld", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=1.85,y=1.85,z=1.3},
	description = "",
	loaded_gun = "rangedweapons:1892",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "w1892.png",
})



minetest.register_tool("rangedweapons:1892_rlding", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=1.85,y=1.85,z=1.3},
	description = "",
	loaded_gun = "rangedweapons:1892",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "w1892_rld.png",
})


minetest.register_tool("rangedweapons:1892", {
		description = "" ..core.colorize("#35cdff","Winchester 1892 \n") ..core.colorize("#FFFFFF", "Ranged damage: 13\n")..core.colorize("#FFFFFF", "Accuracy: 90%\n") ..core.colorize("#FFFFFF", "Critical chance: 19%\n") ..core.colorize("#FFFFFF", "Critical efficiency: 2.5x\n") ..core.colorize("#FFFFFF", "Ammunition: .44 Magnum rounds\n") ..core.colorize("#FFFFFF", "Reload time: 0.25\n") ..core.colorize("#FFFFFF", "Clip Size: 12\n")..core.colorize("#FFFFFF", "Gun type: Rifle\n")..core.colorize("#FFFFFF", "Block penetration: 5%\n")
..core.colorize("#FFFFFF", "penetration: 15%\n") ..core.colorize("#FFFFFF", "Bullet velocity: 255"),
	range = 0,
	wield_scale = {x=1.85,y=1.85,z=1.3},
	inventory_image = "w1892.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=10,knockback=0},
        gun_recoil = 1.3,
		gun_crit = 19,
		gun_critEffc = 2.2,
		suitable_ammo = {{"rangedweapons:44",12}},
		gun_skill = {"rifle_skill",40},
		gun_icon = "w1892_icon.png",
		gun_unloaded = "rangedweapons:1892_rld",
		gun_cooling = "rangedweapons:1892_rlding",
		gun_velocity = 255,
		gun_accuracy = 95,
		gun_cooldown = 0.4,
		gun_reload = 0.4,
		gun_projectiles = 1,
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

