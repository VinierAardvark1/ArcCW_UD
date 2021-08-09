att.PrintName = "Flip-up Rear Sight"
att.Icon = nil -- Material("entities/att/acwatt_lowpolysaiga12extmag.png", "smooth mips")
att.Description = "A rail-mounted rear sight for flat top receivers. Looks more modern, but that's it."
att.Desc_Pros = {}
att.Desc_Cons = {}
att.Desc_Neutrals = {
    "ud.cosmetic"
}
att.Slot = "ud_m16_rs"

att.ActivateElements = {"ud_m16_upper_flat"}
att.GivesFlags = {"ud_m16_not_retro"}
att.ExcludeFlags = {"ud_m16_retro"}
--att.HideIfBlocked = true

att.SortOrder = 1000