data:extend({
	{
		type = 'technology',
		name = 'whs-big-chests',
		icon = '__kosmuxa-extend__/graphics/icons/containers.png',
		icon_size = 256,
		icon_mipmaps = 4,
		effects = {
			{
				type = "unlock-recipe",
				recipe = "whs-medium-chest"
			},
			{
				type = "unlock-recipe",
				recipe = "whs-big-chest"
			}
		},
		prerequisites = {"steel-processing"},
		unit = {
			count = 100,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 30
		},
	}
});

data.raw['technology']['logistics'].effects = {
	{
		type = "unlock-recipe",
		recipe = "underground-belt"
	},
	{
		type = "unlock-recipe",
		recipe = "splitter"
	},
	{
		type = "unlock-recipe",
		recipe = "whs-loader"
	}
};

data.raw['technology']['logistics-2'].effects = {
	{
		type = "unlock-recipe",
		recipe = "fast-transport-belt"
	},
	{
		type = "unlock-recipe",
		recipe = "fast-underground-belt"
	},
	{
		type = "unlock-recipe",
		recipe = "fast-splitter"
	},
	{
		type = "unlock-recipe",
		recipe = "whs-fast-loader"
	}
};

data.raw['technology']['logistics-3'].effects = {
	{
		type = "unlock-recipe",
		recipe = "express-transport-belt"
	},
	{
		type = "unlock-recipe",
		recipe = "express-underground-belt"
	},
	{
		type = "unlock-recipe",
		recipe = "express-splitter"
	},
	{
		type = "unlock-recipe",
		recipe = "whs-express-loader"
	}
};

data.raw['technology']['logistic-robotics'].effects = {
	{
		type = "unlock-recipe",
		recipe = "roboport"
	},
	{
		type = "unlock-recipe",
		recipe = "logistic-chest-passive-provider"
	},
	{
		type = "unlock-recipe",
		recipe = "logistic-chest-storage"
	},
	{
		type = "unlock-recipe",
		recipe = "whs-medium-passive-provider-chest"
	},
	{
		type = "unlock-recipe",
		recipe = "whs-medium-storage-chest"
	},
	{
		type = "unlock-recipe",
		recipe = "whs-big-passive-provider-chest"
	},
	{
		type = "unlock-recipe",
		recipe = "whs-big-storage-chest"
	},
	{
		type = "unlock-recipe",
		recipe = "logistic-robot"
	},
	{
		type = "character-logistic-requests",
		modifier = true
	},
	{
		type = "character-logistic-trash-slots",
		modifier = 30
	}
}

data.raw['technology']['logistic-system'].effects = {
	{
		type = "unlock-recipe",
		recipe = "logistic-chest-active-provider"
	},
	{
		type = "unlock-recipe",
		recipe = "logistic-chest-requester"
	},
	{
		type = "unlock-recipe",
		recipe = "logistic-chest-buffer"
	},
	{
		type = "unlock-recipe",
		recipe = "whs-medium-passive-provider-chest"
	},
	{
		type = "unlock-recipe",
		recipe = "whs-medium-buffer-chest"
	},
	{
		type = "unlock-recipe",
		recipe = "whs-medium-requester-chest"
	}
}