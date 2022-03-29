
data:extend({

  { -- NUCLEAR FURNACE
    type = "furnace",
    name = "nuclear-furnace",
    icon = "__GnosticTest__/graphics/furnace/nuclear-furnace-icon.png",
    icon_size = 64, icon_mipmaps = 4,
    order = "c",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.6, mining_time = 1.2, result = "nuclear-furnace"},
    max_health = 500,
    corpse = "electric-furnace-remnants",
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
          filename = "__base__/sound/electric-furnace.ogg",
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
      layers =
      {
        {
          filename = "__GnosticTest__/graphics/furnace/nuclear-furnace-base.png",
          priority = "high",
          width = 129,
          height = 100,
          frame_count = 1,
          shift = {0.421875, 0},
        },
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-shadow.png",
          priority = "high",
          width = 129,
          height = 100,
          frame_count = 1,
          shift = {0.421875, 0},
          draw_as_shadow = true,
        }
      }
    },
    working_visualisations =
    {
      {
        draw_as_light = true,
        fadeout = true,
        animation =
        {
          layers =
          {
            {
              filename = "__GnosticTest__/graphics/furnace/nuclear-furnace-heater.png",
              priority = "high",
              width = 25,
              height = 15,
              frame_count = 12,
              animation_speed = 0.5,
              shift = {0.015625, 0.890625},
            },
            {
              filename = "__GnosticTest__/graphics/furnace/nuclear-furnace-light.png",
              blend_mode = "additive",
              width = 104,
              height = 102,
              repeat_count = 12,
              shift = util.by_pixel(0, 0),
            },
          }
        },
      },
      {
        draw_as_light = true,
        draw_as_sprite = false,
        fadeout = true,
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/nuclear-furnace-ground-light.png",
          blend_mode = "additive",
          width = 82,
          height = 64,
          shift = util.by_pixel(4, 68),
        },
      },
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {-0.671875, -0.640625},
        }
      },
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {0.0625, -1.234375},
        }
      }
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
    --modules
    module_specification =
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
  }

}
)