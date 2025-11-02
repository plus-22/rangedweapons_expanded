minetest.register_craftitem("rangedweapons:blue_ray_visual", {
	wield_scale = {x=1.75,y=1.75,z=1.75},
	inventory_image = "rangedweapons_blue_ray.png",
})

	minetest.register_tool("rangedweapons:gauss_rifle", {
	wield_scale = {x=2.2,y=2.7,z=2},
		description = "" ..core.colorize("#35cdff","Gauss rifle\n") ..core.colorize("#FFFFFF", "DMG: 45 \n")..core.colorize("#FFFFFF", "Ammo: microfusion cells (25) | Type: Laser weapon\n") ..core.colorize("#FFFFFF", "AUX1 key to use scope"),
	range = 0,
    groups={not_in_creative_inventory=1},
RW_powergun_capabilities = {
		power_damage = {fleshy=45,knockback=0},
		power_crit = 9,
		power_critEffc = 2.0,
		power_skill = {"",1},
		power_cooling = "rangedweapons:gauss_rifle",
		power_velocity = 75,
		power_accuracy = 100,
		power_cooldown = 2,
		power_projectiles = 1,
		power_durability = 12500,
		power_sound = "tribeam",
		power_glass_breaking = 1,
		power_door_breaking = 1,
		power_dps = 0,
		power_mob_penetration = 90,
		power_node_penetration = 0,
		power_dps = 75,
        power_mobPen = 90,
		power_consumption = 25,
		power_entity = "rangedweapons:shot_bullet",
		power_visual = "wielditem",
		power_texture = "rangedweapons:blue_ray_visual",
		power_projectile_size = 0.075,
		has_sparks = 0,
		ignites_explosives = 1,
	},
	inventory_image = "gauss_rifle.png",
	on_use = function(itemstack, user, pointed_thing)
rangedweapons_shoot_powergun(itemstack, user)
return itemstack
	end,
})
