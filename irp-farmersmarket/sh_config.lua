Config = Config or {}

Config.Debug = false

Config.FrameworkNameStart = ""
Config.Inventory = ""

Config.DefaultImage = ''

-- Stash Location
Config.StashWeight = 500000
Config.StashSlots = 30
-- Pickup Location
Config.PickupWeight = 200000
Config.PickupSlots = 25

Config.WipeStashOnLeave = true -- wipes stall stash upon leaving after the dedicated time that will be set in the code example 1000 * 60 * 10 = 10minutes after signout then wipe so they have time to grab shit.
Config.AllowMultipleClaims = true -- allows multiple booths to be claimed by one person RECOMMENDED to false unless specific for rp or like a burgershot event.

-- PolyZone Config
Config.farmersmarketPoly = vector3(-1690.36, -1065.11, 13.12) 
Config.farmersmarketRadius = 150.00

Config.Market = {
    [1] = {
        ['booth'] = {
            ['coords'] = vector3(-1665.14, -1022.04, 13.02),
            ['heading'] = 230,
        },
        ['register'] = {
            ['coords'] = vector3(-1661.52, -1024.1, 12.55),
            ['heading'] = 320,
        },
        ['type'] = 'farmersmarket',
        ['owner'] = nil,
        ['groupMembers'] = {},
        ['password'] = nil,
        -- DUI SETTINGS --
        ['boothDUI'] = {
            ['ytd'] = 'fm_tent_scr_textures',
            ['ytdname'] = 'fm_tent_screen_01',
            ['width'] = 1024,
            ['height'] = 1024,
            ['url'] = Config.DefaultImage,
            ['dui'] = nil,
        },
    },
    [2] = {
        ['booth'] = {
            ['coords'] = vector3(-1668.95, -1026.54, 13.02),
            ['heading'] = 230,
        },
        ['register'] = {
            ['coords'] = vector3(-1664.82, -1027.94, 12.67),
            ['heading'] = 320,
        },
        ['type'] = 'farmersmarket',
        ['owner'] = nil,
        ['groupMembers'] = {},
        ['password'] = nil,
        -- DUI SETTINGS --
        ['boothDUI'] = {
            ['ytd'] = 'fm_tent_scr_textures',
            ['ytdname'] = 'fm_tent_screen_02',
            ['width'] = 1024,
            ['height'] = 1024,
            ['url'] = Config.DefaultImage,
            ['dui'] = nil,
        },
    },
    [3] = {
        ['booth'] = {
            ['coords'] = vector3(-1672.68, -1030.8, 13.02),
            ['heading'] = 230,
        },
        ['register'] = {
            ['coords'] = vector3(-1668.92, -1032.16, 12.75),
            ['heading'] = 320,
        },
        ['type'] = 'farmersmarket',
        ['owner'] = nil,
        ['groupMembers'] = {},
        ['password'] = nil,
        -- DUI SETTINGS --
        ['boothDUI'] = {
            ['ytd'] = 'fm_tent_scr_textures',
            ['ytdname'] = 'fm_tent_screen_03',
            ['width'] = 1024,
            ['height'] = 1024,
            ['url'] = Config.DefaultImage,
            ['dui'] = nil,
        },
    },
    [4] = {
        ['booth'] = {
            ['coords'] = vector3(-1681.17, -1045.21, 13.13),
            ['heading'] = 140,
        },
        ['register'] = {
            ['coords'] = vector3(-1677.52, -1042.26, 12.89),
            ['heading'] = 232.01,
        },
        ['type'] = 'farmersmarket',
        ['owner'] = nil,
        ['groupMembers'] = {},
        ['password'] = nil,
        -- DUI SETTINGS --
        ['boothDUI'] = {
            ['ytd'] = 'fm_tent_scr_textures',
            ['ytdname'] = 'fm_tent_screen_04',
            ['width'] = 1024,
            ['height'] = 1024,
            ['url'] = Config.DefaultImage,
            ['dui'] = nil,
        },
    },
    [5] = {
        ['booth'] = {
            ['coords'] = vector3(-1685.37, -1046.22, 13.02),
            ['heading'] = 230,
        },
        ['register'] = {
            ['coords'] = vector3(-1681.46, -1048.49, 12.74),
            ['heading'] = 320,
        },
        ['type'] = 'farmersmarket',
        ['owner'] = nil,
        ['groupMembers'] = {},
        ['password'] = nil,
        -- DUI SETTINGS --
        ['boothDUI'] = {
            ['ytd'] = 'fm_tent_scr_textures',
            ['ytdname'] = 'fm_tent_screen_05',
            ['width'] = 1024,
            ['height'] = 1024,
            ['url'] = Config.DefaultImage,
            ['dui'] = nil,
        },
    },
    [6] = {
        ['booth'] = {
            ['coords'] = vector3(-1692.91, -1055.19, 13.02),
            ['heading'] = 230,
        },
        ['register'] = {
            ['coords'] = vector3(-1689.07, -1057.23, 12.92),
            ['heading'] = 320,
        },
        ['type'] = 'farmersmarket',
        ['owner'] = nil,
        ['groupMembers'] = {},
        ['password'] = nil,
        -- DUI SETTINGS --
        ['boothDUI'] = {
            ['ytd'] = 'fm_tent_scr_textures',
            ['ytdname'] = 'fm_tent_screen_06',
            ['width'] = 1024,
            ['height'] = 1024,
            ['url'] = Config.DefaultImage,
            ['dui'] = nil,
        },
    },
    [7] = {
        ['booth'] = {
            ['coords'] = vector3(-1696.79, -1059.88, 13.02),
            ['heading'] = 230,
        },
        ['register'] = {
            ['coords'] = vector3(-1692.53, -1061.44, 12.85),
            ['heading'] = 320,
        },
        ['type'] = 'farmersmarket',
        ['owner'] = nil,
        ['groupMembers'] = {},
        ['password'] = nil,
        -- DUI SETTINGS --
        ['boothDUI'] = {
            ['ytd'] = 'fm_tent_scr_textures',
            ['ytdname'] = 'fm_tent_screen_07',
            ['width'] = 1024,
            ['height'] = 1024,
            ['url'] = Config.DefaultImage,
            ['dui'] = nil,
        },
    },
    [8] = {
        ['booth'] = {
            ['coords'] = vector3(-1696.83, -1064.03, 13.11),
            ['heading'] = 320,
        },
        ['register'] = {
            ['coords'] = vector3(-1698.47, -1068.68, 13.15),
            ['heading'] = 51,
        },
        ['type'] = 'farmersmarket',
        ['owner'] = nil,
        ['groupMembers'] = {},
        ['password'] = nil,
        -- DUI SETTINGS --
        ['boothDUI'] = {
            ['ytd'] = 'fm_tent_scr_textures',
            ['ytdname'] = 'fm_tent_screen_08',
            ['width'] = 1024,
            ['height'] = 1024,
            ['url'] = Config.DefaultImage,
            ['dui'] = nil,
        },
    },
    [9] = {
        ['booth'] = {
            ['coords'] = vector3(-1709.35, -1078.42, 13.08),
            ['heading'] = 140,
        },
        ['register'] = {
            ['coords'] = vector3(-1705.6, -1076.3, 13.01),
            ['heading'] = 140,
        },
        ['type'] = 'farmersmarket',
        ['owner'] = nil,
        ['groupMembers'] = {},
        ['password'] = nil,
        -- DUI SETTINGS --
        ['boothDUI'] = {
            ['ytd'] = 'fm_tent_scr_textures',
            ['ytdname'] = 'fm_tent_screen_09',
            ['width'] = 1024,
            ['height'] = 1024,
            ['url'] = Config.DefaultImage,
            ['dui'] = nil,
        },
    },
    [10] = {
        ['booth'] = {
            ['coords'] = vector3(-1713.42, -1079.57, 13.02),
            ['heading'] = 230,
        },
        ['register'] = {
            ['coords'] = vector3(-1708.97, -1081.46, 12.96),
            ['heading'] = 320,
        },
        ['type'] = 'farmersmarket',
        ['owner'] = nil,
        ['groupMembers'] = {},
        ['password'] = nil,
        -- DUI SETTINGS --
        ['boothDUI'] = {
            ['ytd'] = 'fm_tent_scr_textures',
            ['ytdname'] = 'fm_tent_screen_10',
            ['width'] = 1024,
            ['height'] = 1024,
            ['url'] = Config.DefaultImage,
            ['dui'] = nil,
        },
    },
    [11] = {
        ['booth'] = {
            ['coords'] = vector3(-1720.61, -1088.27, 13.02),
            ['heading'] = 230,
        },
        ['register'] = {
            ['coords'] = vector3(-1716.31, -1089.71, 12.83),
            ['heading'] = 320,
        },
        ['type'] = 'farmersmarket',
        ['owner'] = nil,
        ['groupMembers'] = {},
        ['password'] = nil,
        -- DUI SETTINGS --
        ['boothDUI'] = {
            ['ytd'] = 'fm_tent_scr_textures',
            ['ytdname'] = 'fm_tent_screen_11',
            ['width'] = 1024,
            ['height'] = 1024,
            ['url'] = Config.DefaultImage,
            ['dui'] = nil,
        },
    },
    [12] = {
        ['booth'] = {
            ['coords'] = vector3(-1724.29, -1092.86, 13.02),
            ['heading'] = 230,
        },
        ['register'] = {
            ['coords'] = vector3(-1721.7, -1096.66, 12.83),
            ['heading'] = 320,
        },
        ['type'] = 'farmersmarket',
        ['owner'] = nil,
        ['groupMembers'] = {},
        ['password'] = nil,
        -- DUI SETTINGS --
        ['boothDUI'] = {
            ['ytd'] = 'fm_tent_scr_textures',
            ['ytdname'] = 'fm_tent_screen_12',
            ['width'] = 1024,
            ['height'] = 1024,
            ['url'] = Config.DefaultImage,
            ['dui'] = nil,
        },
    },
    [13] = {
        ['booth'] = {
            ['coords'] = vector3(-1728.03, -1097.36, 13.02),
            ['heading'] = 230,
        },
        ['register'] = {
            ['coords'] = vector3(-1723.92, -1099.29, 12.77),
            ['heading'] = 320,
        },
        ['type'] = 'farmersmarket',
        ['owner'] = nil,
        ['groupMembers'] = {},
        ['password'] = nil,
        -- DUI SETTINGS --
        ['boothDUI'] = {
            ['ytd'] = 'fm_tent_scr_textures',
            ['ytdname'] = 'fm_tent_screen_13',
            ['width'] = 1024,
            ['height'] = 1024,
            ['url'] = Config.DefaultImage,
            ['dui'] = nil,
        },
    },
}