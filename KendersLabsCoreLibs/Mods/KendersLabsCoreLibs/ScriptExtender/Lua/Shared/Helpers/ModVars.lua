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