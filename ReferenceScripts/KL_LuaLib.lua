---@meta
---@diagnostic disable
if Mods == nil then Mods = { KendersLibs = {} } end
if KLCF == nil then KLCF = {} end
if KLModVars == nil then KLModVars = {} end
-- Libs
if KLBooks == nil then KLBooks = {} end
if KLClassesLib == nil then KLClassesLib = {} end
if KLRacesLib == nil then KLRacesLib = {} end
if KLOA == nil then KLOA = {} end

--- Import tables to ease process of utilizing KL Tables and
-- functions without constantly referencing the Mods table
-- Usage: `local klUtils, klDicts = Mods.KL.Import({Utils, Dicts})`
---@param handles table
---@return table, table?, table?, table?
function Mods.KendersLibs.Import(handles) end

--- Insert Table Data.Deps mods to check futur depsModId
---@param guid string modId
function KLModVars.IsModLoaded(guid) end

--- Insert Table Data.Deps mods to check futur depsModId
---@param guid string modId
---@param depsModGuid string modId
---@return boolean
function KLModVars.IsModExist(guid, depsModGuid) end

--- Insert Table Data.Deps mods to check futur depsModId
---@param params table
function KLModVars.InscribeTableMods(params) end

--- Add Strings Payload
---@param modGuid string mod modGuid
---@param target string Target UUID
---@param type string (Boosts ect.)
---@param strings table Strings abilities
---@return table payload
function KLCF.addStringPayload(modGuid, target, type, strings) end

--- Remove Strings Payload
---@param modGuid string mod modGuid
---@param target string Target UUID
---@param type string (Boosts ect.)
---@param strings table Strings abilities
---@return table payload
function KLCF.removeStringPayload(modGuid, target, type, strings) end

--- Remove Selector Payload
---@param modGuid string mod modGuid
---@param target string Target UUID
---@param type string (Boosts ect.)
---@param sabUUID string ListUUID
---@return table payload
function KLCF.removeSelectorsPayload(modGuid, target, type, sabUUID) end

--- Insert Selectors Payload
---@param modGuid string mod modGuid
---@param target string Target UUID
---@param type string Function (SelectAbilityBonus ect.)
---@param sabUUID string SelectAbilityBonus UUID
---@param sabAmount table SelectAbilityBonus Amount ex. {"2","1"}
---@param sabAmounts integer SelectAbilityBonus Amounts ex. here 2
---@param BonusType string BonusType UUID
---@return table payload
function KLCF.InsertSelectorsPayload(modGuid, target, type, sabUUID, sabAmount, sabAmounts, BonusType) end

--- Add SelectAbilityBonus Payload
---@param modGuid string race mod modGuid
---@param target string Target UUID
---@param type string Function (SelectAbilityBonus ect.)
---@param sabUUID string SelectAbilityBonus UUID
---@param sabAmounts integer SelectAbilityBonus Amounts
---@param BonusType string BonusType UUID
---@return table payload
function KLCF.addSelectAbilityBonusPayload(modGuid, target, type, sabUUID, sabAmounts, BonusType) end

--- Add AddSpells Payload
---@param modGuid string race mod modGuid
---@param target string Target UUID
---@param ssUUID string SelectAbilityBonus UUID
---@param payload table payload
---@return table payload
function KLCF.addAddSpellsPayload(modGuid, target, ssUUID, payload) end

--- add SelectPassives Payload
---@param modGuid string race mod modGuid
---@param target string Target UUID
---@param spUUID string SelectAbilityBonus UUID
---@param spAmount string addSelectSpells Amount
---@param selector string addSelectSpells selector
---@return table payload
function KLCF.addSelectPassivesPayload(modGuid, target, spUUID, spAmount, selector) end

--- add checkSCF exist
---@return boolean
function KLCF.checkSCF() end
