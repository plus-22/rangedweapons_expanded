
minetest.register_tool("rangedweapons:milkor_rld", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=1.75,y=1.75,z=2.0},
	description = "",
	loaded_gun = "rangedweapons:milkor",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "rangedweapons_milkor_rld.png",
})


minetest.register_tool("rangedweapons:milkor", {
		description = "" ..core.colorize("#35cdff","Milkor MGL\n") ..core.colorize("#FFFFFF", "DMG: 15 by direct contact | Capacity: 6 rounds\n")..core.colorize("#FFFFFF", "Ammo: 40mm grenade | Type: Grenade launcher"),
	range = 0,
	wield_scale = {x=1.75,y=1.75,z=2.0},
	inventory_image = "rangedweapons_milkor.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=15,knockback=0},
        gun_recoil = 2.1,
		gun_crit = 9,
		gun_critEffc = 3.0,
		suitable_ammo = {{"rangedweapons:40mm",6}},
		gun_skill = {"",1},
		gun_magazine = "rangedweapons:shell_grenadedrop",
		gun_icon = "rangedweapons_milkor_icon.png",
		gun_unloaded = "rangedweapons:milkor_rld",
		gun_cooling = "rangedweapons:milkor",
		gun_velocity = 20,
		gun_accuracy = 96,
		gun_cooldown = 0.35,
		gun_reload = 0.75,
		gun_projectiles = 1,
		gun_durability = 225,
		gun_smokeSize = 15,
		gun_gravity = 7,
		gun_unload_sound = "rangedweapons_shell_insert",
		gun_sound = "rangedweapons_rocket",
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
