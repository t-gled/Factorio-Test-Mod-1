data:extend({
    
    { --nuclear furnace
        type = "technology",
        name = "advanced-material-processing-3",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__GnosticTest__/graphics/technology/advanced-material-processing-3.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "nuclear-furnace",
            },
        },
        prerequisites = {"advanced-material-processing-2", "kovarex-enrichment-process"},
        unit = {
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
            },
            time = 30,
            count = 750,

        }   
    },

    { -- nuclear inserter
        type = "technology",
        name = "nuclear-inserter",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__GnosticTest__/graphics/technology/nuclear-inserter-tech.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "nuclear-inserter",
            },
        },
        prerequisites = {"inserter-capacity-bonus-3", "kovarex-enrichment-process"},
        unit = {
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
            },
            time = 30,
            count = 300,

        }
    },

}
)