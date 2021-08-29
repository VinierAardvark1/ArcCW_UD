att.PrintName = "AMCAR Carbine Stock"
att.AbbrevName = "Carbine Stock"

if GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "M16 Carbine Stock"
end

att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "Adjustable combat stock used on the XM177 carbine. Very maneuverable."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "ud_m16_stock"

att.AutoStats = true
att.SortOrder = 6

att.Mult_SightTime = 0.9
att.Mult_HipDispersion = 0.85
att.Mult_RecoilSide = 1.1
att.Mult_Sway = 1.25

att.Add_BarrelLength = -6

att.ToggleStats = {
    {
        PrintName = "Extended",
        ActivateElements = {"stock_carbine_ex"}
    },
    {
        PrintName = "Collapsed",
        ActivateElements = {"stock_carbine_in"}
    },
}