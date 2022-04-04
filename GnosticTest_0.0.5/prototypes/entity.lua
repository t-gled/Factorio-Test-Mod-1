
data:extend({

  { --nuclear furnace
    type = "furnace",
    name = "nuclear-furnace",
    icon = "__GnosticTest__/graphics/item/nuclear-furnace-icon.png",
    icon_size = 64, icon_mipmaps = 4,
    order = "c",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.6, mining_time = 1.2, result = "nuclear-furnace"},
    max_health = 500,
    corpse = "electric-furnace-remnants",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    rotate = false,
    orientation_to_variation = false,
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
          filename = "__GnosticTest__/graphics/entity/nuclear-furnace/nuclear-furnace-base.png",
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
              filename = "__GnosticTest__/graphics/entity/nuclear-furnace/nuclear-furnace-heater.png",
              priority = "high",
              width = 25,
              height = 15,
              frame_count = 12,
              animation_speed = 0.5,
              shift = {0.015625, 0.890625},
            },
            {
              filename = "__GnosticTest__/graphics/entity/nuclear-furnace/nuclear-furnace-light.png",
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
          filename = "__GnosticTest__/graphics/entity/nuclear-furnace/nuclear-furnace-ground-light.png",
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
  },
  { --nuclear inserter
    type = "inserter",
    name = "nuclear-inserter",
    icon = "__GnosticTest__/graphics/item/nuclear-inserter-icon.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    stack = true,
    minable = { mining_time = 0.1, result = "nuclear-inserter" },
    max_health = 160,
    corpse = "stack-inserter-remnants",
    dying_explosion = "stack-inserter-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    energy_per_movement = "20KJ",
    energy_per_rotation = "20KJ",
    energy_source = {
      type = "burner",
      fuel_inventory_size = 1,
      fuel_category = "nuclear",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.1,
    },
    energy_usage = (20).."kW",
    extension_speed = 0.1,
    rotation_speed = 0.1,
    fast_replaceable_group = "inserter",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound = { filename = "__base__/sound/inserter-fast-5.ogg", volume = 0.75 },
    hand_base_picture =
    {
      filename = "__GnosticTest__/graphics/entity/nuclear-inserter/nuclear-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34,
    },
    hand_closed_picture =
    {
      filename = "__GnosticTest__/graphics/entity/nuclear-inserter/nuclear-inserter-hand-closed.png",
      priority = "extra-high",
      width = 24,
      height = 41,
    },
    hand_open_picture =
    {
      filename = "__GnosticTest__/graphics/entity/nuclear-inserter/nuclear-inserter-hand-open.png",
      priority = "extra-high",
      width = 32,
      height = 41,
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 33,
    },
    hand_closed_shadow =
    {
      filename = "__base__/graphics/entity/stack-inserter/stack-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 24,
      height = 41,
    },
    hand_open_shadow =
    {
      filename = "__base__/graphics/entity/stack-inserter/stack-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 32,
      height = 41,
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__GnosticTest__/graphics/entity/nuclear-inserter/nuclear-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.09375, 0},
      }
    },
    circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
    circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance,
    default_stack_control_input_signal = inserter_default_stack_control_input_signal
  },
  { --biolab
    type = "assembling-machine",
    name = "biolab",
    icon = "__GnosticTest__/graphics/item/biolab-icon.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "lab"},
    max_health = 150,
    corpse = "lab-remnants",
    dying_explosion = "lab-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    working_visualisations =
    {
      {
        animation = {
          layers =
          {
            {
              filename = "__GnosticTest__/graphics/entity/biolab/biolab-base.png",
              width = 98,
              height = 87,
              frame_count = 33,
              line_length = 11,
              animation_speed = 1 / 3,
              shift = util.by_pixel(0, 1.5),
            },
            {
              filename = "__GnosticTest__/graphics/entity/biolab/biolab-integration.png",
              width = 122,
              height = 81,
              frame_count = 1,
              line_length = 1,
              repeat_count = 33,
              animation_speed = 1 / 3,
              shift = util.by_pixel(0, 15.5),
            },
            {
              filename = "__GnosticTest__/graphics/entity/biolab/biolab-light.png",
              blend_mode = "additive",
              draw_as_light = true,
              width = 106,
              height = 100,
              frame_count = 33,
              line_length = 11,
              animation_speed = 1 / 3,
              shift = util.by_pixel(-1, 1),
            },
            {
              filename = "__GnosticTest__/graphics/entity/biolab/biolab-shadow.png",
              width = 122,
              height = 68,
              frame_count = 1,
              line_length = 1,
              repeat_count = 33,
              animation_speed = 1 / 3,
              shift = util.by_pixel(13, 11),
              draw_as_shadow = true,
            },
          },
        },
      },
    },
    animation =
    {
      layers =
      {
        {
          filename = "__GnosticTest__/graphics/entity/biolab/biolab-base.png",
          width = 98,
          height = 87,
          frame_count = 1,
          shift = util.by_pixel(0, 1.5),
        },
        {
          filename = "__GnosticTest__/graphics/entity/biolab/biolab-integration.png",
          width = 122,
          height = 81,
          frame_count = 1,
          shift = util.by_pixel(0, 15.5),
        },
        {
          filename = "__GnosticTest__/graphics/entity/biolab/biolab-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
        }
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      audible_distance_modifier = 0.7,
      fade_in_ticks = 4,
      fade_out_ticks = 20
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    crafting_speed = 0.5,
    crafting_categories = {"biology"},
    energy_usage = "60kW",
    module_specification =
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.9}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
  },
  { --geothermal derrick
    type = "mining-drill",
    name = "geothermal-derrick",
    icon = "__GnosticTest__/graphics/item/geothermal-derrick-icon.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "geothermal-derrick"},
    resource_categories = {"geothermal-vent"},
    max_health = 250,
    corpse = "pumpjack-remnants",
    dying_explosion = "pumpjack-explosion",
    collision_box = {{ -1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    target_temperature = 250,
    energy_source =
    {
      type = "electric",
      emissions_per_minute = 6,
      usage_priority = "secondary-input"
    },
    output_fluid_box =
    {
      base_area = 10,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
        }
      }
    },
    energy_usage = "90kW",
    mining_speed = 1,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 2
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    base_render_layer = "lower-object-above-shadow",
    base_picture =
    {
      sheets =
      {
        {
          filename = "__GnosticTest__/graphics/entity/geothermal-derrick/geothermal-derrick-base.png",
          priority = "extra-high",
          width = 131,
          height = 137,
          shift = util.by_pixel(-2.5, -4.5),
        },
        {
          filename = "__base__/graphics/entity/pumpjack/pumpjack-base-shadow.png",
          priority = "extra-high",
          width = 110,
          height = 111,
          draw_as_shadow = true,
          shift = util.by_pixel(6, 0.5),
        }
      }
    },
    animations =
    {
      north =
      {
        layers =
        {
          {
            priority = "high",
            filename = "__GnosticTest__/graphics/entity/geothermal-derrick/geothermal-derrick.png",
            line_length = 8,
            width = 104,
            height = 102,
            frame_count = 40,
            shift = util.by_pixel(-4, -24),
            animation_speed = 0.5,
          },
          {
            priority = "high",
            filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead-shadow.png",
            animation_speed = 0.5,
            draw_as_shadow = true,
            line_length = 8,
            width = 155,
            height = 41,
            frame_count = 40,
            shift = util.by_pixel(17.5, 14.5),
          }
        }
      }
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/pumpjack.ogg",
          volume = 0.7
        },
      },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.6,
      fade_in_ticks = 4,
      fade_out_ticks = 10
    },
    fast_replaceable_group = "geothermal-derrick",
    circuit_wire_connection_points = circuit_connector_definitions["pumpjack"].points,
    circuit_connector_sprites = circuit_connector_definitions["pumpjack"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },

}
)