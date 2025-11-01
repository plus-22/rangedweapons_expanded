minetest.register_on_joinplayer(function(player)
local meta = player:get_meta()
if meta:get_int("handgun_skill") == 0
then
	meta:set_int("handgun_skill",100)
end
if meta:get_int("mp_skill") == 0
then
	meta:set_int("mp_skill",100)
end
if meta:get_int("smg_skill") == 0
then
	meta:set_int("smg_skill",100)
end
if meta:get_int("shotgun_skill") == 0
then
	meta:set_int("shotgun_skill",100)
end
if meta:get_int("heavy_skill") == 0
then
	meta:set_int("heavy_skill",100)
end
if meta:get_int("arifle_skill") == 0
then
	meta:set_int("arifle_skill",100)
end
if meta:get_int("revolver_skill") == 0
then
	meta:set_int("revolver_skill",100)
end
if meta:get_int("rifle_skill") == 0
then
	meta:set_int("rifle_skill",100)
end
if meta:get_int("throw_skill") == 0
then
	meta:set_int("throw_skill",100)
end
end)