data:extend({

    { -- liquid mercury
        type = "fluid",
        name = "liquid-mercury",
        default_temperature = 25,
        max_temperature = 100,
        heat_capacity = "126J",
        base_color = {r = 116, g = 123, b = 129},
        flow_color = {r = 116, g = 123, b = 129},
        icon = "__GnosticTest__/graphics/fluids/mercury.png",
        icon_size = 64, icon_mipmaps = 4,
        order = "a[fluids]-g[liquid-mercury]",
    },

}
)