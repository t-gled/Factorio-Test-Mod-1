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
            coverage = 0.00065,
            peaks = {
                {
                    noise_layer = "cinnabar",
                    noise_octaves_difference = -1.5,
                    noise_persistence = 0.3,
                },
                {
                    influence = -1.1,
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
    { --geothermal vent (steam) / geyser
        type = "resource",
        name = "geothermal-vent",
        icon = "__GnosticTest__/graphics/resources/geothermal-vent/geothermal-vent-icon.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral"},
        category = "geothermal-vent",
        subgroup = "raw-resource",
        order = "c-a",
        has_starting_area_placement = true,
        infinite = true,
        highlight = true,
        minimum = 160000,
        normal = 500000,
        infinite_depletion_amount = 6,
        resource_patch_search_radius = 12,
        tree_removal_probability = 0.7,
        tree_removal_max_distance = 32 * 32,
        minable = {
            mining_time = 1,
            results = {
                    {type = "fluid", name = "steam", amount_min = 20, amount_max = 30, probability = 1, temperature = 200},            },
        },
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
        autoplace =
        {
            control = "geothermal-vent",
            sharpness = 1,
            max_probability = 0.0075,
            richness_base = 130000,
            richness_multiplier = 300000,
            richness_multiplier_distance_bonus = 2000,
            coverage = 0.0004,
            peaks =
            {
            {
                noise_layer = "geothermal-vent",
                noise_octaves_difference = -1.3,
                noise_persistence = 0.2,
            }
            }
        },
        stage_counts = {0},
        stages  ={
            sheet = {
                filename = "__GnosticTest__/graphics/resources/geothermal-vent/geothermal-vent.png",
                priority = "extra-high",
                width = 74,
                height = 60,
                frame_count = 4,
                variation_count = 1,
                shift = util.by_pixel(0, -2),
            },
        },
        map_color = {r = 210, g = 219, b = 220},
        map_grid = false
    },

}
)