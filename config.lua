Config = {}

Config.framework = 'esx' -- esx, qbcore, ox_core, nd_core, qbx
Config.UseOldEsx = false -- false use ESX Export
Config.Alert = 'cd_dispatch' -- ps_dispatch, cd_dispatch, qs_dispatch, esx_notify, ox_notify, okok_notify
Config.TimeToRobAgain = 30
Config.MinimumCops = 3 -- Minimum cops for rob 
Config.PoliceJobName = 'police' -- Name of police job
Config.PoliceAlertProbability = 90 -- in %
Config.ResistanceChance = 0 -- in % / 0 for disable
Config.NameWeaponNPC = "weapon_pistol" -- https://wiki.rage.mp/index.php?title=Weapons must be [Handguns]

Config.Dispatch = { -- Dispatch cods
    title = 'Okradení osoby',
    text = 'Někdo okradá lidi se zbraní',
}


Config.BlacklistNpc = { --- Npc can't be rob
    [GetHashKey('s_m_m_highsec_01')] = true,
    [GetHashKey('s_f_m_shop_high')] = true,
    [GetHashKey('mp_m_weapexp_01')] = true,
    [GetHashKey('s_m_m_scientist_01')] = true,
    [GetHashKey('s_m_y_blackops_01')] = true,
    [GetHashKey('u_m_y_babyd')] = true,
    [GetHashKey('mp_m_shopkeep_01')] = true
}

Config.Items = { --- Random Item to rob
    {
        itemName = 'phone',
        itemRandomAmount = {1, 1}
    },
    {
        itemName = 'money',
        itemRandomAmount = {500, 1000}
    },
    {
        itemName = 'bread',
        itemRandomAmount = {1, 1} 
    },
    {
        itemName = 'water',
        itemRandomAmount = {1, 1}
    },
}

Translation = { --- translation
    ['racket'] = 'Okrást osobu',
    ['can_rob_npc_again'] = 'Nemůžeš okrást 2x stejnou osobu',
    ['rob_complete'] = 'Okradl si osobu',
    ['police_alert'] = 'Člověk byl okraden',
    ['police_alert_blip'] = 'Krádaž',
    ['need_police'] = 'Nedostatek policajtů',
    ['rob_cooldown'] = 'Cooldown ',
}



