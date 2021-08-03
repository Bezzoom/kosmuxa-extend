local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds      = require("__base__/prototypes/entity/sounds")

data:extend({
	{
	type = "logistic-container",
	name = "whs-big-passive-provider-chest",
	icon = "__kosmuxa-extend__/graphics/icons/big-passive-provider-container.png",
	icon_size = 64,
	icon_mipmaps = 4,
	flags = {"placeable-player", "player-creation", "not-rotatable"},
	minable = {mining_time = 1, result = "whs-big-passive-provider-chest"},
	max_health = 1500,
	corpse = "big-remnants",
	collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
	selection_box = {{-3, -3}, {3, 3}},
	damaged_trigger_effect = hit_effects.entity(),
	resistances =
	{
		{type = "physical",percent = 50},
		{type = "fire",percent = 75},
		{type = "impact",percent = 75}
	},
	fast_replaceable_group = "container",
	inventory_size = 500,
	scale_info_icons = false,
	logistic_mode = "passive-provider",
	open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
	close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
	vehicle_impact_sound = sounds.generic_impact,
	opened_duration = logistic_chest_opened_duration,
	animation =
	{
		filename = "__kosmuxa-extend__/graphics/sprites/big-passive-provider-container.png",
		priority = "extra-high",
		width = 213,
		height = 213,
		frame_count = 6,
		line_length = 2,
		scale = 1.2,
		hr_version =
		{
			filename = "__kosmuxa-extend__/graphics/sprites/hr-big-passive-provider-container.png",
			priority = "extra-high",
			width = 512,
			height = 512,
			frame_count = 6,
			line_length = 3,
			scale = 0.5
		}
	},

	water_reflection =
	{
		pictures =
		{
			filename = "__kosmuxa-extend__/graphics/sprites/big-container-reflection.png",
			priority = "extra-high",
			width = 60,
			height = 50,
			shift = util.by_pixel(0, 40),
			variation_count = 1,
			scale = 5,
		},
		rotate = false,
		orientation_to_variation = false
	},

	circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
	circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
	circuit_wire_max_distance = 20,
	open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
	close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
	}
})
