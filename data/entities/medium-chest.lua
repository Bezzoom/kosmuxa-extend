local hit_effects = require("__base__/prototypes/entity/hit-effects");
local sounds      = require("__base__/prototypes/entity/sounds");

data:extend({
	{
		type = 'container',
		name = 'whs-medium-chest',
		icon = '__kosmuxa-extend__/graphics/icons/medium-container.png',
		icon_size = 64,
		icon_mipmaps = 4,
		flags = {"placeable-player", "player-creation", "not-rotatable"},
		minable = {mining_time = 0.5, result = "whs-medium-chest"},
		max_health = 500,
		corpse = "big-remnants",
		collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
		selection_box = {{-1, -1}, {1, 1}},
		damaged_trigger_effect = hit_effects.entity(),
		resistances =
		{
			{type = "physical",percent = 30},
			{type = "fire",percent = 50},
			{type = "impact",percent = 50}
		},
		fast_replaceable_group = "container",
		inventory_size = 120,
		scale_info_icons = false,
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound = sounds.generic_impact,
		opened_duration = logistic_chest_opened_duration,
		picture =
		{
			filename = "__kosmuxa-extend__/graphics/sprites/medium-container.png",
			priority = "extra-high",
			width = 85,
			height = 85,
			hr_version =
			{
				filename = "__kosmuxa-extend__/graphics/sprites/hr-medium-container.png",
				priority = "extra-high",
				width = 340,
				height = 340,
				scale = 0.25
			}
		},
		circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
		circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
		circuit_wire_max_distance = default_circuit_wire_max_distance,
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
	}
})