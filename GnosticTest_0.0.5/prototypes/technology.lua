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
    { --cinnabar processing / mercury refining
        type = "technology",
        name="cinnabar-processing",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__GnosticTest__/graphics/technology/cinnabar-processing.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "liquid-mercury",
            },
        },
        prerequisites = {"oil-processing", "advanced-material-processing"},
        unit = {
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
            },
            time = 30,
            count = 125,
        },  
    },
    { --calomel electrodes (salt production using mercury)
        type = "technology",
        name = "calomel-electrodes",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__GnosticTest__/graphics/technology/calomel-electrodes.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "salt-calomel",
            },
        },
        prerequisites = {"cinnabar-processing", "salt-refining", "chemical-science-pack"},
        unit = {
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1}
            },
            time = 30,
            count = 75,
        },
    },
    { --salt refining (salt production using evaporation)
        type = "technology",
        name = "salt-refining",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__GnosticTest__/graphics/technology/salt-refining.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "salt-evaporate",
            },
        },
        prerequisites = {"oil-processing"},
        unit = {
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
            },
            time = 30,
            count = 50,
        },
    },
    { --molten salt 
        type = "technology",
        name = "molten-salt-tech",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__GnosticTest__/graphics/technology/molten-salt-tech.png",
        effects = {
            {type = "unlock-recipe", recipe = "molten-salt"},
            {type = "unlock-recipe", recipe = "downs-cell"},
        },
        prerequisites = {"calomel-electrodes","production-science-pack"},
        unit = {
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
            },
            time = 30,
            count = 200,
        },
    },
    { --molten salt fuel cell (advanced nuclear fuels)
        type = "technology",
        name = "advanced-nuclear-fuels",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__GnosticTest__/graphics/technology/advanced-nuclear-fuels.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "molten-salt-fuel-cell",
            },
        },
        prerequisites = {"molten-salt-tech", "nuclear-power"},
        unit = {
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
            },
            time = 30,
            count = 1500,
        },
    },
    { --depleted molten salt fuel cell reprocessing
        type = "technology",
        name = "molten-salt-reprocessing-tech",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__GnosticTest__/graphics/technology/molten-salt-reprocessing-tech.png",
        effects = {
            {
                type = "unlock-recipe",
                recipe = "molten-salt-reprocessing"
            },
        },
        prerequisites = {"advanced-nuclear-fuels", "nuclear-fuel-reprocessing"},
        unit = {
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
            },
            time = 30,
            count = 75,
        },
    },
    { --biolab
        type = "technology",
        name = "biology",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__GnosticTest__/graphics/technology/biology.png",
        effects = {
            {type = "unlock-recipe", recipe = "biolab"},
            {type = "unlock-recipe", recipe = "fish-liquefaction"},
            {type = "unlock-recipe", recipe = "offal-separation"},
        },
        prerequisites = {"research-speed-1"},
        unit = {
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
            },
            time = 30,
            count = 100,
        },
    },
}
)