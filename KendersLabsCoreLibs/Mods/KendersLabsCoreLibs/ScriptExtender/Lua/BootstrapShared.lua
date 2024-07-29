Ext.Require("Shared/_Init.lua")
-- Require Community Library to function
if Ext.Mod.IsModLoaded("396c5966-09b0-40a1-af3f-93a5e9ce71c0") then
  Ext.Require("Init/_InitDefaults.lua")
  Ext.Require("Init/_InitGlobals.lua")
end

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
