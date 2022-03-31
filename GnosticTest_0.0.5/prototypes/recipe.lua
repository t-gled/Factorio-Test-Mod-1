data:extend({

    { --nuclear furnace
        type = "recipe",
        name = "nuclear-furnace",
        enabled = "false",
        ingredients = {
            {"steel-plate", 25}, {"refined-concrete", 20}, {"processing-unit", 5}
        },
        result = "nuclear-furnace",
    },
    { --nuclear inserter
        type = "recipe",
        name = "nuclear-inserter",
        enabled = "false",
        ingredients = {
            {"stack-inserter", 1}, {"processing-unit", 1}, {"steel-plate", 15}, {"advanced-circuit", 15}
        },
        result = "nuclear-inserter",
    },
    { --liquid mercury
        type = "recipe",
        name = "liquid-mercury",
        category = "chemistry",
        enabled = true,
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

}
)
