

minetest.register_tool("rangedweapons:svd_rld", {
	rw_next_reload = "rangedweapons:svd",
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_svd_rrr.png",
    weapon_zoom = 9,
})


minetest.register_tool("rangedweapons:svd_r", {
	rw_next_reload = "rangedweapons:svd_rr",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_svd_noclip.png",
})
minetest.register_tool("rangedweapons:svd_rr", {
	rw_next_reload = "rangedweapons:svd_rrr",
	load_sound = "rangedweapons_rifle_reload_a",
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_svd.png",
})
minetest.register_tool("rangedweapons:svd_rrr", {
	rw_next_reload = "rangedweapons:svd",
	load_sound = "rangedweapons_rifle_reload_b",
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_svd_rld.png",
})


minetest.register_tool("rangedweapons:svd_rld", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	loaded_gun = "rangedweapons:svd",
	loaded_sound = "rangedweapons_rifle_reload_b",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_svd_rld.png",
})


minetest.register_tool("rangedweapons:svd", {
		description = "" ..core.colorize("#35cdff","S.V.D. \n") ..core.colorize("#FFFFFF", "Ranged damage:17 + 30/sec of bullet lifetime\n")..core.colorize("#FFFFFF", "Accuracy: 100%\n") ..core.colorize("#FFFFFF", "Critical chance: 30%\n") ..core.colorize("#FFFFFF", "Critical efficiency: x3\n") ..core.colorize("#FFFFFF", "Ammunition: 7.62mm round\n") ..core.colorize("#FFFFFF", "Rate of fire: 1.0\n") ..core.colorize("#FFFFFF", "Reload time: 2.0\n") ..core.colorize("#FFFFFF", "Zoom: 10x\n") ..core.colorize("#27a600", "The gun is loaded!\n") ..core.colorize("#FFFFFF", "Clip size: 10\n") ..core.colorize("#FFFFFF", "Enemy penetration:30%\n") ..core.colorize("#FFFFFF", "Block penetration:10%\n") ..core.colorize("#FFFFFF", "Gun type: Rifle\n") ..core.colorize("#FFFFFF", "Bullet velocity: 275"),
	range = 0,
	weapon_zoom = 9,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	inventory_image = "rangedweapons_svd.png",
RW_gun_capabilities = {
        
		gun_damage = {fleshy=17,knockback=0},
        gun_recoil = 1.6,
		gun_crit = 30,
		gun_critEffc = 3.0,
		suitable_ammo = {{"rangedweapons:762mm",10}},
		gun_skill = {"rifle_skill",20},
		gun_magazine = "rangedweapons:rifle_mag",
		gun_icon = "rangedweapons_svd_icon.png",
		gun_unloaded = "rangedweapons:svd_r",
		gun_cooling = "rangedweapons:svd_rld",
		gun_velocity = 275,
		gun_accuracy = 100,
		gun_cooldown = 0.15,
		gun_reload = 2.0/4,
		gun_projectiles = 1,
		has_shell = 0,
		gun_durability = 700,
		gun_smokeSize = 8,
		gun_dps = 30,
		gun_mob_penetration = 45,
		gun_node_penetration = 20,
		gun_unload_sound = "rangedweapons_rifle_clip_out",
		gun_sound = "rangedweapons_rifle_b",
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


