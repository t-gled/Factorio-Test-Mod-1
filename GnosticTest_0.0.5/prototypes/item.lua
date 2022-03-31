data:extend({

    { --nuclear furnace
        type = "item",
        name = "nuclear-furnace",
        icon = "__GnosticTest__/graphics/nuclear-furnace/nuclear-furnace-icon.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "smelting-machine",
        place_result = "nuclear-furnace",
        stack_size = 50,
        order = "d",
    },
    { --nuclear inserter
        type = "item",
        name = "nuclear-inserter",
        icon = "__GnosticTest__/graphics/nuclear-inserter/nuclear-inserter-icon.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "inserter",
        place_result = "nuclear-inserter",
        stack_size = 50,
        order = "h",
    },
    { --cinnabar ore
        type = "item",
        name = "cinnabar",
        icon ="__GnosticTest__/graphics/cinnabar/cinnabar.png",
        icon_size = 64, icon_mipmaps =4,
        pictures = {
            {size = 64, filename = "__GnosticTest__/graphics/cinnabar/cinnabar.png", scale = 0.25, mipmap_count = 4},
            {size = 64, filename = "__GnosticTest__/graphics/cinnabar/cinnabar-1.png", scale = 0.25, mipmap_count = 4},
            {size = 64, filename = "__GnosticTest__/graphics/cinnabar/cinnabar-2.png", scale = 0.25, mipmap_count = 4},
            {size = 64, filename = "__GnosticTest__/graphics/cinnabar/cinnabar-3.png", scale = 0.25, mipmap_count = 4},
        },
        subgroup ="raw-resource",
        stack_size = 50,
        order = "h[cinnabar]",
    }

}
)