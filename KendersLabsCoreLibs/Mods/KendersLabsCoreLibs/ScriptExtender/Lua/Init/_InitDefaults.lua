KL = {}
KL.UUID = "47e1154e-e169-4e4a-80b6-d117171ccd15"
KL.modTableKey = "KendersLabsCoreLibs"
KL.modPrefix = "KL"
KL.modVersion = Ext.Mod.GetMod(KL.UUID).Info.ModVersion
Mods.KL = Mods.KendersLabsCoreLibs

--- Import tables to ease process of utilizing kl Tables and
-- functions without constantly referencing the Mods table
-- Usage: `local klUtils, klDicts = Mods.KL.Import({Utils, Dicts})`
---@param handles table
function Import(handles)
  local res = {}
  for _, val in ipairs(handles) do
    table.insert(res, _G[val])
  end

  return table.unpack(res)
end

--[[
local klImports = {}
klImports[1] = "VCHelpers.CF"
klImports[2] = "VCHelpers.ModVars"
klImports[3] = "Data.Libs.Books"
klImports[4] = "Data.Libs.ClassesLibrary"
klImports[5] = "Data.Libs.RaceLibrary"
klImports[6] = "Data.Libs.OptionActions"

KLCF, KLModVars, KLBooks, KLClassesLib, KLRacesLib, KLOA = Mods.KL.Import(klImports)
]]--

