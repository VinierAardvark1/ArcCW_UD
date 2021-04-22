att.PrintName = "20-Round STANAG Compact Mag"
att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "Original, low-capacity magazine for the M16. The lighter load reduces the weapon's weight and brings back memories of the rice fields."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "Reduced magazine capacity"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_mag"

att.AutoStats = true

att.Mult_SightTime = 0.85
--att.Mult_Recoil = 0.9
att.Mult_ReloadTime = 0.9
att.Mult_SpeedMult = 1.05
att.Override_ClipSize = 20

att.ActivateElements = {"ud_m16_20_mag"}

att.Hook_SelectReloadAnimation = function(wep, anim)
    return anim .. "_20"
end