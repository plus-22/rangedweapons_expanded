
minetest.register_tool("rangedweapons:dragoon_rld", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=1.25,y=1.25,z=1.1},
	description = "",
	loaded_gun = "rangedweapons:dragoon",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "dragoon_rld.png",
})

minetest.register_tool("rangedweapons:dragoon_r", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=1.25,y=1.25,z=1.1},
	description = "",
	loaded_gun = "rangedweapons:dragoon",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "dragoon.png",
})


minetest.register_tool("rangedweapons:dragoon", {
		description = "" ..core.colorize("#35cdff","Colt Dragoon\n") ..core.colorize("#FFFFFF", "DMG: 14 | Capacity: 6 rounds\n")..core.colorize("#FFFFFF", "Ammo: .44 lead balls | Type: revolver"),
	range = 0,
	wield_scale = {x=1.25,y=1.25,z=1.1},
	inventory_image = "dragoon.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=14,knockback=0},
        gun_recoil = 1.7,
		gun_crit = 22,
		gun_critEffc = 3.1,
		suitable_ammo = {{"rangedweapons:lyp",6}},
		gun_skill = {"revolver_skill",40},
		gun_icon = "dragoon_icon.png",
		gun_unloaded = "rangedweapons:dragoon",
		gun_cooling = "rangedweapons:dragoon_rld",
		gun_velocity = 55,
		gun_accuracy = 87,
		gun_cooldown = 1.2,
		gun_reload = 2.4,
		gun_projectiles = 1,
		gun_durability = 1750,
		gun_smokeSize = 7,
		gun_mob_penetration = 24,
		gun_node_penetration = 8,
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


