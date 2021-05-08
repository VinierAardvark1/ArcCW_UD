att.PrintName = "GEN3 Silent Mistress Slide"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "G17SD Hush Puppy Slide"
end

att.Icon = Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth")
att.Description = "A slide with an integrated silencer installed. A slide lock system can prevent the weapon from cycling when fired, reducing its audible report even further."
att.Desc_Pros = {
    "ud.invistracer"
}
att.Desc_Cons = {
    --"ud.manual",
}
att.Desc_Neutrals = {
    "ud.hushpuppy"
}
att.Slot = "ud_glock_slide"

att.AutoStats = true

att.Mult_SightTime = 1.15
att.Mult_Recoil = 0.85
att.Mult_AccuracyMOA = 0.75
--att.Mult_Sway = 1.5
att.Mult_Range = 1.25

att.Mult_ShootVol = 0.65

att.Mult_RPM = 0.45

--att.Override_ManualAction = true

att.Silencer = true
att.Override_MuzzleEffect = "muzzleflash_suppressed"

att.Add_BarrelLength = 8

att.ActivateElements = {"ud_glock_slide_sd"}

att.GivesFlags = {"sd"}

att.Override_Firemodes_Priority = 10
att.Override_Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 1,
        PrintName = "LOCK",
        Override_ManualAction = true,
        Mult_ShootVol = 0.8,
        Mult_AccuracyMOA = 0.75
    },
    {
        Mode = 0,
        PrintName = "LOW",
    }
}

att.Override_TracerNum = 0
att.Override_PhysTracerProfile = 0

att.Hook_TranslateAnimation = function(wep, anim)
    if not wep:GetBuff_Override("Override_ManualAction") then return end
    if (anim == "fire" || anim == "fire_empty") then
        return "fire_cycle"
    elseif (anim == "idle" || anim == "idle_empty") then
        if wep:GetNeedCycle() then
            return "idle"
        end
    end
end