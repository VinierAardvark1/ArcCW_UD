att.PrintName = "AMSGL Short Barrel"
att.AbbrevName = "Short Barrel"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M79 Short Barrel"
end

att.Icon = nil
att.Description = "A reduced length barrel with no front sight.\nNicknamed the 'Pirate Gun' due to its likeliness to a hand cannon, this short barrel improves agility at the cost of precision and projectile range."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "uc.nofs"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m79_barrel"

att.LHIK = true

att.Model = "models/weapons/arccw/atts/lhik_short.mdl"

att.AutoStats = true

att.Mult_MuzzleVelocity = 0.5
att.Mult_Recoil = 1.25
att.Mult_AccuracyMOA = 2

att.Mult_MoveDispersion = 0.75
att.Mult_SightTime = 0.75
att.Mult_ReloadTime = 0.85

att.Mult_SpeedMult = 1.01
att.Mult_SightedSpeedMult = 1.05

att.Mult_Sway = 0.75

att.A_Hook_Add_SightsDispersion = function(wep, data)
    if data and !wep.Attachments[1].Installed then
        data.add = data.add + 50
    end
end

att.ActivateElements = {"m79_pirategun"}