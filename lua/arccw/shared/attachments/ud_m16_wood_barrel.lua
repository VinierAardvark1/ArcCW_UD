att.PrintName = "20\" Wood M16A1 Barrel"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Description"
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Semi-auto only"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_barrel"

att.AutoStats = true

--att.Mult_SightTime = 1
--att.Mult_Recoil = 1
--att.Mult_SpeedMult = 1

att.Mult_AccuracyMOA = 0.9

att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

att.LHIK = true

att.Model = "models/weapons/arccw/atts/wood_lhik.mdl"

att.ActivateElements = {"ud_m16_wood_barrel"}