local color = require("__kosmuxa-extend__/utils.lua")

local loader_names =
{
	[1] = "whs-loader",
	[2] = "whs-fast-loader",
	[3] = "whs-express-loader"
}

function createWHSLoader(data)
	local name = data.name
	local speed = data.speed
	local icon = data.icon or "__kosmuxa-extend__/graphics/icons/" .. name .. ".png"
	local icon_size = data.icon_size or 64
	local icon_mipmaps = data.icon_mipmaps or 4
	local belt_animation_set = data.belt_animation_set
	local order = data.order
	local upgrade = data.upgrade or nil
	local loader_tint = data.tint or {r=1.0, g=1.0, b=1.0}
	local rust_layer_direction_in, rust_layer_direction_out = nil, nil
	if data.apply_rust ~= false then
		rust_layer_direction_in =
		{
			filename = "__kosmuxa-extend__/graphics/sprites/loader/whs-loader-rust.png",
			priority = "extra-high",
			shift = {0.15625, 0.0703125},
			width = 53,
			height = 43,
			y = 43,
			hr_version =
			{
				filename = "__kosmuxa-extend__/graphics/sprites/loader/hr-whs-loader-rust.png",
				priority = "extra-high",
				shift = {0.15625, 0.0703125},
				width = 106,
				height = 85,
				y = 85,
				scale = 0.5
			}
		}
		rust_layer_direction_out =
		{
			filename = "__kosmuxa-extend__/graphics/sprites/loader/whs-loader-rust.png",
			priority = "extra-high",
			shift = {0.15625, 0.0703125},
			width = 53,
			height = 43,
			hr_version =
			{
				filename = "__kosmuxa-extend__/graphics/sprites/loader/hr-whs-loader-rust.png",
				priority = "extra-high",
				shift = {0.15625, 0.0703125},
				width = 106,
				height = 85,
				scale = 0.5
			}
		}
    end

	return
    {
		type = "loader-1x1",
		name = name,
		icon = icon,
		icon_size = icon_size,
		icon_mipmaps = icon_mipmaps,
		flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
		minable = {mining_time = 0.25, result = name},
		max_health = 300,
		filter_count = 5,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-0.4, -0.45}, {0.4, 0.45}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		drawing_box = {{-0.4, -0.4}, {0.4, 0.4}},
		animation_speed_coefficient = 32,
		container_distance = 0.75, --Default: 1.5
		-- belt_distance = 0.0, --Default1x1: 0.0  --Default2x1: 0.5
		belt_length = 0.20, -- Default: 0.5
		structure_render_layer = "object",
		-- structure_render_layer = "transport-belt-circuit-connector", --Default:"lower-object"
		belt_animation_set = belt_animation_set,
		fast_replaceable_group = "transport-belt",
		next_upgrade = upgrade,
		speed = speed,
		-- for space exploration compatibility
		se_allow_in_space = data.se_allow_in_space,
		structure =
		{
			direction_in =
			{
				sheets =
				{
					{
						filename = "__kosmuxa-extend__/graphics/sprites/loader/whs-loader.png",
						priority = "extra-high",
						shift = {0.15625, 0.0703125},
						width = 53,
						height = 43,
						y = 43,
						hr_version =
						{
							filename = "__kosmuxa-extend__/graphics/sprites/loader/hr-whs-loader.png",
							priority = "extra-high",
							shift = {0.15625, 0.0703125},
							width = 106,
							height = 85,
							y = 85,
							scale = 0.5
						}
					},
					{
						filename = "__kosmuxa-extend__/graphics/sprites/loader/whs-loader-mask.png",
						priority = "extra-high",
						shift = {0.15625, 0.0703125},
						width = 53,
						height = 43,
						y = 43,
						tint = loader_tint,
						hr_version =
						{
							filename = "__kosmuxa-extend__/graphics/sprites/loader/hr-whs-loader-mask.png",
							priority = "extra-high",
							shift = {0.15625, 0.0703125},
							width = 106,
							height = 85,
							y = 85,
							scale = 0.5,
							tint = loader_tint
						}
					},
					rust_layer_direction_in
				}
			},
			direction_out =
			{
				sheets =
				{
					{
						filename = "__kosmuxa-extend__/graphics/sprites/loader/whs-loader.png",
						priority = "extra-high",
						shift = {0.15625, 0.0703125},
						width = 53,
						height = 43,
						hr_version =
						{
							filename = "__kosmuxa-extend__/graphics/sprites/loader/hr-whs-loader.png",
							priority = "extra-high",
							shift = {0.15625, 0.0703125},
							width = 106,
							height = 85,
							scale = 0.5
						}
					},
					{
						filename = "__kosmuxa-extend__/graphics/sprites/loader/whs-loader-mask.png",
						priority = "extra-high",
						shift = {0.15625, 0.0703125},
						width = 53,
						height = 43,
						tint = loader_tint,
						hr_version =
						{
							filename = "__kosmuxa-extend__/graphics/sprites/loader/hr-whs-loader-mask.png",
							priority = "extra-high",
							shift = {0.15625, 0.0703125},
							width = 106,
							height = 85,
							scale = 0.5,
							tint = loader_tint
						}
					},
					rust_layer_direction_out
				}
			}
		},
		order = order
	}
	end

local entities =
{
	createWHSLoader
	{
		name = loader_names[1],
		speed = data.raw["transport-belt"]["transport-belt"].speed,
		upgrade = loader_names[2],
		belt_animation_set = data.raw["transport-belt"]["transport-belt"].belt_animation_set,
		tint = color.convert(249, 207, 70) -- 220, 190, 90
	},
	createWHSLoader
	{
		name = loader_names[2],
		speed = data.raw["transport-belt"]["fast-transport-belt"].speed,
		upgrade = loader_names[3],
		belt_animation_set = data.raw["transport-belt"]["fast-transport-belt"].belt_animation_set,
		tint = color.convert(228, 24, 38) -- 210, 70, 80
	},
	createWHSLoader
	{
		name = loader_names[3],
		speed = data.raw["transport-belt"]["express-transport-belt"].speed,
		upgrade = loader_names[4],
		belt_animation_set = data.raw["transport-belt"]["express-transport-belt"].belt_animation_set,
		tint = color.convert(90, 190, 220)
	}
}

data:extend(entities)
