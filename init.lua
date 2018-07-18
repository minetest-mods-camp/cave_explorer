--Hume2's Cave Explorer mod

minetest.register_node("cave_explorer:light", {
	description = "Cave Light",
	--drawtype = "glasslike",
	tiles = {"default_stone.png^cave_explorer_light.png"},
	paramtype = "light",
	--sunlight_propagates = true,
	is_ground_content = false,
	groups = {cracky = 3, oddly_breakable_by_hand = 3},
	groups = {cracky = 3, stone = 1},
	drop = 'default:cobble',
	sounds = default.node_sound_stone_defaults(),
	light_source = default.LIGHT_MAX,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "cave_explorer:light",
	wherein        = "default:stone",
	clust_scarcity = 3 * 3 * 3,
	clust_num_ores = 5,
	clust_size     = 1,
	y_min          = -31000,
	y_max          = 31000,
})


