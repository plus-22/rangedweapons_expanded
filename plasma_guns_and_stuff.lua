	minetest.register_tool("rangedweapons:plasma_rifle", {
	wield_scale = {x=2.5,y=2.5,z=2.2},
		description = "" ..core.colorize("#35cdff","Plasma rifle\n") ..core.colorize("#FFFFFF", "DMG: 14 \n")..core.colorize("#FFFFFF", "Ammo: microfusion cells (9) | Type: Plasma weapon"),
	range = 0,
    groups={not_in_creative_inventory=1},
RW_powergun_capabilities = {
        automatic_gun = 1,
		power_damage = {fleshy=14,knockback=0},
		power_crit = 20,
		power_critEffc = 2.0,
		power_skill = {"",1},
		power_cooling = "rangedweapons:plasma_rifle",
		power_velocity = 55,
		power_accuracy = 100,
		power_cooldown = 0.25,
		power_projectiles = 1,
		power_durability = 6500,
		power_sound = "plasma",
		power_glass_breaking = 1,
		power_door_breaking = 1,
		power_dps = 0,
		power_mob_penetration = 50,
		power_node_penetration = 0,
		power_dps = 0,
        power_mobPen = 40,
		power_consumption = 9,
		power_entity = "rangedweapons:shot_bullet",
		power_visual = "sprite",
		power_texture = "rangedweapons_green_ray.png",
		power_projectile_size = 0.075,
		has_sparks = 0,
		ignites_explosives = 1,
	},
	inventory_image = "plasma_rifle.png",
--	on_use = function(itemstack, user, pointed_thing)
--rangedweapons_shoot_powergun(itemstack, user)
--return itemstack
--	end,
})


	minetest.register_tool("rangedweapons:q35_rifle", {
	wield_scale = {x=2.5,y=2.5,z=2.2},
		description = "" ..core.colorize("#35cdff","Q-35 matter modulator\n") ..core.colorize("#FFFFFF", "DMG: 15 \n")..core.colorize("#FFFFFF", "Ammo: microfusion cells (8) | Type: Plasma weapon"),
	range = 0,
--    groups={not_in_creative_inventory=1},
RW_powergun_capabilities = {
        automatic_gun = 1,
		power_damage = {fleshy=15,knockback=0},
		power_crit = 20,
		power_critEffc = 2.0,
		power_skill = {"",1},
		power_cooling = "rangedweapons:q35_rifle",
		power_velocity = 55,
		power_accuracy = 100,
		power_cooldown = 0.30,
		power_projectiles = 1,
		power_durability = 6500,
		power_sound = "plasma",
		power_glass_breaking = 1,
		power_door_breaking = 1,
		power_dps = 0,
		power_mob_penetration = 50,
		power_node_penetration = 0,
		power_dps = 0,
        power_mobPen = 40,
		power_consumption = 8,
		power_entity = "rangedweapons:shot_bullet",
		power_visual = "sprite",
		power_texture = "rangedweapons_green_ray.png",
		power_projectile_size = 0.075,
		has_sparks = 0,
		ignites_explosives = 1,
	},
	inventory_image = "q35.png",
--	on_use = function(itemstack, user, pointed_thing)
--rangedweapons_shoot_powergun(itemstack, user)
--return itemstack
--	end,
})


	minetest.register_tool("rangedweapons:multiplas_rifle", {
	wield_scale = {x=2.5,y=2.5,z=2.2},
		description = "" ..core.colorize("#35cdff","Multiplas rifle\n") ..core.colorize("#FFFFFF", "DMG: 11x3 \n")..core.colorize("#FFFFFF", "Ammo: microfusion cells (9) | Type: Plasma weapon"),
	range = 0,
    groups={not_in_creative_inventory=1},
RW_powergun_capabilities = {
     --   automatic_gun = 1,
		power_damage = {fleshy=11,knockback=0},
		power_crit = 10,
		power_critEffc = 2.0,
		power_skill = {"",1},
		power_cooling = "rangedweapons:multiplas_rifle",
		power_velocity = 55,
		power_accuracy = 85,
		power_cooldown = 0.30,
		power_projectiles = 3,
		power_durability = 6500,
		power_sound = "plasma",
		power_glass_breaking = 1,
		power_door_breaking = 1,
		power_dps = 0,
		power_mob_penetration = 50,
		power_node_penetration = 0,
		power_dps = 0,
        power_mobPen = 40,
		power_consumption = 9,
		power_entity = "rangedweapons:shot_bullet",
		power_visual = "sprite",
		power_texture = "rangedweapons_green_ray.png",
		power_projectile_size = 0.00175,
		has_sparks = 0,
		ignites_explosives = 1,
	},
	inventory_image = "multiplas_rifle.png",
	on_use = function(itemstack, user, pointed_thing)
rangedweapons_shoot_powergun(itemstack, user)
return itemstack
	end,
})
















minetest.register_craftitem("rangedweapons:plasma_book", {
	description = "Documents",
	inventory_image = "documents.png",
	groups = {book=1},
    stack_max=1,
	on_use = function(itemstack, user, pointed_thing)
		local formspec = "size[13,9]"..
		"background[-1.7,-0.65;16.5,10.4;laser_book_gui.png]"..
-- intro
                "label[0,1.4;This is a classified document]"..
                "label[0,1.7;regarding energy guns prototypes.]"..

		"image_button[12,0;1,1;arrow_next.png;btn;;false;false;arrow_next.png]";
		minetest.show_formspec(user:get_player_name(), "rangedweapons:plasma_bookp1", formspec);
	end,
})

minetest.register_on_player_receive_fields(function(player, form, field)
	if form == "rangedweapons:plasma_bookp1" then
		local formspec = "size[13,9]"..
		"background[-1.7,-0.65;16.5,10.4;laser_book_gui.png]"..
-- plasma rifle 
		"image[-0.3,0.0;4,4;plasma_rifle.png]"..
                "label[0,3.4;Plasma Rifle]"..
                "label[0,3.7;]"..
                "label[0,4;CLASSIFIED]"..
                "label[0,4.3;]"..
                "label[0,4.6;Upgrade of the laser rifle.]"..
                "label[0,4.9;Put 1 ultra gunsteel above and]"..
                "label[0,5.2;1 below in the crafting menu in]"..
                "label[0,5.5;order to obtain.]"..

-- multiplas rifle
		"image[7,0.0;4,4;multiplas_rifle.png]"..
                "label[7,3.4;Multiplas Rifle]"..
                "label[7,3.7;]"..
                "label[7,4;CLASSIFIED]"..
                "label[7,4.3;]"..
                "label[7,4.6;Upgrade of the tri-beam rifle.]"..
                "label[7,4.9;Put 1 ultra gunsteel above and]"..
                "label[7,5.2;1 below in the crafting menu in]"..
                "label[7,5.5;order to obtain.]"..
		"image_button[12,0;1,1;arrow_next.png;btn;;false;false;arrow_next.png]";

		minetest.show_formspec(player:get_player_name(), "rangedweapons:plasma_bookp2", formspec);
	end
end)











