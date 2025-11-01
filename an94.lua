

minetest.register_tool("rangedweapons:an94_r", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:an94_rr",
	load_sound = "rangedweapons_rifle_clip_in",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "an94_rld.png",
})

minetest.register_tool("rangedweapons:an94_rr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:an94_rrr",
	load_sound = "rangedweapons_rifle_reload_a",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "an94.png",
})

minetest.register_tool("rangedweapons:an94_rrr", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
	rw_next_reload = "rangedweapons:an94",
	load_sound = "rangedweapons_rifle_reload_b",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "an94_b.png",
})


minetest.register_tool("rangedweapons:an94_rld", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
	description = "",
    loaded_gun="rangedweapons:an94",
	range = 0,
	groups = {not_in_creative_inventory = 1},
	inventory_image = "an94_b.png",
})

	minetest.register_tool("rangedweapons:an94", {
	stack_max= 1,
	wield_scale = {x=1.75,y=1.75,z=1.3},
		description = "" ..core.colorize("#35cdff","AN-94\n") ..core.colorize("#FFFFFF", "Gun damage: 6\n") ..core.colorize("#FFFFFF", "accuracy: 74%\n") ..core.colorize("#FFFFFF", "Gun knockback: 5\n")  ..core.colorize("#FFFFFF", "Gun Critical chance: 12%\n")..core.colorize("#FFFFFF", "Critical efficiency: 2.9x\n")  ..core.colorize("#FFFFFF", "Reload delay: 1.8\n") ..core.colorize("#FFFFFF", "Clip size: 40\n")   ..core.colorize("#FFFFFF", "Ammunition: 7.62mm rounds\n") ..core.colorize("#FFFFFF", "Rate of fire: 2 bullets/0.3s(burst fire)\n") ..core.colorize("#FFFFFF", "Gun type: assault rifle\n") ..core.colorize("#FFFFFF", "Block penetration: 5%\n")
..core.colorize("#FFFFFF", "Enemy penetration: 15%\n") ..core.colorize("#FFFFFF", "Bullet velocity: 44"),
	range = 0,
	inventory_image = "an94.png",
	RW_gun_capabilities = {
		automatic_gun = 1,
		gun_damage = {fleshy=6,knockback=5},
        gun_recoil = 1.7
		gun_crit = 12,
		gun_critEffc = 2.9,
		suitable_ammo = {{"rangedweapons:762mm",40}},
		gun_skill = {"arifle_skill",50},
		gun_magazine = "rangedweapons:assaultrifle_mag",
		gun_icon = "an94_icon.png",
		gun_unloaded = "rangedweapons:an94_r",
		gun_velocity = 30,
		gun_accuracy = 74,
		gun_cooldown = 0.3,
		gun_reload = 1.4/4,
		gun_projectiles = 1,
		has_shell = 1,
		gun_gravity = 0,
		gun_durability = 1200,
		gun_smokeSize = 5,
		gun_mob_penetration = 15,
		gun_node_penetration = 5,
		gun_unload_sound = "rangedweapons_rifle_clip_out",
		gun_sound = "rangedweapons_ak",
	},
	on_secondary_use = function(itemstack, user, pointed_thing)
rangedweapons_reload_gun(itemstack, user)
return itemstack
end,
on_use = function(itemstack, user, pointed_thing)
    local player_name = user:get_player_name()

    -- Check if the player has already shot once
    if not user:get_meta():get_int("shoot_count") then
      user:get_meta():set_int("shoot_count", 1)
      -- Your code for shooting the first time
         rangedweapons_shoot_gun(itemstack, user)
    else
      -- Check the shoot count
      local shoot_count = user:get_meta():get_int("shoot_count")
      if shoot_count >= 2 then
        user:get_meta():set_int("shoot_count", 0)
        -- Reset the shoot count after shooting twice

      else
        user:get_meta():set_int("shoot_count", shoot_count + 1)
        -- Your code for shooting the second time
           rangedweapons_shoot_gun(itemstack, user)
      end
    end

    return itemstack
  end
})











