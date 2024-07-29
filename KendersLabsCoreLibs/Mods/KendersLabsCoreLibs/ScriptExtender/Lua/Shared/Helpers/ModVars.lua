---@class HelperModVars: Helper

---@param modId string
---@return boolean
function VCHelpers.ModVars:IsModLoaded(modId)
  return Ext.Mod.IsModLoaded(modId)
end

---@param modId string modId
---@param depsModId string modId
---@return boolean
function VCHelpers.ModVars:IsModExist(modId, depsModId)
  return Ext.Mod.IsModLoaded(depsModId) and Ext.Mod.IsModLoaded(modId)   --Data.Deps.Framework_GUID.ModuleUUID
end

-- Populate ModsDict with Table mods
---@param t table modGuid
function VCHelpers.ModVars:InscribeTableMods(t)
  for index in pairs(t) do
    local str = t[index].ModuleUUID
    local modData = Ext.Mod.GetMod(str)
    if modData ~= nil and modData.Info.ModuleUUID ~= nil and str ~= "b9149c8e-52c8-46e5-9cb6-fc39301c05fe" then --AbilityList_UUID
      CLUtils.RegisterModToDictionary(modData.Info.Directory, modData.Info.ModuleUUID, modData.Info.Name, modData.Info.Author)
    end
  end
end
