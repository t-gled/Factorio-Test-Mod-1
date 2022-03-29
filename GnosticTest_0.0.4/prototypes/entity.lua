
data:extend({

  { -- NUCLEAR FURNACE
    type = "furnace",
    name = "nuclear-furnace",
    icon = "__GnosticTest__/graphics/furnace/nuclear-furnace.png",
    icon_size = 64, icon_mipmaps = 4,
    order = "c",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.6, mining_time = 1.2, result = "nuclear-furnace"},
    max_health = 500,
    corpse = "steel-furnace-remnants",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}}, 
    --sounds
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
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
    --animations (1 frame = no animation atm)
    animation = {
        filename = "__GnosticTest__/graphics/furnace/nuclear-furnace.png",
        priority = "high",
        width = 32,
        height = 32,
        frame_count = 1, --1 frame i.e no animation atm
        line_length = 1,
    },
    --crafting speed, smoke, lights and energy
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

}
)