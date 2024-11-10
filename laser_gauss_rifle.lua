minetest.register_craftitem("rangedweapons:blue_ray_visual", {
	wield_scale = {x=1.75,y=1.75,z=1.75},
	inventory_image = "rangedweapons_blue_ray.png",
})

	minetest.register_tool("rangedweapons:gauss_rifle", {
	wield_scale = {x=2.2,y=2.7,z=2},
		description = "" ..core.colorize("#35cdff","Gauss rifle\n") ..core.colorize("#FFFFFF", "Ranged damage: 37\n") ..core.colorize("#FFFFFF", "accuracy: 100%\n")  ..core.colorize("#FFFFFF", "Critical chance: 9%\n") ..core.colorize("#FFFFFF", "Critical efficiency: 2.0x\n")  ..core.colorize("#FFFFFF", "Power usage: 25\n") ..core.colorize("#FFFFFF", "Rate of fire: 4\n") ..core.colorize("#FFFFFF", "Enemy penetration: 90%\n") ..core.colorize("#FFFFFF", "Gun type: laser gun\n") ..core.colorize("#FFFFFF", "Bullet velocity: 375"),
	range = 0,
    weapon_zoom = 5,
    groups={not_in_creative_inventory=1},
RW_powergun_capabilities = {
		power_damage = {fleshy=37,knockback=0},
		power_crit = 9,
		power_critEffc = 2.0,
		power_skill = {"",1},
		power_cooling = "rangedweapons:gauss_rifle",
		power_velocity = 375,
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
