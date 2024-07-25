---@diagnostic disable: duplicate-set-field

setmetatable(Mods[Ext.Mod.GetMod(ModuleUUID).Info.Directory], { __index = Mods.VolitionCabinet })
DevelReady = Ext.Utils:Version() >= 17 or Ext.Debug.IsDeveloperMode()

local deps = {
    VCModuleUUID = "f97b43be-7398-4ea5-8fe2-be7eb3d4b5ca",
}
if not Ext.Mod.isModLoaded(deps.VCModuleUUID) then
    Ext.Utils.Print(
        "Volition Cabinet is missing and is a hard requirement. PLEASE MAKE SURE IT IS ENABLED IN YOUR MOD MANAGER.")
end


function MCMGet(settingID)
    return Mods.BG3MCM.MCMAPI:GetSettingValue(settingID, ModuleUUID)
end

---@param path string
---@param files string[]
function RequireFiles(path, files)
    for _, file in pairs(files) do
        Ext.Require(string.format("%s%s.lua", path, file))
    end
end

RequireFiles("Shared/", {
    "MetaClass",
    "Globals/_Init",
    "Helpers/_Init",
})