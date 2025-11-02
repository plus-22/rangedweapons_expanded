

minetest.register_tool("rangedweapons:kar98k_uld", {
	stack_max= 1,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	range = 0,
	groups = {not_in_creative_inventory = 1},
		description = "" ..core.colorize("#35cdff","Karabiner 98 kurz\n") ..core.colorize("#FFFFFF", "DMG: 12 | Capacity: 5 rounds\n")..core.colorize("#FFFFFF", "Ammo: 7.62mm | Type: Rifle"),
	inventory_image = "kar98k.png",
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
eject_shell(itemstack,user,"rangedweapons:kar98k_rld",0.5,"rangedweapons_rifle_reload_a","rangedweapons:empty_shell")
return itemstack
end,
})


minetest.register_tool("rangedweapons:kar98k_r", {
	rw_next_reload = "rangedweapons:kar98k_rr",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "kar98k_noclip.png",
})
minetest.register_tool("rangedweapons:kar98k_rr", {
	rw_next_reload = "rangedweapons:kar98k_rrr",
	load_sound = "rangedweapons_rifle_reload_a",
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "kar98k_noclip2.png",
})
minetest.register_tool("rangedweapons:kar98k_rrr", {
	rw_next_reload = "rangedweapons:kar98k",
	load_sound = "rangedweapons_rifle_reload_b",
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "kar98k_noclip3.png",
})


minetest.register_tool("rangedweapons:kar98k_rld", {
	stack_max= 1,
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	description = "",
	loaded_gun = "rangedweapons:kar98k",
	loaded_sound = "rangedweapons_rifle_reload_b",
	groups = {not_in_creative_inventory = 1},
	inventory_image = "kar98k_rld.png",
})


minetest.register_tool("rangedweapons:kar98k", {
		description = "" ..core.colorize("#35cdff","Karabiner 98 kurz\n") ..core.colorize("#FFFFFF", "DMG: 12 | Capacity: 5 rounds\n")..core.colorize("#FFFFFF", "Ammo: 7.62mm | Type: Rifle"),
	range = 0,
	wield_scale = {x=1.9,y=1.9,z=1.1},
	inventory_image = "kar98k.png",
RW_gun_capabilities = {
		gun_damage = {fleshy=12,knockback=0},
        gun_recoil = 1.7,
		gun_crit = 21,
		gun_critEffc = 2.0,
		suitable_ammo = {{"rangedweapons:762mm",5},},
		gun_skill = {"rifle_skill",20},
		gun_icon = "kar98k_icon.png",
		gun_unloaded = "rangedweapons:kar98k_r",
		gun_cooling = "rangedweapons:kar98k_uld",
		gun_velocity = 55,
		gun_accuracy = 97,
		gun_cooldown = 0.1,
		gun_reload = 1.8/4,
		gun_projectiles = 1,
		has_shell = 0,
		gun_durability = 7000,
		gun_smokeSize = 8,
		gun_mob_penetration = 30,
		gun_node_penetration = 10,
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

