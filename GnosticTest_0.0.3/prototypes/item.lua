

-- nuclear furnace
local furnace = {
    type = "furnace",
    name = "nuclearfurnace",
    icon = "__GnosticTest__/graphics/furnace/nuclearfurnace.png",
    icon_size = 32, icon_mipmaps = 4,
    order = "c",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.6, mining_time = 1.2, result = "nuclearfurnace"},
    max_health = 300,
    corpse = "medium_remnants",
    dying_explosion = "medium_explosion",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1.0, 1.0}, {-1.0, 1.0}}, --2 wide and 2 tall (1 each direction from centre) same logic for collision box
    animation = {
        filename = "__GnosticTest__/graphics/furnace/nuclearfurnace.png",
        priority = "high",
        width = 32,
        height = 32,
        frame_count = 1,
        line_length = 1,
    },
    
    crafting_categories = {"smeltng"},
    crafting_speed = 5.0,
    energy_source = {
        type = "burner",
        fuel_inventory_size = 1,
        fuel_category = "nuclear",
        usage_priority = "secondary-input",
        emissions = 2,
    },

    energy_usage = (350).."kW",
    result_inventory_size = 1,
    source_inventory_size = 1,
}



