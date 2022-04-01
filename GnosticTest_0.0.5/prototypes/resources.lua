data:extend({

    { --cinnabar ore
        type = "resource",
        name = "cinnabar",
        icon = "__GnosticTest__/graphics/resources/cinnabar/cinnabar.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral"},
        order = "a-b-e",
        has_starting_area_placement = false,
        minable = {hardness = 0.6, mining_time = 2, result = "cinnabar"},
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = {
            control = "cinnabar",
            sharpness = 1,
            richness_multiplier = 1000,
            richness_multiplier_distance_bonus = 40,
            richness_base = 400,
            coverage = 0.001,
            peaks = {
                {
                    noise_layer = "cinnabar",
                    noise_octaves_difference = -1.5,
                    noise_persistence = 0.3,
                },
                {
                    influence = -1.0,
                    starting_area_weight_optimal = 1,
                    starting_area_weight_range = 0,
                    starting_area_weight_max_range = 2,
                },
            },
        },
        stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
        stages = {
            sheet = {
                filename = "__GnosticTest__/graphics/resources/cinnabar/cinnabar-ore.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                frame_count = 8,
                variation_count = 8,
            }
        },
        map_color = {r = 227, g = 66, b = 52},
    },

}
)