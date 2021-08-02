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
})