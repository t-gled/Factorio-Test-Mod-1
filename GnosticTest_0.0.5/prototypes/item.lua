data:extend({

    { --nuclear furnace
        type = "item",
        name = "nuclear-furnace",
        icon = "__GnosticTest__/graphics/entity/nuclear-furnace/nuclear-furnace-icon.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "smelting-machine",
        place_result = "nuclear-furnace",
        stack_size = 50,
        order = "d",
    },
    { --nuclear inserter
        type = "item",
        name = "nuclear-inserter",
        icon = "__GnosticTest__/graphics/entity/nuclear-inserter/nuclear-inserter-icon.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "inserter",
        place_result = "nuclear-inserter",
        stack_size = 50,
        order = "h",
    },
    { --cinnabar ore
        type = "item",
        name = "cinnabar",
        icon = "__GnosticTest__/graphics/resources/cinnabar/cinnabar.png",
        icon_size = 64, icon_mipmaps = 4,
        pictures = {
            {size = 64, filename = "__GnosticTest__/graphics/resources/cinnabar/cinnabar.png", scale = 0.25, mipmap_count = 4},
            {size = 64, filename = "__GnosticTest__/graphics/resources/cinnabar/cinnabar-1.png", scale = 0.25, mipmap_count = 4},
            {size = 64, filename = "__GnosticTest__/graphics/resources/cinnabar/cinnabar-2.png", scale = 0.25, mipmap_count = 4},
            {size = 64, filename = "__GnosticTest__/graphics/resources/cinnabar/cinnabar-3.png", scale = 0.25, mipmap_count = 4},
        },
        subgroup ="raw-resource",
        stack_size = 50,
        order = "h[cinnabar]",
    },
    { --salt
        type = "item",
        name = "salt",
        icon = "__GnosticTest__/graphics/item/salt.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "raw-material",
        stack_size = 100,
        order = "h[salt]",
    },
    { --molten salt fuel cell
        type = "item",
        name = "molten-salt-fuel-cell",
        icon = "__GnosticTest__/graphics/item/molten-salt-fuel-cell.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        stack_size = 50,
        order = "r[uranium-processing]-h[molten-salt-fuel-cell]",   
        fuel_category = "nuclear", --fuel type and value
        burnt_result = "depleted-molten-salt-fuel-cell",
        fuel_value = "20GJ",
        pictures = {
            layers = {
                {
                    size = 64,
                    filename = "__GnosticTest__/graphics/item/molten-salt-fuel-cell.png",
                    scale = 0.25,
                    mipmap_count = 4,
                },
                {
                    draw_as_light = true,
                    flags = {"light"},
                    size = 64,
                    filename = "__GnosticTest__/graphics/item/molten-salt-fuel-cell-light.png",
                    scale = 0.25,
                    mipmap_count = 4,
                },
            },
        },
    },
    { --depleted molten salt fuel cell
        type = "item",
        name = "depleted-molten-salt-fuel-cell",
        icon = "__GnosticTest__/graphics/item/depleted-molten-salt-fuel-cell.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "intermediate-product",
        stack_size = 50,
        order = "r[uranium-processing]-i[molten-salt-fuel-cell]",
    },

}
)