data:extend({

    { --nuclear furnace
        type = "recipe",
        name = "nuclear-furnace",
        enabled = false,
        ingredients = {
            {"steel-plate", 25}, {"refined-concrete", 20}, {"processing-unit", 5}
        },
        result = "nuclear-furnace",
    },
    { --nuclear inserter
        type = "recipe",
        name = "nuclear-inserter",
        enabled = false,
        ingredients = {
            {"stack-inserter", 1}, {"processing-unit", 1}, {"steel-plate", 15}, {"advanced-circuit", 15}
        },
        result = "nuclear-inserter",
    },
    { --liquid mercury
        type = "recipe",
        name = "liquid-mercury",
        category = "chemistry",
        enabled = false,
        energy_required = 3,
        ingredients = {
            {type = "item", name = "cinnabar", amount = 10},
        },
        results = {
            {type = "fluid", name ="liquid-mercury", amount = 60},
        },
        subgroup = "fluid-recipes",
        crafting_machine_tint = {
            primary = {r = 67, g = 71, b = 74},
            secondary = {r = 61, g = 12, b = 12},
            tertiary = {r = 74, g = 70, b = 70},
            quaternary = {r = 74, g = 61, b = 61},
        },
    },
    { --salt using mercury (calomel-electrodes)
        type = "recipe",
        name = "salt-calomel",
        category = "chemistry",
        enabled = false,
        energy_required = 5,
        ingredients = {
            {type = "fluid", name = "water", amount = 100},
            {type = "fluid", name = "liquid-mercury", amount = 5},
        },
        results = {
            {type = "item", name = "salt", amount = 5},
        },
        subgroup = "fluid-recipes",
        icon = "__GnosticTest__/graphics/recipe/salt-calomel.png",
        icon_size = 64, icon_mipmaps = 4,
        crafting_machine_tint = {
            primary = {r = 205, g = 210, b = 202},
            secondary = {r = 0, g = 105, b = 148},
            tertiary = {r = 112, g = 128, b = 144},
            quaternary = {r = 141, g = 166, b = 191},
        },
    },
    { --salt using evaporation (salt-refining)
        type = "recipe",
        name = "salt-evaporate",
        category = "chemistry",
        enabled = false,
        energy_required = 10,
        ingredients = {
            {type = "fluid", name = "water", amount = 150},
        },
        results = {
            {type = "item", name = "salt", amount = 5},
        },
        subgroup = "fluid-recipes",
        crafting_machine_tint = {
            primary = {r = 214, g = 235, b = 255},
            secondary = {r = 159, g = 207, b = 251},
            tertiary = {r = 244, g = 229, b = 229},
            quaternary = {r = 208, g = 224, b = 227},
        },
    },
    { --molten salt
        type = "recipe",
        name = "molten-salt",
        category = "chemistry",
        enabled = true,
        energy_required = 12,
        ingredients = {
            {type = "item", name = "salt", amount = 10},
        },
        results = {
            {type = "fluid", name = "molten-salt", amount = 10},
        },
        subgroup = "fluid-recipes",
        crafting_machine_tint = {
            primary = {r = 255, g = 122, b = 50},
            secondary = {r = 176, g = 32, b = 16},
            tertiary = {r = 255, g = 90, b = 0},
            quaternary = {r = 199, g = 36, b = 18},
        },
    },
    { --molten salt fuel cell
        type = "recipe",
        name = "molten-salt-fuel-cell",
        category = "crafting-with-fluid",
        enabled = true,
        energy_required = 20,
        ingredients = {
            {type = "fluid", name = "molten-salt", amount = 100},
            {type = "item", name = "uranium-235", amount = 2},
            {type = "item", name = "uranium-238", amount = 13},
            {type = "item", name = "iron-plate", amount = 10},
        },
        result = "molten-salt-fuel-cell",
    },
    { --depleted molten salt fuel cell reprocessing
        type = "recipe",
        name = "molten-salt-reprocessing",
        energy_required = 75,
        enabled = true,
        category = "centrifuging",
        ingredients = {
            {"depleted-molten-salt-fuel-cell", 5},
        }, 
        main_product = "",
        results = {
            {"salt", 10}, {"uranium-238", 3},
        },
        icon = "__GnosticTest__/graphics/recipe/molten-salt-reprocessing.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        order = "s[molten-salt-fuel-cell]-b[molten-salt-reprocessing]",
        
        allow_decomposition = false,
    },

}
)
