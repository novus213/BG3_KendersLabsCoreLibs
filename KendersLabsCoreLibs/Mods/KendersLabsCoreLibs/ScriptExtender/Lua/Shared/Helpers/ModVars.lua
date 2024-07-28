---@class HelperModVars: Helper

---@param modId string
---@return boolean
function VCHelpers.ModVars:IsModLoaded(modId)
    return Ext.Mod.IsModLoaded(modId)
end

---@param modId string modId
---@return boolean
function VCHelpers.ModVars:IsModExist(modId, depsModId)
    return Ext.Mod.IsModLoaded(depsModId) and Ext.Mod.IsModLoaded(modId) --Data.Deps.Framework_GUID
end

-- Populate ModsDict with Table mods
---@param t table modGuid
function VCHelpers.ModVars:InscribeTableMods(t)
  for _, uuid in pairs(t) do
    local modData = Ext.Mod.GetMod(uuid)
    Mods.DictUtils.RegisterModToDictionary(modData.Info.Directory, modData.Info.ModuleUUID, modData.Info.Name,
      modData.Info.Author)
  end
end