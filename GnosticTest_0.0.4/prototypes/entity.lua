
data:extend{{

    {   -- nuclear furnace
        type = "furnace",
        name = "nuclear-furnace",
        icon = "__GnosticTest__/graphics/furnace/nuclear-furnace.png",
        icon_size = 64, icon_mipmaps = 4,
        order = "c",
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {hardness = 0.6, mining_time = 1.2, result = "nuclear-furnace"},
        max_health = 500,
        corpse = "steel-furnace-remnants",
        dying_explosion = "steel-furnace-explosion",
        collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
        selection_box = {{-1.0, 1.0}, {-1.0, 1.0}}, --2 wide and 2 tall (1 each direction from centre) same logic for collision box
        vehicle_impact_sound = sounds.generic_impact,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        working_sound =
        {
          sound =
          {
            {
              filename = "__base__/sound/steel-furnace.ogg",
              volume = 0.46
            }
          },
          max_sounds_per_type = 4,
          audible_distance_modifier = 0.37,
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        animation = {
            filename = "__GnosticTest__/graphics/furnace/nuclearfurnace.png",
            priority = "high",
            width = 32,
            height = 32,
            frame_count = 1,
            line_length = 1,
        },
        crafting_categories = {"smelting"},
        crafting_speed = 5.0,
        energy_source = {
            type = "burner",
            fuel_inventory_size = 1,
            fuel_category = "nuclear",
            usage_priority = "secondary-input",
            emissions_per_minute = 3.5,
            light_flicker =
            {
            color = {0,120,0},
            minimum_intensity = 0.6,
            maximum_intensity = 0.95
            },
            smoke =
            {
                {
                    name = "smoke",
                    frequency = 10,
                    position = {0.7, -1.2},
                    starting_vertical_speed = 0.08,
                    starting_frame_deviation = 60
                },
            },
        },

        energy_usage = (350).."kW",
        result_inventory_size = 1,
        source_inventory_size = 1,
    }

}}