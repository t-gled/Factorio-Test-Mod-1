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
        enabled = false,
        energy_required = 12,
        ingredients = {
            {type = "item", name = "salt", amount = 10},
        },
        results = {
            {type = "fluid", name = "molten-salt", amount = 15},
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
        enabled = false,
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
        enabled = false,
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
    { --Downs cell sodium production from molten salt/ molten salt electrolysis
        type = "recipe",
        name = "downs-cell",
        category = "chemistry",
        enabled = false,
        energy_required = 3.6,
        ingredients = {
            {type = "fluid", name = "molten-salt", amount = 20},
            {type = "item", name = "iron-plate", amount = 1},
        },
        results = {
            {type = "item", name = "sodium", amount = 10},
            {type = "fluid", name = "chlorine", amount = 5},
        },
        subgroup = "fluid-recipes",
        icon = "__GnosticTest__/graphics/recipe/downs-cell.png",
        icon_size = 64, icon_mipmaps = 4,
        crafting_machine_tint = {
            primary = {r = 255, g = 147, b = 51},
            secondary = {r = 155, g = 76, b = 16},
            tertiary = {r = 255, g = 196, b = 0},
            quaternary = {r = 255, g = 239, b = 0},
        },
    },
    { --biolab
    type = "recipe",
    name = "biolab",
    enabled = false,
    ingredients = {
        {"iron-plate", 10}, {"copper-cable", 5}, {"electronic-circuit", 10},
    },
    result = "biolab",
    },
    { --offal / fish bones (fish liquefaction)
        type = "recipe",
        name = "fish-liquefaction",
        category = "biology",
        enabled = false,
        energy_required = 1,
        ingredients = {
            {type = "item", name = "raw-fish", amount = 1},
        },
        results ={
            {type = "item", name = "offal", amount = 5},
            {type = "item", name = "fish-bones", amount = 1},
        },
        icon = "__GnosticTest__/graphics/recipe/fish-liquefaction.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "raw-material",
        order = "h[fish-liquefaction]",
    },
    { --biological waste / fish extract
        type = "recipe",
        name = "offal-separation",
        category = "chemistry",
        enabled = false,
        energy_required = 20,
        main_product = "fish-extract",
        ingredients = {
            {type = "item", name = "offal", amount = 50},
        },
        results = {
            {type = "fluid", name = "fish-extract", amount = 500},
            {type = "item", name = "biological-waste", amount = 50},
        },
        subgroup = "fluid-recipes",
        order = "c[fish-extract]",
        crafting_machine_tint = {
            primary = {r = 250, g = 128, b = 114},
            secondary = {r = 249, g = 106, b = 89},
            tertiary = {r = 240, g = 128, b = 128},
            quaternary = {r = 246, g = 178, b = 178},
        },

    },
    { --water electrolysis (hydrogen and oxygen)
        type = "recipe",
        name = "water-electrolysis",
        category = "chemistry",
        enabled = true,
        energy_required = 8,
        ingredients = {
            {type = "fluid", name = "water", amount = 20},
        },
        results = {
            {type = "fluid", name = "hydrogen", amount = 10},
            {type = "fluid", name = "oxygen", amount = 10}
        },
        icon = "__GnosticTest__/graphics/recipe/water-electrolysis.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "fluid-recipes",
        crafting_machine_tint = {
            primary = {r = 82, g = 180, b = 217},
            secondary = {r = 98, g = 171, b = 199},
            tertiary = {r = 201, g = 208, b = 209},
            quaternary = {r = 210, g = 219, b = 220},
        },
    },
}
)
