data:extend(
	{
-------------------------------------------------------------------------------
-- Containers
-------------------------------------------------------------------------------
---- Medium containers
-------------------------------------------------------------------------------
		{
			type = "item",
			name = "whs-medium-chest",
			icon = "__kosmuxa-extend__/graphics/icons/medium-container.png",
			icon_size = 64,
			icon_mipmaps = 4,
			localised_name = {"entity-name.whs-medium-chest"},
			localised_description = {"entity-description.whs-medium-chest"},
			subgroup = "storage",
			order = "a",
			stack_size = 25,
			place_result = "whs-medium-chest"
		},
		{
			type = "item",
			name = "whs-medium-active-provider-chest",
			icon = "__kosmuxa-extend__/graphics/icons/medium-active-provider-container.png",
			icon_size = 64,
			icon_mipmaps = 4,
			localised_name = {"entity-name.whs-medium-active-provider-chest"},
			localised_description = {"entity-description.whs-medium-active-provider-chest"},
			subgroup = "storage",
			order = "a",
			stack_size = 25,
			place_result = "whs-medium-active-provider-chest"
		},
		{
			type = "item",
			name = "whs-big-chest",
			icon = "__kosmuxa-extend__/graphics/icons/big-container.png",
			icon_size = 64,
			icon_mipmaps = 4,
			localised_name = {"entity-name.whs-big-chest"},
			localised_description = {"entity-description.whs-big-chest"},
			subgroup = "storage",
			order = "a",
			stack_size = 25,
			place_result = "whs-big-chest"
		},
-------------------------------------------------------------------------------
-- Loaders
-------------------------------------------------------------------------------
		{
			type = "item",
			name = "whs-loader",
			icon = "__kosmuxa-extend__/graphics/icons/whs-loader.png",
			icon_size = 64,
			icon_minimaps = 4,
			localised_name = {"entity-name.whs-loader"},
			localised_description = {"entity-description:whs-loader"},
			subgroup = "belt",
			order = "d[loader]-a1[whs-loader]",
			stack_size = 50,
			place_result = "whs-loader"
		},
		{
			type = "item",
			name = "whs-fast-loader",
			icon = "__kosmuxa-extend__/graphics/icons/whs-fast-loader.png",
			icon_size = 64,
			icon_minimaps = 4,
			localised_name = {"entity-name.whs-fast-loader"},
			localised_description = {"entity-description:whs-fast-loader"},
			subgroup = "belt",
			order = "d[loader]-a1[whs-fast-loader]",
			stack_size = 50,
			place_result = "whs-fast-loader"
		},
		{
			type = "item",
			name = "whs-express-loader",
			icon = "__kosmuxa-extend__/graphics/icons/whs-express-loader.png",
			icon_size = 64,
			icon_minimaps = 4,
			localised_name = {"entity-name.whs-express-loader"},
			localised_description = {"entity-description:whs-express-loader"},
			subgroup = "belt",
			order = "d[loader]-a1[whs-express-loader]",
			stack_size = 50,
			place_result = "whs-express-loader"
		}
	}
)