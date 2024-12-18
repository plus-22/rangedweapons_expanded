

minetest.register_craftitem("rangedweapons:shell_shotgundrop", {
	wield_scale = {x=2.5,y=1.5,z=1.0},
	inventory_image = "rangedweapons_shelldrop_shotgun.png",
})

minetest.register_craftitem("rangedweapons:shell_whitedrop", {
	wield_scale = {x=2.5,y=1.5,z=1.0},
	inventory_image = "rangedweapons_shelldrop_white.png",
})

minetest.register_craftitem("rangedweapons:shell_grenadedrop", {
	wield_scale = {x=2.5,y=1.5,z=3.0},
	inventory_image = "rangedweapons_shelldrop_grenade.png",
})

minetest.register_craftitem("rangedweapons:shelldrop", {
	wield_scale = {x=2.5,y=1.5,z=1.0},
	inventory_image = "rangedweapons_shelldrop.png",
})

minetest.register_craftitem("rangedweapons:repair_kit", {
		description = "" ..core.colorize("#35cdff","Weapon repair kit"),
	inventory_image = "repair_kit.png",
})

minetest.register_craftitem("rangedweapons:plastic_sheet", {
		description = "" ..core.colorize("#35cdff","Polymer\n")..core.colorize("#FFFFFF", "Used in guncraft"),
	inventory_image = "rangedweapons_plastic_sheet.png",
})

minetest.register_craftitem("rangedweapons:gunsteel_ingot", {
		description = "" ..core.colorize("#35cdff","GunSteel ingot\n")..core.colorize("#FFFFFF", "A strong, but light alloy, used in guncraft"),
	inventory_image = "rangedweapons_gunsteel_ingot.png",
})

minetest.register_craftitem("rangedweapons:ultra_gunsteel_ingot", {
		description = "" ..core.colorize("#35cdff","Ultra-GunSteel ingot\n")..core.colorize("#FFFFFF", "A even stronger alloy, for even stronger guns."),
	inventory_image = "rangedweapons_ultra_gunsteel_ingot.png",
})

minetest.register_craftitem("rangedweapons:gun_power_core", {
		description = "" ..core.colorize("#35cdff","Gun Power Core\n")..core.colorize("#FFFFFF", "A powerful core, for making the most powerful weapons"),
	inventory_image = "rangedweapons_gun_power_core.png",
})

minetest.register_craftitem("rangedweapons:impure_energy", {
		description = "" ..core.colorize("#35cdff","Impure energy"),
	stack_max = 250,
	inventory_image = "rangedweapons_power_particle.png",
    groups={not_in_creative_inventory=1},
})


minetest.register_craftitem("rangedweapons:power_particle", {
		description = "" ..core.colorize("#35cdff","Power Particle | Microfusion cell\n")..core.colorize("#FFFFFF", "A power unit, used by laser guns"),
	stack_max = 250,
	inventory_image = "mf_cell.png",
    groups={not_in_creative_inventory=1},
})



