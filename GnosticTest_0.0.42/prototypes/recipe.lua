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
        enabled = "true",
        ingredients = {
            {"stack-inserter", 1}, {"processing-unit", 1}, {"steel-plate", 15}, {"advanced-circuit, 15"}
        },
        result = "nuclear-inserter",
    }

}
)
