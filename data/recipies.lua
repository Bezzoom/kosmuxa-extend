data:extend({
-------------------------------------------------------------------------
-- Containers
-------------------------------------------------------------------------
	{
		type = "recipe",
		name = "whs-medium-chest",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{"steel-chest", 5},
			{"steel-plate", 5}
		},
		subgroup = "storage",
		order = "a[items]-d[medium-chest]",
		result = "whs-medium-chest"
	},
	{
		type = "recipe",
		name = "whs-big-chest",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{"whs-medium-chest", 10},
			{"steel-plate", 10}
		},
		subgroup = "storage",
		order = "a[items]-d[big-chest]",
		result = "whs-big-chest"
	},
-------------------------------------------------------------------------
-- Loaders
-------------------------------------------------------------------------
	{
		type = "recipe",
		name = "whs-loader",
		energy_required = 1,
		enabled = false,
		ingredients = 
		{
			{"transport-belt", 5},
			{"iron-gear-wheel", 10}
		},
		subgroup = "belt",
		result = "whs-loader"
	},
	{
		type = "recipe",
		name = "whs-fast-loader",
		energy_required = 1,
		enabled = false,
		ingredients = 
		{
			{"fast-transport-belt", 5},
			{"whs-loader", 2}
		},
		subgroup = "belt",
		result = "whs-fast-loader"
	},
	{
		type = "recipe",
		name = "whs-express-loader",
		energy_required = 1,
		enabled = false,
		ingredients = 
		{
			{"express-transport-belt", 5},
			{"whs-fast-loader", 10},
			{"lubricant", 50}
		},
		subgroup = "belt",
		result = "whs-express-loader"
	}
});