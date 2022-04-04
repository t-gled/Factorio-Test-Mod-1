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
    { --molten salt
        type = "fluid",
        name = "molten-salt",
        default_temperature = 800,
        max_temperature = 1450,
        heat_capacity = "860J",
        base_color = {r = 229, g = 81, b = 0},
        flow_color = {r= 255, g = 122, b =50},
        icon = "__GnosticTest__/graphics/fluids/molten-salt.png",
        icon_size = 64, icon_mipmaps = 4,
        order = "a[fluids]-h[molten-salt]",
    },
    { --chlorine
        type = "fluid",
        name = "chlorine",
        default_temperature = 25,
        max_temperature =  800,
        heat_capacity = "480J",
        base_color = {r = 255, g = 255, b = 188},
        flow_color = {r = 222, g = 255, b = 188},
        icon = "__GnosticTest__/graphics/fluids/chlorine.png",
        icon_size = 64, icon_mipmaps = 4,
        order = "a[fluids]-g[chlorine]",
    },
    { --fish extract
        type = "fluid",
        name = "fish-extract",
        default_temperature = 25,
        max_temperature = 100,
        heat_capacity = "1000J",
        base_color = {r = 246, g = 207, b = 146},
        flow_color = {r = 246, g = 217, b = 146},
        icon = "__GnosticTest__/graphics/fluids/fish-extract.png",
        icon_size = 64, icon_mipmaps = 4,
        order = "a[fluids]-h[fish-extract]"
    },
    { --oxygen
        type = "fluid",
        name = "oxygen",
        default_temperature = 25,
        max_temperature = 800,
        heat_capacity = "920J",
        base_color = {r = 111, g = 192, b = 219},
        flow_color = {r = 119, g = 192, b = 216},
        icon = "__GnosticTest__/graphics/fluids/oxygen.png",
        icon_size = 64, icon_mipmaps = 4,
        order = "a[fluids]-g[oxygen]",
    },
    { --hydrogen
        type = "fluid",
        name = "hydrogen",
        default_temperature = 25,
        max_temperature = 800,
        heat_capacity = "14300J",
        base_color = {r = 224, g = 242, b = 234},
        flow_color = {r = 224, g = 242, b = 234},
        icon = "__GnosticTest__/graphics/fluids/hydrogen.png",
        icon_size = 64, icon_mipmaps = 4,
        order = "a[fluids]-g[hydrogen]",
    },
}
)