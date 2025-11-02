minetest.register_tool("rangedweapons:china_lake_rld", {
	stack_max= 1,
	range = 0,
wield_scale = {x=3.0,y=3.0,z=2.5},
	description = "",
	loaded_gun = "rangedweapons:china_lake",
	loaded_sound = "rangedweapons_shotgun_reload_b",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "china_lake.png",
})

minetest.register_tool("rangedweapons:china_lake_rlding", {
	stack_max= 1,
	range = 0,
wield_scale = {x=3.0,y=3.0,z=2.5},
	description = "",
	loaded_gun = "rangedweapons:china_lake",
	loaded_sound = "rangedweapons_shotgun_reload_b",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "china_lake_rld.png",
})

minetest.register_tool("rangedweapons:china_lake", {
		description = "" ..core.colorize("#35cdff","China lake 40mm grenade launcher\n") ..core.colorize("#FFFFFF", "DMG: 12 by direct contact | Capacity: 4 rounds\n")..core.colorize("#FFFFFF", "Ammo: 40mm grenades | Type: grenade launcher"),
	range = 0,
wield_scale = {x=3.0,y=3.0,z=2.5},
	inventory_image = "china_lake.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=12,knockback=0},
        gun_recoil = 1.1,
		gun_crit = 4,
		gun_critEffc = 2.0,
		suitable_ammo = {{"rangedweapons:40mm",4}},
		gun_skill = {"shotgun_skill",20},
		gun_icon = "china_lake_icon.png",
     	--gun_magazine = "rangedweapons:shell_grenadedrop",
		gun_unloaded = "rangedweapons:china_lake_rld",
		gun_cooling = "rangedweapons:china_lake_uld",
		gun_velocity = 20,
		gun_accuracy = 83,
		gun_cooldown = 1.8,
		gun_gravity = 8.5,
		gun_reload = 1.25,
		gun_projectiles = 1,
		has_shell = 1,
		gun_durability = 275,
		gun_smokeSize = 14,
		gun_door_breaking = 1,
		gun_sound = "rangedweapons_shotgun_shot",
		gun_unload_sound = "rangedweapons_shell_insert",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_single_load_gun(itemstack, user, "")
return itemstack
end,
	on_use = function(itemstack, user, pointed_thing)
rangedweapons_shoot_gun(itemstack, user)
return itemstack
	end,
})

minetest.register_tool("rangedweapons:china_lake_uld", {
	stack_max= 1,
wield_scale = {x=3.0,y=3.0,z=2.5},
	range = 0,
		description = "" ..core.colorize("#35cdff","China lake 40mm grenade launcher\n") ..core.colorize("#FFFFFF", "DMG: 12 by direct contact | Capacity: 4 rounds\n")..core.colorize("#FFFFFF", "Ammo: 40mm grenades | Type: grenade launcher"),
	groups = {not_in_creative_inventory = 1},
     inventory_image = "china_lake.png",
	on_use = function(itemstack, user, pointed_thing)
		
		if not user then
			return itemstack
		end
		local pos = user:get_pos()
		minetest.sound_play("rangedweapons_empty", {
			pos = pos,
			max_hear_distance = 15,
			gain = 1.0,
			fade = 0.0,
			pitch = 1.0,
		})
		return itemstack
	end,
on_secondary_use = function(itemstack, user, pointed_thing)
eject_shell(itemstack,user,"rangedweapons:china_lake_rlding",0.8,"rangedweapons_shotgun_reload_a","rangedweapons:shell_grenadedrop")
return itemstack
end,
})

