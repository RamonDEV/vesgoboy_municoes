Config = {}

Config.MaxAmmo = 40 -- Max Ammo Equiped
Config.MaxArrow = 40 -- Max Arrows Equiped

Config.Text = { -- Sorry for my bad English -- Translate Here
    arrow = "Flechas",
    equiped = "Você Equipou ",
    ammo = "Munições",
    arrowsequiped = "Flechas Equipadas",
    ammoequiped = " Munições Equipadas",
    maxammoequiped = "Você já tem o Maximo De Munições Equipadas. MAX:",
    maxarrowequiped = "Você já tem o Maximo De Flechas Equipadas. MAX:",
    limitammo = "Você não pode equipar mais de",
    eachweapon = "Munições em cada Arma!!",
    segurandoarma = "Você não está segurando nenhuma ARMA!!!!",
    arrowinthegun = "Você está tentando equipar uma flecha em uma Arma!!!",
    ammolabel = "Quantidade de Munição",
    nohaveammo = "Você não tem isso de Munição",
}

Config.Municoes = { -- Ammunition and the model of the weapon you are going to use
    ["revolver_ammo"] = {
        "WEAPON_REVOLVER_LEMAT",
        "WEAPON_REVOLVER_SCHOFIELD",
        "WEAPON_REVOLVER_DOUBLEACTION",
        "WEAPON_REVOLVER_NAVY",
    },
    ["revolver_ammo_navy"] = {
        "WEAPON_REVOLVER_NAVY",
    },
	["pistol_ammo"]={
        "WEAPON_PISTOL_VOLCANIC",
        "WEAPON_PISTOL_SEMIAUTO",
        "WEAPON_PISTOL_MAUSER",
        "WEAPON_PISTOL_M1899"
    },
	["22_ammo"]={
        "WEAPON_RIFLE_VARMINT",
        "WEAPON_REVOLVER_CATTLEMAN",
    },
	["rifle_ammo"]={
        "WEAPON_RIFLE_BOLTACTION",
        "WEAPON_RIFLE_SPRINGFIELD",
    },
	["shotgun_ammo"]={
        "WEAPON_SHOTGUN_SAWEDOFF",
        "WEAPON_SHOTGUN_DOUBLEBARREL",
        "WEAPON_SHOTGUN_PUMP",
        "WEAPON_SHOTGUN_REPEATING",
        "WEAPON_SHOTGUN_SEMIAUTO",
    },
	["repeator_ammo"]={
        "WEAPON_REPEATER_CARBINE",
        "WEAPON_REPEATER_WINCHESTER",
        "WEAPON_REPEATER_EVANS",
        "WEAPON_REPEATER_HENRY",
    },
	["snipe_ammo"]={
        "WEAPON_SNIPERRIFLE_CARCANO",
        "WEAPON_SNIPERRIFLE_ROLLINGBLOCK",
    },
	["arrows"]={
        "WEAPON_BOW",
    },
}