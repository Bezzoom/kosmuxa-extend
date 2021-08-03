data:extend({
-------------------------------------------------------------------------
-- Containers
-------------------------------------------------------------------------
---- Medium containers
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
		name = "whs-medium-active-provider-chest",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{"whs-medium-chest", 1},
			{"advanced-circuit", 5}
		},
		subgroup = "storage",
		order = "a[medium-active-provider-container]",
		result = "whs-medium-active-provider-chest"
	},
	{
		type = "recipe",
		name = "whs-medium-passive-provider-chest",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{"whs-medium-chest", 1},
			{"advanced-circuit", 5}
		},
		subgroup = "storage",
		order = "a[medium-passive-provider-container]",
		result = "whs-medium-passive-provider-chest"
	},
	{
		type = "recipe",
		name = "whs-medium-storage-chest",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{"whs-medium-chest", 1},
			{"advanced-circuit", 5}
		},
		subgroup = "storage",
		order = "a[medium-storage-container]",
		result = "whs-medium-storage-chest"
	},
	{
		type = "recipe",
		name = "whs-medium-buffer-chest",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{"whs-medium-chest", 1},
			{"advanced-circuit", 5}
		},
		subgroup = "storage",
		order = "a[medium-buffer-container]",
		result = "whs-medium-buffer-chest"
	},
	{
		type = "recipe",
		name = "whs-medium-requester-chest",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{"whs-medium-chest", 1},
			{"advanced-circuit", 5}
		},
		subgroup = "storage",
		order = "a[medium-requester-container]",
		result = "whs-medium-requester-chest"
	},
-------------------------------------------------------------------------
---- Big containers
-------------------------------------------------------------------------
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
	{
		type = "recipe",
		name = "whs-big-passive-provider-chest",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{"whs-big-chest", 1},
			{"advanced-circuit", 10},
			{"electronic-circuit", 10}
		},
		subgroup = "storage",
		order = "a[items]-d[big-chest]",
		result = "whs-big-passive-provider-chest"
	},
	{
		type = "recipe",
		name = "whs-big-storage-chest",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{"whs-big-chest", 1},
			{"advanced-circuit", 10},
			{"electronic-circuit", 10}
		},
		subgroup = "storage",
		order = "a[items]-d[big-chest]",
		result = "whs-big-storage-chest"
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
		category = "crafting-with-fluid",
		energy_required = 1,
		enabled = false,
		ingredients = 
		{
			{"express-transport-belt", 5},
			{"whs-fast-loader", 10},
			{type="fluid", name="lubricant", amount=50}
		},
		subgroup = "belt",
		result = "whs-express-loader"
	}
});