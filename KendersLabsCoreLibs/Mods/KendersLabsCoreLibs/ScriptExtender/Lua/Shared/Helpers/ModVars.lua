---@class HelperModVars: Helper

---@param modId modId
---@return boolean
function VCHelpers.ModVars:isModLoaded(modId)
    return Ext.Mod.IsModLoaded(modId)
end

---@param modId string modId
---@return boolean
function VCHelpers.ModVars:isModExist(modId, depsModId)
    return Ext.Mod.IsModLoaded(depsModId) and Ext.Mod.IsModLoaded(modId) --deps.Framework_GUID
end