---@class HelperModVars: Helper

---@param modId string
---@return boolean
function VCHelpers.ModVars:IsModLoaded(modId)
    return Ext.Mod.isModLoaded(modId)
end

---@param modId string modId
---@return boolean
function VCHelpers.ModVars:IsModExist(modId, depsModId)
    return Ext.Mod.isModLoaded(depsModId) and Ext.Mod.isModLoaded(modId) --Deps.Framework_GUID
end