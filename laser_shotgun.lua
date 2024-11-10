	minetest.register_tool("rangedweapons:laser_shotgun", {
	stack_max= 1,
	wield_scale = {x=2.0,y=2.0,z=1.75},
		description = "" ..core.colorize("#35cdff","Tri-beam laser rifle\n") ..core.colorize("#FFFFFF", "Ranged damage: 8/beam\n") ..core.colorize("#FFFFFF", "accuracy: 80%\n") ..core.colorize("#FFFFFF", "laser beams: 3\n")  ..core.colorize("#FFFFFF", "Critical chance: 8%\n") ..core.colorize("#FFFFFF", "Critical efficiency: 2.2x\n")  ..core.colorize("#FFFFFF", "Power usage: 15\n") ..core.colorize("#FFFFFF", "Rate of fire: 0.5\n") ..core.colorize("#FFFFFF", "Enemy penetration: 40%\n") ..core.colorize("#FFFFFF", "Gun type: laser gun\n") ..core.colorize("#FFFFFF", "Bullet velocity: 75"),
	range = 0,
    groups={not_in_creative_inventory=1},
	inventory_image = "tri_beam.png",
RW_powergun_capabilities = {
	power_damage = {fleshy=8,knockback=0},
		power_crit = 9,
		power_critEffc = 2.0,
		power_skill = {"",1},
		power_cooling = "rangedweapons:laser_shotgun",
		power_velocity = 75,
		power_accuracy = 80,
		power_cooldown = 0.5,
		power_projectiles = 3,
		power_durability = 12500,
		power_sound = "laser_rifle",
		power_glass_breaking = 1,
		power_door_breaking = 1,
		power_dps = 0,
		power_mob_penetration = 40,
		power_node_penetration = 0,
		power_dps = 0,
        power_mobPen = 40,
		power_consumption = 15,
		power_entity = "rangedweapons:shot_bullet",
		power_visual = "wielditem",
		power_texture = "rangedweapons:red_ray_visual",
		power_projectile_size = 0.075,
		has_sparks = 0,
		ignites_explosives = 1,
	},
	on_use = function(itemstack, user, pointed_thing)
rangedweapons_shoot_powergun(itemstack, user)
return itemstack
	end,

})
