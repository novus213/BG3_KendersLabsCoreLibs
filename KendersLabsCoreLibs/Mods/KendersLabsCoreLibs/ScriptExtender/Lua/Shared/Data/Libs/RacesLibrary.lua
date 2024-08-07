local function checkHumanFM()
  if Ext.Mod.IsModLoaded(Data.Deps.Framework_FM_GUID.ModuleUUID) and Ext.Mod.IsModLoaded(Data.Deps.VariantHuman_FM_GUID.ModuleUUID) then
    return {
      humanMainRace = false,
      humanUUID     = "139e1b8c-dfa1-4b2d-895c-efb170736093", --Human default Fantastic M
      modGuid       = Data.Deps.VariantHuman_FM_GUID.ModuleUUID,
      Author        = "Dungeons and Souls",
      modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
      NoDefStats      = false
    }
  else
    return {
      humanMainRace = true,
      humanUUID     = "dbde4d66-d3e4-4c3f-ae87-fd6e2d1cd276", --Human default Larian,
      modGuid       = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
      Author        = "Larian",
      modURL        = { "https://bg3.wiki/wiki/Human", "https://baldursgate3.wiki.fextralife.com/Human" },
      NoDefStats      = true
    }
  end
end

local HumanFix = checkHumanFM()

Data.Libs.RaceLibrary = {

--[[
|	.____                 .__                ____   ____             .__.__  .__
|	|    |   _____ _______|__|____    ____   \   \ /   /____    ____ |__|  | |  | _____
|	|    |   \__  \\_  __ \  \__  \  /    \   \   Y   /\__  \  /    \|  |  | |  | \__  \
|	|    |___ / __ \|  | \/  |/ __ \|   |  \   \     /  / __ \|   |  \  |  |_|  |__/ __ \_
|	|_______ (____  /__|  |__(____  /___|  /    \___/  (____  /___|  /__|____/____(____  /
|	        \/    \/              \/     \/                 \/     \/                  \/
|	         \_Larian Vanilla
]] --
  {
    Name            = "Human default",
    modURL          = HumanFix["modURL"],
    modGuid         = HumanFix["modGuid"],
    progressionUUID = {
      [1] = HumanFix["humanUUID"]
    },
    raceLsxUUID     = "",
    Author          = HumanFix["Author"],
    SourceBook      = "PHB",
    MainRace        = HumanFix["humanMainRace"],
    Stats           = { "1", "1", "1", "1", "1", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = HumanFix["NoDefStats"]
  },
  {
    Name             = "Elf default",
    modURL           = { "https://bg3.wiki/wiki/Elf", "https://baldursgate3.wiki.fextralife.com/Elf" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "eb9db11d-1091-49fa-9006-2f52bbb76f6a",
    progressionUUID  = {
      [1] = "496486a4-b5f2-4f91-90ea-6cad9023952e",
      [2] = "cfb4d42f-ebe2-4f66-ad73-3ce7b6a635de",
      [3] = "46ac9fd4-811c-4977-abeb-adfc31ab21c4",
      [4] = "81e112c6-efc4-4e20-9a98-5d93856a0313"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = true,
    NoDefStats       = false
  },
  {
    Name             = "High Elf default",
    modURL           = { "https://bg3.wiki/wiki/Elf", "https://baldursgate3.wiki.fextralife.com/Elf" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "5fd1dfd5-b5bd-4152-a04a-87fb3faba1e9",
    progressionUUID  = {
      [1] = "db13a1fb-7d64-4309-a1c8-e2a5c752ded5",
      [2] = "3d2b0fe9-ba54-4c5d-bdf9-2d67939276aa",
      [3] = "31068b3c-7a1a-4a44-bf3b-72010ba560be",
      [4] = "1567ea04-775f-4d2c-b752-cc47e69e9dae"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "0", "2", "0", "1", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Wood Elf default",
    modURL           = { "https://bg3.wiki/wiki/Elf", "https://baldursgate3.wiki.fextralife.com/Elf" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "c0210455-03b5-437c-9d80-3cc4e3c61a9f",
    progressionUUID  = {
      [1] = "b262db2c-7a80-4c76-a1e8-0efdb9c1db13"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "0", "2", "0", "0", "1", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    Bonus            = { "ProficiencyBonus(Skill,Stealth)" },
    NoDefStats       = true
  },
  {
    Name             = "Drow default",
    modURL           = { "https://bg3.wiki/wiki/Drow", "https://baldursgate3.wiki.fextralife.com/Drow" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "a43498f5-d72f-4a05-b721-1feea9acb3ad",
    progressionUUID  = {
      [1] = "4a634f24-bdcb-4559-b8be-7847133ad1c3",
      [2] = "bd4b36f8-4835-4b1d-b432-3021011cabe6",
      [3] = "334e0ddd-33cb-468f-a232-40cfe9ad23da",
      [5] = "db485b48-fc71-4de4-a62d-47675659678b"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = true,
    NoDefStats       = false
  },
  {
    Name             = "Drow - Lolth default",
    modURL           = { "https://bg3.wiki/wiki/Drow", "https://baldursgate3.wiki.fextralife.com/Drow" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "cda01bce-b09b-459a-bdb0-b162de09e54d",
    progressionUUID  = {
      [1] = "c91bb3ce-73d0-4330-80e1-562880a53472"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "0", "2", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Drow - Seldarine default",
    modURL           = { "https://bg3.wiki/wiki/Drow", "https://baldursgate3.wiki.fextralife.com/Drow" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "1037326e-43ed-4840-9f37-10f1efb3779a",
    progressionUUID  = {
      [1] = "3feba964-0ae4-4ae5-b2a1-e515f0973efe"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "0", "2", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Dwarf default",
    modURL           = { "https://bg3.wiki/wiki/Dwarf", "https://baldursgate3.wiki.fextralife.com/Dwarf" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "d93def5b-a2df-4675-8a33-e47c9647eeae",
    progressionUUID  = {
      [1] = "3c9a0bd8-bb0f-4a42-b77f-7a9a1cff2e5d"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = true,
    NoDefStats       = false
  },
  {
    Name             = "Dwarf - Duergar default",
    modURL           = { "https://bg3.wiki/wiki/Dwarf", "https://baldursgate3.wiki.fextralife.com/Dwarf" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "0f8458cb-9edd-401d-8066-86ba8e1529cf",
    progressionUUID  = {
      [1] = "bd012f5b-0a0b-424e-ab7c-186dbd82ab30",
      [3] = "02828bce-0bee-4010-a614-f4e46d0aba12",
      [5] = "77f416e5-406b-40ee-a2ff-dea281c32c8f"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "1", "0", "2", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Dwarf - Mountian default",
    modURL           = { "https://bg3.wiki/wiki/Dwarf", "https://baldursgate3.wiki.fextralife.com/Dwarf" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "c19dc7fa-0a57-459c-ae4a-648472cbb8fe",
    progressionUUID  = {
      [1] = "3576f8c6-e515-49c5-808c-b68b77154ffd"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "2", "0", "2", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Dwarf - Hill default",
    modURL           = { "https://bg3.wiki/wiki/Dwarf", "https://baldursgate3.wiki.fextralife.com/Dwarf" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "fa449725-ed8a-4d8c-8908-9ff1469c2e21",
    progressionUUID  = {
      [1] = "207d038e-1add-4335-81d1-b0861f524c19",
      [2] = "d06d7fea-98ee-42a4-a298-8db698c88644",
      [3] = "c968fd3c-59b4-46e3-bbe0-ddd53f6a4d58",
      [4] = "eebb77af-b7ee-4a48-84f9-5d4272745de8",
      [5] = "4bf7aa2d-5abe-42a9-ad3e-8764f8532de8",
      [6] = "c6d8c5b5-3143-4f1e-aeaf-563f0715199f"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "0", "0", "2", "0", "1", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Half-Elf default",
    modURL           = { "https://bg3.wiki/wiki/Half-Elf", "https://baldursgate3.wiki.fextralife.com/Half-Elf" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "5f06db9e-31b0-41d9-bfbe-3446323c4bf6",
    progressionUUID  = {
      [1] = "a1729574-2f7b-4561-91d8-3766cf940420",
      [2] = "a35fe910-7525-4989-ba34-f9f76ff818ec",
      [3] = "25c0008d-57ca-4b88-a0f2-1dfbd5597f69"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = true,
    NoDefStats       = false
  },
  {
    Name             = "Half-Elf - Half High Elf default",
    modURL           = { "https://bg3.wiki/wiki/Half-Elf", "https://baldursgate3.wiki.fextralife.com/Half-Elf" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "9efb7794-dc6f-45f3-8cf9-74ad5286c792",
    progressionUUID  = {
      [1] = "43bfa29a-fd63-4f47-850e-6714f0333022"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "0", "0", "0", "0", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    Sab              = { "1", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Half-Elf - Half Wood Elf default",
    modURL           = { "https://bg3.wiki/wiki/Half-Elf", "https://baldursgate3.wiki.fextralife.com/Half-Elf" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "685d3b16-1f7f-49b3-906d-d7726276926b",
    progressionUUID  = {
      [1] = "cb0f84ec-1b1d-4ecc-9ab5-76261e332f5a"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "0", "0", "0", "0", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    Sab              = { "1", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Half-Elf - Half Drow default",
    modURL           = { "https://bg3.wiki/wiki/Half-Elf", "https://baldursgate3.wiki.fextralife.com/Half-Elf" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "4ef615e7-e401-4304-bedc-5c229caa1dc2",
    progressionUUID  = {
      [1] = "58dae581-c25a-4dfb-8a57-589bf4b34f62",
      [2] = "f49fff52-8267-426c-ab23-176fc36f8c4e",
      [3] = "87d2588b-bd2e-43df-ace0-2c2d3efea0ca",
      [5] = "60758c3f-d9c5-4f1a-a253-cf2a5e60b627"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "0", "0", "0", "0", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    Sab              = { "1", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Gnome default",
    modURL           = { "https://bg3.wiki/wiki/Gnome", "https://baldursgate3.wiki.fextralife.com/Gnome" },
    Comments         = "The Alpha Main Race !",
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "c1d4adfe-9f00-44b4-a433-a45250d00631",
    progressionUUID  = {
      [1] = "d48f8fb3-4351-4b5d-a28c-946fd33be726"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = true,
    NoDefStats       = false
  },
  {
    Name             = "Gnome - Rock default",
    modURL           = { "https://bg3.wiki/wiki/Gnome", "https://baldursgate3.wiki.fextralife.com/Gnome" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "1e9f254e-6aa4-4e54-9937-82065b3182ee",
    progressionUUID  = {
      [1] = "aa2257a9-1779-4d8b-be65-8a08eede07fa"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "0", "0", "1", "2", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Gnome - Deep default",
    modURL           = { "https://bg3.wiki/wiki/Gnome", "https://baldursgate3.wiki.fextralife.com/Gnome" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "0f6d9f53-a2d0-422b-beea-a2fdfd88628a",
    progressionUUID  = {
      [1] = "938b6f72-18a6-4af0-924b-5292251d32bf"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "0", "1", "0", "2", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Gnome - Forest default",
    modURL           = { "https://bg3.wiki/wiki/Gnome", "https://baldursgate3.wiki.fextralife.com/Gnome" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "f0a6b572-9612-403f-981c-978c21225845",
    progressionUUID  = {
      [1] = "a63bbb3c-c37c-4578-94e6-7d1c4c063d5c"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "0", "1", "0", "2", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Halfling default",
    modURL           = { "https://bg3.wiki/wiki/Halfling", "https://baldursgate3.wiki.fextralife.com/Halfling" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "7e1ae395-6f2a-456b-ab64-1012c18065d4",
    progressionUUID  = {
      [1] = "963edcba-c572-4f51-b447-8810bbb43a8e"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = true,
    NoDefStats       = false
  },
  {
    Name             = "Halfling - Lightfoot default",
    modURL           = { "https://bg3.wiki/wiki/Halfling", "https://baldursgate3.wiki.fextralife.com/Halfling" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "fa29312c-6ec6-4bf9-9613-6d99feb57467",
    progressionUUID  = {
      [1] = "bc2d257b-a405-4f58-891e-3083c5f71127"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "0", "2", "1", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Halfling - Strongheart default",
    modURL           = { "https://bg3.wiki/wiki/Halfling", "https://baldursgate3.wiki.fextralife.com/Halfling" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "786cb743-3286-462b-af46-3b1ba84c801e",
    progressionUUID  = {
      [1] = "b7a39730-2820-40c7-be96-2c134fead68a"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "0", "2", "1", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Tiefling default",
    modURL           = { "https://bg3.wiki/wiki/Tiefling", "https://baldursgate3.wiki.fextralife.com/Tiefling" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "1640733f-c32b-4d9d-9132-5ca6e985155c",
    progressionUUID  = {
      [1] = "56529178-3df2-4067-b1c0-e35fe82fbd37"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = true,
    NoDefStats       = false
  },
  {
    Name             = "Tiefling - Asmodeus default",
    modURL           = { "https://bg3.wiki/wiki/Tiefling", "https://baldursgate3.wiki.fextralife.com/Tiefling" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "5ae9c280-64fd-43fb-85f3-40d1796c5b24",
    progressionUUID  = {
      [1] = "a8b18f0c-fe70-4f13-9dbc-23f4dbc3d648",
      [2] = "2d07c1b4-baec-4bdb-a75a-ca513ad8df46",
      [3] = "bf3c33f5-4b95-4048-91f5-d8ff6f7a9cdd",
      [5] = "76ced3c8-2244-477b-bab3-ba741db463d3"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "0", "0", "0", "1", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Tiefling - Mephistopheles default",
    modURL           = { "https://bg3.wiki/wiki/Tiefling", "https://baldursgate3.wiki.fextralife.com/Tiefling" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "0d83cb0b-1f39-47bb-97bc-a6e49cd8a5c5",
    progressionUUID  = {
      [1] = "bdd1cf22-1b3c-4bc6-8313-898a49fcfe49",
      [2] = "10ae22cc-08d8-4c19-aa28-06fffb0782c2",
      [3] = "5b3c1a37-18a8-40cf-8bf6-cad43b3ff0cc",
      [5] = "a9e766ce-7641-4fac-9510-99389b86546f"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "0", "0", "0", "1", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Tiefling - Zariel default",
    modURL           = { "https://bg3.wiki/wiki/Tiefling", "https://baldursgate3.wiki.fextralife.com/Tiefling" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "957ba6a9-68f4-4190-a432-25675d00f434",
    progressionUUID  = {
      [1] = "89d57acd-85ff-4da6-b989-9b82d0241e46",
      [2] = "786ed4d4-7dd8-4ae6-b5a8-4a9e6572bc78",
      [3] = "09be3a4b-3360-414e-b3fb-1e4a04b63331",
      [5] = "0394d93d-5f86-42e6-821b-91777c6e120b"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "1", "0", "0", "0", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Dragonborn default",
    modURL           = { "https://bg3.wiki/wiki/Dragonborn", "https://baldursgate3.wiki.fextralife.com/Dragonborn" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "e2472b4f-682a-4ac8-b11c-723f921fd7a1",
    progressionUUID  = {
      [1] = "cabc4d46-f08e-4a48-8937-0bd1067ab43d"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = true,
    NoDefStats       = false
  },
  {
    Name             = "Dragonborn - Black defaut",
    modURL           = { "https://bg3.wiki/wiki/Dragonborn", "https://baldursgate3.wiki.fextralife.com/Dragonborn" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "445a41db-995d-4e35-892a-4ab0e34d4594",
    progressionUUID  = {
      [1] = "f5a766a1-9379-47ed-bfeb-cccbba64346f"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "2", "0", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Dragonborn - Blue defaut",
    modURL           = { "https://bg3.wiki/wiki/Dragonborn", "https://baldursgate3.wiki.fextralife.com/Dragonborn" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "dbe8c9aa-8a1d-49d2-b0b1-816966fe2c8c",
    progressionUUID  = {
      [1] = "fc46455a-24f8-4b5f-9340-05806e44257b"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "2", "0", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Dragonborn - Brass defaut",
    modURL           = { "https://bg3.wiki/wiki/Dragonborn", "https://baldursgate3.wiki.fextralife.com/Dragonborn" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "d5338f29-2047-40a7-ad72-f65241150858",
    progressionUUID  = {
      [1] = "ec92e1f3-b8cf-42a8-aefc-29c053d22c44"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "2", "0", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Dragonborn - Bronze defaut",
    modURL           = { "https://bg3.wiki/wiki/Dragonborn", "https://baldursgate3.wiki.fextralife.com/Dragonborn" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "829ed0e9-25dc-49ca-aee2-2494bbca180b",
    progressionUUID  = {
      [1] = "02abcdb7-301c-4ed5-9a39-223359e8d5fa"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "2", "0", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Dragonborn - Copper defaut",
    modURL           = { "https://bg3.wiki/wiki/Dragonborn", "https://baldursgate3.wiki.fextralife.com/Dragonborn" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "f0747c54-dccd-4a1b-89d3-adee8bcc8b76",
    progressionUUID  = {
      [1] = "37b52fb8-71be-45c7-889d-aca8110e931b"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "2", "0", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Dragonborn - Gold defaut",
    modURL           = { "https://bg3.wiki/wiki/Dragonborn", "https://baldursgate3.wiki.fextralife.com/Dragonborn" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "8aeadd65-f951-4004-8f65-b3cd127e1e6d",
    progressionUUID  = {
      [1] = "f6fa4014-79fc-4c9c-910b-8e3738424cac"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "2", "0", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Dragonborn - Green defaut",
    modURL           = { "https://bg3.wiki/wiki/Dragonborn", "https://baldursgate3.wiki.fextralife.com/Dragonborn" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "cc914fb7-e0eb-49f0-a195-20d11917bf1a",
    progressionUUID  = {
      [1] = "b7e781e6-fa09-4a35-993a-b59e1e52a66f"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "2", "0", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Dragonborn - Red defaut",
    modURL           = { "https://bg3.wiki/wiki/Dragonborn", "https://baldursgate3.wiki.fextralife.com/Dragonborn" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "ed5b3a12-7f18-46c2-8fe9-1ff96d44ed96",
    progressionUUID  = {
      [1] = "c0202100-b905-4791-8eaa-1c110fe0bd02"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "2", "0", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Dragonborn - Silver defaut",
    modURL           = { "https://bg3.wiki/wiki/Dragonborn", "https://baldursgate3.wiki.fextralife.com/Dragonborn" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "ccbbbf91-53a4-4777-9676-5469d3d5b821",
    progressionUUID  = {
      [1] = "04ec0b37-ddb6-405d-989a-4f3e25ed1dfe"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "2", "0", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Dragonborn - White defaut",
    modURL           = { "https://bg3.wiki/wiki/Dragonborn", "https://baldursgate3.wiki.fextralife.com/Dragonborn" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "91577000-c8f7-465b-b56f-eb6d87d173d2",
    progressionUUID  = {
      [1] = "e557c3b8-7cc1-43f8-bd8a-6838ff01e6d1"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = false,
    Stats            = { "2", "0", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Half-Orc default",
    modURL           = { "https://bg3.wiki/wiki/Half-Orc", "https://baldursgate3.wiki.fextralife.com/Half-Orc" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "74e2e44d-e8c0-4b99-a6dc-c02f43cea8a6",
    progressionUUID  = {
      [1] = "816fa8c7-7648-48f7-8309-cb4e7383e45f"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = true,
    Stats            = { "2", "0", "1", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Githyanki default",
    modURL           = { "https://bg3.wiki/wiki/Githyanki", "https://baldursgate3.wiki.fextralife.com/Githyanki" },
    modGuid          = Data.Deps.GustavDev_GUID.ModuleUUID, --GustavDev modGuid
    progressionTable = "81e2cb57-6a12-4429-b3a5-f72549355b3b",
    progressionUUID  = {
      [1] = "f653d537-bc14-4fea-b7d2-25734ec928a2",
      [2] = "1781a8fd-d8ce-4fc5-8674-6a176813917f",
      [3] = "851880cb-3b5d-4129-9b25-3bb17d849f87",
      [5] = "37ad7172-291b-4a05-b226-2734170fb4fa"
    },
    Author           = "Larian",
    SourceBook       = "PHB",
    MainRace         = true,
    Stats            = { "2", "0", "0", "1", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
--[[
|	   _____    ______________________________.____      ___________.__        _____.__  .__
|	  /  _  \  /   _____/\__    ___/\______   \    |     \__    ___/|__| _____/ ____\  | |__| ____    ____  ______
|	 /  /_\  \ \_____  \   |    |    |       _/    |       |    |   |  |/ __ \   __\|  | |  |/    \  / ___\/  ___/
|	/    |    \/        \  |    |    |    |   \    |___    |    |   |  \  ___/|  |  |  |_|  |   |  \/ /_/  >___ \
|	\____|__  /_______  /  |____|    |____|_  /_______ \   |____|   |__|\___  >__|  |____/__|___|  /\___  /____  >
|	        \/        \/                    \/        \/                    \/                   \//_____/     \/
|	         \_Astralities' Tiefling Compendium from Nexus
]] --
  {
    Name             = "Tiefling - Baalzebul",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/2418" },
    modGuid          = "167b846f-0a0b-4e0c-a9d0-df448be1320a",
    progressionTable = "e07d88b1-b935-4a65-b1be-0e8cd2a93ed5",
    progressionUUID  = {
      [1] = "ad21229c-c202-4c86-af26-b5c47d36ff01",
      [3] = "8e3b8d4f-cea8-4fa3-bcc6-76ce59c2818b",
      [5] = "97db1ad7-b238-402f-b570-1aad9ffe6447"
    },
    Author           = "Astralities",
    SourceBook       = "MToF",
    MainRace         = false,
    Stats            = { "0", "0", "0", "1", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Tiefling - Dispater",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/2418" },
    modGuid          = "167b846f-0a0b-4e0c-a9d0-df448be1320a",
    progressionTable = "aca218d9-207d-48ef-836d-3230d981480b",
    progressionUUID  = {
      [1] = "535fb417-7341-4710-b500-0ac5602de515",
      [3] = "48aff9cf-c102-4a52-9575-17dfe8030b42",
      [5] = "04a8fd56-e281-47d2-bda2-17a91d4001e6"
    },
    Author           = "Astralities",
    SourceBook       = "MToF",
    MainRace         = false,
    Stats            = { "0", "1", "0", "0", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Tiefling - Fierna",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/2418" },
    modGuid          = "167b846f-0a0b-4e0c-a9d0-df448be1320a",
    progressionTable = "fe2e40ea-bcc8-48f3-a89a-c798c382d4d7",
    progressionUUID  = {
      [1] = "929b6fe8-7415-43c7-9e2b-a3c87962e77d",
      [3] = "af89b2ed-0c02-4749-aa87-8ba1439ffd9a",
      [5] = "f06cbf74-4d0a-4857-af3e-f9dc1a17b0c2"
    },
    Author           = "Astralities",
    SourceBook       = "MToF",
    MainRace         = false,
    Stats            = { "0", "0", "0", "0", "1", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Tiefling - Glasya",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/2418" },
    modGuid          = "167b846f-0a0b-4e0c-a9d0-df448be1320a",
    progressionTable = "bda111b8-ff84-4df0-99c4-20cafcb9cace",
    progressionUUID  = {
      [1] = "1a215890-3ffc-4c4e-bf19-b70aa67c25cf",
      [3] = "d7e7274d-3a3d-417c-9a85-f4180695957a",
      [5] = "22982f8d-d5c6-42e4-bc54-9dbe9b819056"
    },
    Author           = "Astralities",
    SourceBook       = "MToF",
    MainRace         = false,
    Stats            = { "0", "1", "0", "0", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Tiefling - Levistus",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/2418" },
    modGuid          = "167b846f-0a0b-4e0c-a9d0-df448be1320a",
    progressionTable = "cddee309-0cec-4e7d-939f-06ce8aaf0da4",
    progressionUUID  = {
      [1] = "62899e1e-d6b6-448d-847c-085a07d1f41d",
      [3] = "78dc5b0a-3a0a-411d-a366-2773e0f5b8cf",
      [5] = "6628fcdf-d284-4178-8c59-04d43e064010"
    },
    Author           = "Astralities",
    SourceBook       = "MToF",
    MainRace         = false,
    Stats            = { "0", "0", "1", "0", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Tiefling - Mammon",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/2418" },
    modGuid          = "167b846f-0a0b-4e0c-a9d0-df448be1320a",
    progressionTable = "cfb80dea-6416-42d0-a7b5-3e319ab54feb",
    progressionUUID  = {
      [1] = "bf7c8b2d-5b6e-467e-b080-d85de151f57a",
      [3] = "a7e30644-2ee6-4313-a531-7477aa6f987b",
      [5] = "7a1a907c-176c-40ca-859c-a467877c38bb"
    },
    Author           = "Astralities",
    SourceBook       = "MToF",
    MainRace         = false,
    Stats            = { "0", "0", "0", "1", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Tiefling - Variant",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/2418" },
    modGuid          = "167b846f-0a0b-4e0c-a9d0-df448be1320a",
    progressionTable = "a7025e87-add5-4aa9-8b2c-4928511196b3",
    progressionUUID  = {
      [1] = "da92f08b-96fd-42b2-80f1-45b7bc9e703f",
      [3] = "d439510c-1339-4c93-bd3a-2ba7c46bcfcf",
      [5] = "2c7cc48e-1efa-45a4-bae9-aed10f7c5a6e"
    },
    Author           = "Astralities",
    SourceBook       = "SCAG",
    MainRace         = false,
    specialAbList    = "98ad0c19-5493-4629-bd87-77efa8acd70b", -- \BG3-Community-Library\CommunityLibrary\Public\CommunityLibrary\Lists\AbilityLists.lsx
    Stats            = { "0", "0", "0", "1", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    Sab              = { "2" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Tiefling - Winged",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/2418" },
    modGuid          = "167b846f-0a0b-4e0c-a9d0-df448be1320a",
    progressionTable = "ac94f1e6-88dd-4beb-9467-134811dc6f06",
    progressionUUID  = {
      [1] = "e2519a78-67c8-41d2-a276-fc4889511346",
      [3] = "3daaf875-ee4e-4a26-9a44-e252f2490cd7",
      [5] = "4f8d673d-6db0-48f1-b2bd-c6d86cc80bdb"
    },
    Author           = "Astralities",
    SourceBook       = "MToF",
    MainRace         = false,
    Stats            = { "0", "0", "0", "1", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    Sab              = { "2" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Tiefling - Nightborn",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/2418" },
    modGuid          = "167b846f-0a0b-4e0c-a9d0-df448be1320a",
    progressionTable = "47f87ed4-7729-4c69-9c4c-7cc9b9c7811d",
    progressionUUID  = {
      [1] = "fa15d3e5-3f15-4d59-857a-804098843516",
      [3] = "ad85fe1c-be40-4f37-8ce9-0db26849a69e",
      [5] = "d1268beb-5fb4-44ed-8f98-328c60daef3a"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Tiefling - Fey'ri",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/2418" },
    modGuid          = "167b846f-0a0b-4e0c-a9d0-df448be1320a",
    progressionTable = "a0dc01cd-44c5-4c71-8c65-498cabcf3def",
    progressionUUID  = {
      [1] = "3d807581-2721-4ba2-82bf-d91b345f7d81",
      [3] = "c19d58fc-739f-4377-bb70-bcf74d73cafb",
      [5] = "6240ba4e-c4d3-47c6-8494-85c69babf983"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Tiefling - Elamshinae",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/2418" },
    modGuid          = "167b846f-0a0b-4e0c-a9d0-df448be1320a",
    progressionTable = "ada184db-1af2-4046-9d17-9b8b0043bcc9",
    progressionUUID  = {
      [1] = "b42939aa-ce0d-40c7-8b0b-98cc4c122214",
      [3] = "d277c372-5655-4fce-be70-c28c0d566aa7",
      [5] = "29ff2b08-3644-4eed-9fe3-d0e6b38a33fb"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Tiefling - Velkyn'bol",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/2418" },
    modGuid          = "167b846f-0a0b-4e0c-a9d0-df448be1320a",
    progressionTable = "4de5c941-f169-4d2e-818e-d9ff72d0c7fc",
    progressionUUID  = {
      [1] = "3968f318-3ba4-4325-86f4-88ba7c01d999",
      [3] = "0933e57a-8a31-470a-916a-df1817583d78",
      [5] = "eb3049dc-64ad-4d72-9b52-dab23ef7b8b1"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Tiefling - Isilmnir'el",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/2418" },
    modGuid          = "167b846f-0a0b-4e0c-a9d0-df448be1320a",
    progressionTable = "688d197b-a2c9-4c91-b353-83d684c3ade4",
    progressionUUID  = {
      [1] = "c9ebad8c-3f9c-42ff-a2c2-53e83578df8c",
      [3] = "0df6b198-3714-4ed4-a53e-52d3e6ab1ba9",
      [5] = "51758fa9-8f2d-48b8-81ec-098d4f630f37"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  --[[
|	   _____    ______________________________.____      ___________.__
|	  /  _  \  /   _____/\__    ___/\______   \    |     \_   _____/|  | ___  __ ____   ____   ______
|	 /  /_\  \ \_____  \   |    |    |       _/    |      |    __)_ |  | \  \/ // __ \ /    \ /  ___/
|	/    |    \/        \  |    |    |    |   \    |___   |        \|  |_/\   /\  ___/|   |  \\___ \
|	\____|__  /_______  /  |____|    |____|_  /_______ \ /_______  /|____/>\_/  \___  >___|  /____  >
|	        \/        \/                    \/        \/         \/      \/          \/     \/     \/
|	         \_Astralities' Elven Anthology from Nexus
|	
]] --
  --
  -- Elves
  --
  {
    Name             = "Elf - Moon",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "556f1daf-5111-43ba-b4f9-a7a8b3a6369f",
    progressionUUID  = {
      [1] = "934762bb-eebd-4b42-b050-540148507a4a",
      [3] = "209c6c50-32d9-4f20-a43a-bad874903dd5",
      [5] = "634197a3-1a33-40f3-a75d-57095a2f60f8"
    },
    Author           = "Astralities",
    SourceBook       = "SCAG",
    MainRace         = false,
    Stats            = { "0", "2", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Elf - Snow",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "8d7d65ad-ed3f-4002-acfc-70fa10d2b570",
    progressionUUID  = {
      [1] = "02e1d9ac-bcc4-4391-9e78-5df33f60ca64"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Stats            = { "0", "0", "2", "0", "1", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Elf - Sun",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "db7176ff-abf3-4ce6-9230-4151bc5bb2d8",
    progressionUUID  = {
      [1] = "1089dddf-4e75-4e1b-bf2a-33affd0f6093"
    },
    Author           = "Astralities",
    SourceBook       = "SCAG",
    MainRace         = false,
    Stats            = { "0", "2", "1", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Elf - Lythari",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "5e11771a-9aae-4b85-92fd-d6eb6c335c09",
    progressionUUID  = {
      [1] = "9b37ca29-0d77-4a27-a662-8464ce9998bb",
      [5] = "6a0655d6-f3da-4598-8b6b-7a8191874a30",
      [9] = "29e41507-9229-4d8a-b13e-8e18b7e43b90"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Stats            = { "0", "2", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Elf - Star",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "905c3b50-906e-4394-b0fb-d8af25e718f3",
    progressionUUID  = {
      [1] = "e4c4c550-d4c7-43c5-92ba-49f93691356a"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    specialAbList    = "f87fc239-4cab-48bb-8df2-6d272fdacd4f", -- \BG3-Community-Library\CommunityLibrary\Public\CommunityLibrary\Lists\AbilityLists.lsx
    Stats            = { "0", "2", "0", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    Sab              = { "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Elf - Dusk",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "8625f132-b495-49d8-a72d-624003dbd7f6",
    progressionUUID  = {
      [1] = "50d5a39d-4497-4d71-9368-d6c8c04f97dd"
    },
    Author           = "Astralities",
    SourceBook       = "VRGtR",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  --
  -- Drow
  --
  {
    Name             = "Drow - Aevendrow",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "0e3e51f7-aee0-410e-abb5-0fa178fc0552",
    progressionUUID  = {
      [1] = "025aa2fb-2d4a-4419-9124-bbbf082f1808",
      [3] = "c46ee449-a7d1-4879-beb2-486328df6d69",
      [5] = "83b705fd-2977-49a6-9ae8-8f789b0410a7"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Drow - Lorendrow",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "bfaf8902-d84d-43ef-8687-0219859f26cd",
    progressionUUID  = {
      [1] = "2d238465-02f2-4d92-9753-c1a51b384909"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Drow - Lolthtouched",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "dceef13e-66ab-48b7-b6a1-073b5b9c585b",
    progressionUUID  = {
      [1] = "8dd9c3ff-3b51-44d5-9f52-c4fcca43ec9c",
      [4] = "06622a2f-2546-441d-a010-b9b02005407e"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Drow - Zarithra",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "1826b535-f9b9-4fba-bcfc-3e2e48d9edce",
    progressionUUID  = {
      [1] = "8742ecd7-5d7a-40bf-8b48-3798faf16bfc",
      [3] = "5211e582-0299-42d4-b957-f3eb5d422e13",
      [5] = "cb5d0e9f-4ebf-47a3-b4e7-1a33a0457f2b"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  --
  -- Half-Elves
  --
  {
    Name             = "Half-Elf - Dusk",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "a7650964-a4fd-4b0b-8ade-5b8711957371",
    progressionUUID  = {
      [1] = "26aeca77-7941-49c5-ab2a-314901e5ea12"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Half-Elf - Moon",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "1d296199-84f1-4953-a385-712646c1e925",
    progressionUUID  = {
      [1] = "762d103c-4e05-4887-a2dc-264eaa554f02",
      [3] = "3493a508-1e76-474c-ae1b-48d875d13bf2",
      [5] = "72b29560-24c6-43b3-bac1-d120b3ca05e5"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Half-Elf - Snow",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "45ab491c-429c-4496-8866-cb9ca0d64191",
    progressionUUID  = {
      [1] = "a719ffc3-fdb2-4e4d-bcef-499c11cd641d"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Half-Elf - Star",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "8f150644-d2fe-46f2-8ce4-6267898a7ba3",
    progressionUUID  = {
      [1] = "b50c9433-037c-418d-a173-13781a93cab2"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Half-Elf - Sun",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "8f150644-d2fe-46f2-8ce4-6267898a7ba3",
    progressionUUID  = {
      [1] = "c1abf705-91b3-4ad9-a1db-7083f91011b1"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Half-Elf - Lythari",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "f683feec-f996-4a96-922d-111123eabd77",
    progressionUUID  = {
      [1] = "c1abf705-91b3-4ad9-a1db-7083f91011b1"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  --
  -- Half-Drow
  --
  {
    Name             = "Half-Drow - Aevendrow",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "45beddf1-caea-43b3-a359-9651dcd2dc84",
    progressionUUID  = {
      [1] = "dc9e985a-6b20-4066-ab3d-eed16191122b",
      [3] = "74f325d2-df20-4153-9eee-e4fc20db8ac0",
      [5] = "b447231c-1cd1-40f6-9e06-907816a5c1d0"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Half-Drow - Lorendrow",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "ded2a913-f7cd-49ea-8439-158186a16153",
    progressionUUID  = {
      [1] = "3140a061-8e1f-4c9e-bca2-1c0ed5a3ae65"
    },
    Author           = "Astralities",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  --
  -- Overwrite
  --
  {
    Name             = "Drow",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "a43498f5-d72f-4a05-b721-1feea9acb3ad",
    progressionUUID  = {
      [1] = "4a634f24-bdcb-4559-b8be-7847133ad1c3",
      [3] = "334e0ddd-33cb-468f-a232-40cfe9ad23da",
      [5] = "db485b48-fc71-4de4-a62d-47675659678b"
    },
    Author           = "Astralities",
    SourceBook       = "PHB",
    MainRace         = true,
    NoDefStats       = false
  },
  {
    Name             = "Drow - Lolth",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "cda01bce-b09b-459a-bdb0-b162de09e54d",
    progressionUUID  = {
      [1] = "c91bb3ce-73d0-4330-80e1-562880a53472",
      [3] = "785f63d3-8330-4c30-adb5-7e6cfd55b786",
      [5] = "19c9dcb9-7050-464a-aaf7-11b427ab974d"
    },
    Author           = "Astralities",
    SourceBook       = "PHB",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Drow - Seldarine",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/10230" },
    modGuid          = "66b20233-cf0a-44bb-9bcf-32c0e0b09c19",
    progressionTable = "1037326e-43ed-4840-9f37-10f1efb3779a",
    progressionUUID  = {
      [1] = "3feba964-0ae4-4ae5-b2a1-e515f0973efe",
      [3] = "b20cf01c-0da1-4157-b644-83e1f8c05459",
      [5] = "2efb63f4-5b05-4abc-8ace-d46d14b90e65"
    },
    Author           = "Astralities",
    SourceBook       = "PHB",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },

  --[[
|  __      __       __ ________       _____                .__                         ____________________
| /  \    /  \_____/  |\______ \     /  _  \ _____    _____|__| _____ _____ _______   /   _____/\_   _____/
| \   \/\/   /  _ \   __\    |  \   /  /_\  \\__  \  /  ___/  |/     \\__  \\_  __ \  \_____  \  |    __)_ 
|  \        (  <_> )  | |    `   \ /    |    \/ __ \_\___ \|  |  Y Y  \/ __ \|  | \/  /        \ |        \
|   \__/\  / \____/|__|/_______  / \____|__  (____  /____  >__|__|_|  (____  /__|    /_______  //_______  /
|        \/                    \/          \/     \/     \/         \/     \/                \/         \/ 
|	        \_ WotD Aasimar - Script Extender from Nexus
]] --
  {
    Name              = "Aasimar",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/8932" },
    modGuid           = "4806bd2a-929b-406e-b1d4-2e0e9cc23bb2",
    progressionTable  = "829a8a20-3d8f-4b69-b9bc-97d1e99f2f81",
    progressionUUID   = {
      [1] = "459fe764-6f12-4533-9b84-a69d16a8832e",
      [3] = "cef8ad61-c0af-43af-ba28-8617679d192e",
      [10] = "d55baec2-5e5d-42e7-a172-b65654aa1ce2"
    },
    Author            = "Trips ♥",
    SourceBook        = "VGtML",
    MainRace          = true,
    NoDefStats        = false
  },
  {
    Name              = "Aasimar - Protector",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/8932" },
    modGuid           = "4806bd2a-929b-406e-b1d4-2e0e9cc23bb2",
    progressionTable  = "33223fd6-6eeb-4581-8368-3edef0225e95",
    progressionUUID   = {
      [1] = "63e0259e-4721-4f7e-bb75-c5d26a55dc74",
      [3] = "015ca540-22c7-4293-bf03-cedba20b1ee4"
    },
    Author            = "Trips ♥",
    SourceBook        = "VGtML",
    MainRace          = false,
    Stats             = { "0", "0", "0", "0", "1", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats        = true
  },
  {
    Name              = "Aasimar - Scourge",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/8932" },
    modGuid           = "4806bd2a-929b-406e-b1d4-2e0e9cc23bb2",
    progressionTable  = "5ff931a1-6120-4bd6-ba72-cb0864cbad04",
    progressionUUID   = {
      [1] = "2d88948b-45ec-42ce-8dc9-755b6987a8f6",
      [3] = "fa24028e-f59f-43a5-803f-ae44d19e21b5"
    },
    Author            = "Trips ♥",
    SourceBook        = "VGtML",
    MainRace          = false,
    Stats             = { "0", "0", "1", "0", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats        = true
  },
  {
    Name              = "Aasimar - Fallen",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/8932" },
    modGuid           = "4806bd2a-929b-406e-b1d4-2e0e9cc23bb2",
    progressionTable  = "9fb769b4-b7a1-43d2-bc9b-95bea9d58258",
    progressionUUID   = {
      [1] = "adab8d9e-904b-436e-ba9b-9657dd5216c6",
      [3] = "ca305d48-f13d-4698-a9bb-b4270d2068c5"
    },
    Author            = "Trips ♥",
    SourceBook        = "VGtML",
    MainRace          = false,
    Stats             = { "1", "0", "0", "0", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats        = true
  },
  {
    Name              = "Aasimar - Harbinger",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/8932" },
    modGuid           = "4806bd2a-929b-406e-b1d4-2e0e9cc23bb2",
    progressionTable  = "54d12c65-ae54-4acf-9e38-66acb975da16",
    progressionUUID   = {
      [1] = "70ed9582-33c5-44c1-8710-2fbf8281543d",
      [3] = "c78f3980-bd70-4099-a977-424ed68502ae"
    },
    Author            = "Trips ♥",
    SourceBook        = "VGtML",
    MainRace          = false,
    Stats             = { "0", "0", "0", "0", "1", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats        = true
  },
  --[[
|	_________                 __                   __________
|	\_   ___ \ __ __  _______/  |_  ____   _____   \______   \_____    ____  ____   ______
|	/    \  \/|  |  \/  ___/\   __\/  _ \ /     \   |       _/\__  \ _/ ___\/ __ \ /  ___/
|	\     \___|  |  /\___ \  |  | (  <_> )  Y Y  \  |    |   \ / __ \\  \__\  ___/ \___ \
|	 \______  /____//____  > |__|  \____/|__|_|  /  |____|_  /(____  /\___  >___  >____  >
|	        \/           \/                    \/          \/      \/     \/    \/     \/
|	         \_Custom Races from Nexus
]]
  --
  -- Half angel - Aasimar by DarthRen - https://www.nexusmods.com/baldursgate3/mods/1824
  --
  {
    Name            = "Aasimar",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1824" },
    modGuid         = "ab267ed4-b3b5-4b4f-a62c-7dbc95c968fa",
    progressionTable  = "5ab019ab-45e4-484f-bcc9-26e5fa2d7df5",
    progressionUUID = {
      [1]         = "06e918ad-be2c-48b6-a098-0288539de744",
      raceLsxUUID = "31c1d14f-2a46-4507-b9ba-b993bdffd298"
    },
    Author          = "DarthRen",
    SourceBook      = "VGtML",
    MainRace        = true,
    NoDefStats      = false
  },
  {
    Name            = "Aasimar - Radiant Soul",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1824" },
    modGuid         = "ab267ed4-b3b5-4b4f-a62c-7dbc95c968fa",
    progressionTable  = "0bbf96f6-713d-430c-885c-9b26b6e1bcf1",
    progressionUUID = {
      [1] = "4c2c61ae-5904-4576-a8c5-efecce67ab82"
    },
    Author          = "DarthRen",
    SourceBook      = "VGtML",
    MainRace        = false,
    Stats           = { "0", "0", "0", "0", "1", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = true
  },
  {
    Name            = "Aasimar - Radiant Consumption",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1824" },
    modGuid         = "ab267ed4-b3b5-4b4f-a62c-7dbc95c968fa",
    progressionTable  = "6e2215dd-4806-4fe2-9024-33728293e0b5",
    progressionUUID = {
      [1] = "56d62681-9769-4ad7-9bbf-4f72db44f070"
    },
    Author          = "DarthRen",
    SourceBook      = "VGtML",
    MainRace        = false,
    Stats           = { "0", "0", "1", "0", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = true
  },
  {
    Name            = "Aasimar - Necrotic Shroud",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1824" },
    modGuid         = "ab267ed4-b3b5-4b4f-a62c-7dbc95c968fa",
    progressionTable  = "61fc67e9-5eae-4a32-8413-05c1e327e6ba",
    progressionUUID = {
      [1] = "1b07140b-98c1-42e8-b4ec-072622862dc2"
    },
    Author          = "DarthRen",
    SourceBook      = "VGtML",
    MainRace        = false,
    Stats           = { "0", "0", "1", "0", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = true
  },
  --
  -- Raven Queen's Chosen - Shadar-Kai by NellsRelo - https://www.nexusmods.com/baldursgate3/mods/1305
  --
  {
    Name            = "Shadar-Kai",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1305" },
    modGuid         = "c36d595f-70d1-44f1-8ca6-4ad14186f489",
    progressionTable  = "",
    progressionUUID = {
      [1] = "2f7edf7e-0a6b-4018-9715-1cb8aa238e4a"
    },
    Author          = "NellsRelo",
    SourceBook      = "MToF",
    Comments        = "The Sea Elves and the Shadar-kai, originally published as playtest material in this Unearthed Arcana,\
were officially released today (May 29, 2018) as part of Mordenkainen's Tome of Foes;\
the Eladrin elf subrace was included as well.\
The Avariel and Grugach, as far as I know, were not released.",
    MainRace        = false,
    Stats           = { "0", "2", "1", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = true
  },
  --
  -- Cryptic Shadows - Shadar-Kai by tepkunset - https://www.nexusmods.com/baldursgate3/mods/11454
  --
  {
    Name            = "Shadar-Kai",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/11454" },
    modGuid         = "f65633b8-1af5-476e-87c8-3a9d64992ada",
    progressionTable  = "8a914d2d-62e6-4af9-9ecc-8caff547c464",
    progressionUUID = {
      [1] = "119e981f-bf64-447a-af08-50a471320087",
      [1] = "318b5b0a-0d83-484d-87e7-8a9442f15cc9"
    },
    Author          = "tepkunset",
    SourceBook      = "MToF",
    Comments        = "The Sea Elves and the Shadar-kai, originally published as playtest material in this Unearthed Arcana,\
were officially released today (May 29, 2018) as part of Mordenkainen's Tome of Foes;\
the Eladrin elf subrace was included as well.\
The Avariel and Grugach, as far as I know, were not released.",
    MainRace        = false,
    Stats           = { "0", "2", "1", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = true
  },
  --
  -- Rising Tides - Sea Elves by tepkunset - https://www.nexusmods.com/baldursgate3/mods/11284
  --
  {
    Name            = "Sea Elves",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/11284" },
    modGuid         = "23dae00e-c5b6-41ac-9464-55117f0bb95d",
    progressionTable  = "3a98253e-7940-456f-884d-f86c33e33537",
    progressionUUID = {
      [1] = "8d901d19-7e5d-4491-a195-1e8a88cddd77"
    },
    Author          = "tepkunset",
    SourceBook      = "MToF",
    Comments        = "The Sea Elves and the Shadar-kai, originally published as playtest material in this Unearthed Arcana,\
were officially released today (May 29, 2018) as part of Mordenkainen's Tome of Foes;\
the Eladrin elf subrace was included as well.\
The Avariel and Grugach, as far as I know, were not released.",
    MainRace        = false,
    Stats           = { "0", "2", "1", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = true
  },
  --
  -- Shadar-Kai (drow tag) by WintersPast - https://www.nexusmods.com/baldursgate3/mods/2476
  --
  {
    Name            = "Shadar-Kai",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/2476" },
    modGuid         = "c36d595f-70d1-44f1-8ca6-4ad14186f489",
    progressionTable  = "8c9382d2-b198-402b-98fb-beb8274c755f",
    progressionUUID = {
      [1] = "96ad7abb-8a86-4939-913d-71f84191f7d7",
      [3] = "008a0785-cdd0-4bc5-9305-0cc8939c7c60",
      [5] = "b6a1756e-8ada-42d7-94ab-2cfb7ac1f93e",
      [9] = "321c053b-3b9d-4c0f-a4b7-91dbd3769ee6",
      [13] = "fa303eae-cdc9-428e-beb5-770132fa97fc",
      [17] = "60990573-9a8c-4637-be11-d364954bd0d6"
    },
    Author          = "WintersPast",
    SourceBook      = "MToF",
    Comments        = "The Sea Elves and the Shadar-kai, originally published as playtest material in this Unearthed Arcana,\
were officially released today (May 29, 2018) as part of Mordenkainen's Tome of Foes;\
the Eladrin elf subrace was included as well.\
The Avariel and Grugach, as far as I know, were not released.",
    MainRace        = false,
    Stats           = { "0", "2", "1", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = true
  },
  --
  -- Flutter and Whimsy - Fairy by labotor - https://www.nexusmods.com/baldursgate3/mods/5127
  --
  {
    Name              = "Fairy",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/5127" },
    modGuid           = "673c5b7b-a274-4916-ad89-4e3c591e1187",
    progressionTable  = "2a6c5f35-1019-49de-9b6f-bccc9311078a",
    progressionUUID   = {
      [1] = "7b4d6e73-c54f-41ed-bd69-c25be95e9717",
      [3] = "43d8f11c-e269-4f3c-a2ad-fa6492528958",
      [5] = "6825e6ca-51cb-431c-8fb6-095061959c07",
      [7] = "9a1b4d92-e087-415c-a552-0051984c11ec"
    },
    Author            = "labotor",
    SourceBook        = "MPMotM",
    MainRace          = true,
    Sab               = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = true --cuz not have subrace
  },
  --
  -- Owlin by HornbirdDotMod - https://www.nexusmods.com/baldursgate3/mods/8113
  --
  {
    Name              = "Owlin",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/8113" },
    modGuid           = "c1e87b16-c845-4254-b831-bb22b13016fb", -- old "315ce1a1-0f24-4777-90d9-06b01a93a716",
    progressionTable  = "a15bb8f0-1edf-4724-99db-06093627dba1",
    progressionUUID   = {
      [1] = "da629716-fd76-477d-9934-0473904fe04b",           -- old "b5f04836-e2ef-4eb6-93d5-4aad7f3b1c20"
      [3] = "e69323c9-2b75-4ca7-9d6e-fb8e1f872bb0"
    },
    Author            = "HornbirdDotMod",
    SourceBook        = "SACoC",
    MainRace          = true,
    NoDefStats        = false
  },
  {
    Name              = "Owlin - Forest",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/8113" },
    modGuid           = "c1e87b16-c845-4254-b831-bb22b13016fb", -- old "315ce1a1-0f24-4777-90d9-06b01a93a716",
    progressionTable  = "d82020ea-455a-4330-889b-a1f953dd53be",
    progressionUUID   = {
      [1] = "9bb01d19-30fb-4478-bf55-d98dcacb228b"
    },
    Author            = "HornbirdDotMod",
    SourceBook        = "SACoC",
    MainRace          = false,
    Sab               = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = true
  },
  {
    Name              = "Owlin - Snow",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/8113" },
    modGuid           = "c1e87b16-c845-4254-b831-bb22b13016fb", -- old "315ce1a1-0f24-4777-90d9-06b01a93a716",
    progressionTable  = "3c60049b-f15d-47a9-adfc-3533259dbf2c",
    progressionUUID   = {
      [1] = "837d45f1-17fb-407b-8c3c-ed83427036cf"
    },
    Author            = "HornbirdDotMod",
    SourceBook        = "SACoC",
    MainRace          = false,
    Sab               = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = true
  },
  --
  -- Myconid by Porridge - https://www.nexusmods.com/baldursgate3/mods/5535
  --
  {
    Name            = "Myconid",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/5535" },
    modGuid         = "71486ac7-a05c-434e-8e3b-9e6c2d40a04a",
    progressionTable  = "257bb459-3a9e-4bea-b4e2-349e3a9ac3ef",
    progressionUUID = {
      [1] = "ada1a74c-89dd-45f9-95dd-f88bf59e3535",
      [2] = "2b3737a3-5667-4b3b-b60a-523fda735058",
      [3] = "47b803b3-4d2d-4709-92cd-e30db898a941"
    },
    Author          = "Porridge",
    SourceBook      = "",
    MainRace        = true,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true --cuz not have subrace
  },
  --
  -- Playable Genasi race by Saveiro - https://www.nexusmods.com/baldursgate3/mods/4557
  --
  {
    Name              = "Genasi",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/4557" },
    modGuid           = "02defebb-63e4-454e-9b74-1a024398a099",
    progressionTable  = "40e1b9aa-045c-4b2b-842b-e6e5b676eb31",
    progressionUUID   = {
      [1] = "e4192766-499e-471b-a2a5-66c163daca84"
    },
    Author            = "Saveiro",
    SourceBook        = "MPMotM",
    MainRace          = true,
    NoDefStats        = false
  },
  {
    Name              = "Genasi - Air",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/4557" },
    modGuid           = "02defebb-63e4-454e-9b74-1a024398a099",
    progressionTable  = "473e8c541-2387-4f7b-92a8-a34bcc800adc",
    progressionUUID   = {
      [1] = "fb1fde77-b497-4516-a40e-8427677e59ca",
      [3] = "a013bc79-1563-4419-9d94-e9af261afb99"
    },
    Author            = "Saveiro",
    SourceBook        = "MPMotM",
    MainRace          = false,
    Sab               = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = true
  },
  {
    Name              = "Genasi - Earth",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/4557" },
    modGuid           = "02defebb-63e4-454e-9b74-1a024398a099",
    progressionTable  = "a09e6a27-473c-41d2-a2a9-dfdd0db141d3",
    progressionUUID   = {
      [1] = "cffa916e-3999-4d6a-b15d-37c37fceca64"
    },
    Author            = "Saveiro",
    SourceBook        = "MPMotM",
    MainRace          = false,
    Sab               = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = true
  },
  {
    Name              = "Genasi - Fire",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/4557" },
    modGuid           = "02defebb-63e4-454e-9b74-1a024398a099",
    progressionTable  = "5f194c5b-e22b-403e-945b-8212f0d1760d",
    progressionUUID   = {
      [1] = "fd0889a1-2b2f-4d88-a49a-972c4c07da87",
      [3] = "0427b7eb-3f01-4d1e-b52d-6598378f631d",
      [5] = "74ee1c40-5042-40bf-b37a-5fc7a79e3ce2"
    },
    Author            = "Saveiro",
    SourceBook        = "MPMotM",
    MainRace          = false,
    Sab               = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = true
  },
  {
    Name              = "Genasi - Slime",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/4557" },
    modGuid           = "02defebb-63e4-454e-9b74-1a024398a099",
    progressionTable  = "8ea665e2-efd9-471c-9fe4-4fb9a0bc4796",
    progressionUUID   = {
      [1] = "042348d8-dcf2-4948-80b9-a85bc906d45d",
      [3] = "df46332f-6068-42a4-82a3-ea5b2dc12cd8"
    },
    Author            = "Saveiro",
    SourceBook        = "MPMotM",
    MainRace          = false,
    Sab               = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = true
  },
  {
    Name              = "Genasi - Water",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/4557" },
    modGuid           = "02defebb-63e4-454e-9b74-1a024398a099",
    progressionTable  = "64bba33e-9a97-4f18-9f29-717302fe2168",
    progressionUUID   = {
      [1] = "65262b80-81f7-48cb-b67d-7cb0024d13d9",
      [3] = "cd8a8e67-249c-49d1-b082-c88a3923a1c5",
      [5] = "9cc3a788-7d4c-475b-be36-56d27d50dc0e"
    },
    Author            = "Saveiro",
    SourceBook        = "MPMotM",
    MainRace          = false,
    Sab               = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = true
  },
  --
  -- Elemental Power - Genasi by tekunset - https://www.nexusmods.com/baldursgate3/mods/4741
  --
  {
    Name              = "Genasi",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/4741" },
    modGuid           = "97954f72-711b-4938-a5ae-6a477b2ed574",
    progressionTable  = "7fd5b820-63d8-4c31-ab3e-b8a05b92f220",
    progressionUUID   = {
      [1] = "e808d2a5-a9eb-403f-bab9-90a5114a699c"
    },
    Author            = "tekunset",
    SourceBook        = "MPMotM",
    MainRace          = true,
    NoDefStats        = false
  },
  {
    Name              = "Genasi - Fire",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/4741" },
    modGuid           = "97954f72-711b-4938-a5ae-6a477b2ed574",
    progressionTable  = "81b3ae87-b67f-41d2-a208-c47ffa778b3e",
    progressionUUID   = {
      [1] = "ce1b1155-fc91-4dde-9ebb-ec06c103b944",
      [2] = "3bd8c520-6e26-4366-a175-926703c108db",
      [3] = "6bd1d862-1d09-46bf-8dbc-8e3b6260d6e0",
      [4] = "71b47a8c-96bc-4376-9f5f-a4f48615693f",
      [5] = "a11ba265-b732-4ed5-8125-438226a3f39c"
    },
    Author            = "tekunset",
    SourceBook        = "MPMotM",
    MainRace          = false,
    Sab               = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = true
  },
  {
    Name              = "Genasi - Air",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/4741" },
    modGuid           = "97954f72-711b-4938-a5ae-6a477b2ed574",
    progressionTable  = "d701b6c6-d54e-4142-a68f-1ba58432d17f",
    progressionUUID   = {
      [1] = "1b933d13-bb4b-4806-97ed-92ef7dc75738",
      [2] = "dab820a0-d59c-4c13-a0b1-6b5391095854",
      [3] = "83f945c7-28b2-4881-bd8a-247fcad7cfce",
      [4] = "e99453e9-50ba-467a-bf71-1322426681ef",
      [5] = "d1867424-60d0-4464-a955-48d714160291"
    },
    Author            = "tekunset",
    SourceBook        = "MPMotM",
    MainRace          = false,
    Sab               = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = true
  },
  {
    Name              = "Genasi - Earth",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/4741" },
    modGuid           = "97954f72-711b-4938-a5ae-6a477b2ed574",
    progressionTable  = "8abe538b-08d5-4a5d-b7ba-5014e297233e",
    progressionUUID   = {
      [1] = "ffcdbf2d-9500-46a0-9827-a8898e7e0553",
      [2] = "97410e2d-43b9-436a-866a-ef47c22fed3c",
      [3] = "97d705e1-4a11-4cef-862f-bf7893c3c675",
      [4] = "77cd8f50-7cb2-48cc-8618-8d2334a4fdc9",
      [5] = "505a3857-cd02-4ae2-bf3b-fe217af3906e"
    },
    Author            = "tekunset",
    SourceBook        = "MPMotM",
    MainRace          = false,
    Sab               = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = true
  },
  {
    Name              = "Genasi - Water",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/4741" },
    modGuid           = "97954f72-711b-4938-a5ae-6a477b2ed574",
    progressionTable  = "08b69cc8-cd34-4ff5-ab55-f6ba9adb5bd2",
    progressionUUID   = {
      [1] = "ca4b22d5-24b2-43f2-a550-b9d9e7d4d7bc",
      [2] = "75d50042-b97e-4622-a236-23dee51046dc",
      [3] = "58aec2c1-3e2e-47a0-baf8-55ed70df2d2d",
      [4] = "7a7a591b-b47e-4c4a-ae70-44ee1b4d80e8",
      [5] = "00d4051a-a8e1-4566-9540-8a9400a134ef"
    },
    Author            = "tekunset",
    SourceBook        = "MPMotM",
    MainRace          = false,
    Sab               = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = true
  },
  --
  -- Half-Dragon by Val aka Jo - https://www.nexusmods.com/baldursgate3/mods/2634
  --
  {
    Name            = "Half-Dragon",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/2634" },
    modGuid         = "16ba58e4-3ee5-4cfd-81e8-5a9f6d3f6b46",
    progressionTable  = "0c8e8bd7-d950-4bd0-849a-a2cca7d8d6ab",
    progressionUUID = {
      [1] = "72a06fbf-e1b3-4321-b975-a4a26d9b4b71"
    },
    Author          = "Val aka Jo",
    SourceBook      = "",
    MainRace        = true,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true --cuz not have subrace
  },
  {
    Name            = "Half-Dragon - High",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/2634" },
    modGuid         = "16ba58e4-3ee5-4cfd-81e8-5a9f6d3f6b46",
    progressionTable  = "1320609c-f3bb-4d91-a57e-0753968ebd92",
    progressionUUID = {
      [1] = "3e431e0f-3962-4340-9fbc-a6656fca0e6c",
      [2] = "eeba6761-a850-4028-b2bf-be6b406a6105",
      [3] = "bf42e530-2bd3-4bd8-8b54-fc3acadf29f5",
      [4] = "87480eed-02b2-4eaf-acd4-c458183d9310",
      [5] = "7a51b938-c087-47fc-b328-afe42e468649",
      [6] = "bae956e3-a0af-4fb5-80c2-9c26b977a100",
      [8] = "eb8f45a5-2708-4810-a85a-f497702a4fef",
      [9] = "d362d963-a22f-4ab8-9da1-b1d352e04ce9",
      [10] = "2f903b54-05de-44e2-9c4d-159a502c501c",
      [11] = "7cc976e8-cae6-4785-9d6a-a7eb99993826",
      [12] = "5100dab5-b8be-49ce-8e3f-e698cde4c1dd"
    },
    Author          = "Val aka Jo",
    SourceBook      = "",
    MainRace        = false,
    NoDefStats      = false
  },
  {
    Name            = "Half-Dragon - Lesser",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/2634" },
    modGuid         = "16ba58e4-3ee5-4cfd-81e8-5a9f6d3f6b46",
    progressionTable  = "ec9ae40a-101c-431c-be91-1c771d3493af",
    progressionUUID = {
      [1] = "846ea674-ff5b-47dc-9160-40660a96a464",
      [4] = "83660704-4a07-416e-b874-b7cc8a10fa2d",
      [5] = "afeeb5fe-b93e-4650-b7e7-93051bfc95ad",
      [8] = "0ac96921-9420-4d30-ad3f-6a2994f0834e",
      [12] = "053890d6-a946-41f0-8846-0169ced930ef"
    },
    Author          = "Val aka Jo",
    SourceBook      = "",
    MainRace        = false,
    NoDefStats      = false
  },
  {
    Name            = "Half-Dragon - Draconic Soul",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/2634" },
    modGuid         = "16ba58e4-3ee5-4cfd-81e8-5a9f6d3f6b46",
    progressionTable  = "9f2f35ab-a5fb-4164-ab7b-500b6309d33b",
    progressionUUID = {
      [1] = "202005d0-658d-4ac9-bf57-12c31218a626",
      [5] = "e67ac821-bffd-4465-bd7f-bc0fad3803e3"
    },
    Author          = "Val aka Jo",
    SourceBook      = "",
    MainRace        = false,
    NoDefStats      = false
  },
  --
  -- Hobgoblin by GentlemanBabbo - https://github.com/GentlemanBabbo/Hobgoblin/tree/main
  --
  {
    Name            = "Hobgoblin",
    modURL          = { "https://github.com/GentlemanBabbo/Hobgoblin/tree/main" },
    modGuid         = "42152a0b-9b3c-4d63-8114-3ceba848f3e2",
    progressionTable  = "",
    progressionUUID = {
      [1] = "575fa3d3-cf83-4716-8cc3-8d971666b051"
    },
    Author          = "GentlemanBabbo",
    SourceBook      = "MPMotM",
    MainRace        = true,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = false
  },

  --[[
  TODO SUBRACE HOBGOBELIN
  ]]---

  --
  -- Witch Elf by CovenElf - https://www.nexusmods.com/baldursgate3/mods/3490
  --
  {
    Name            = "Witch Elf",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/3490" },
    modGuid         = "1aa49383-9208-4cc0-96b6-e827819d71d0",
    progressionTable  = "5f95545e-3147-4f81-b42e-a31b9cd29b85",
    progressionUUID = {
      [1] = "d19f42b3-1c1e-46cd-83e4-fd964426616f"
    },
    Author          = "CovenElf",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true
  },
  --
  -- Wine and Revelry - Satyr by labotor - https://www.nexusmods.com/baldursgate3/mods/428
  --
  {
    Name            = "Satyr",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/428" },
    modGuid         = "68315895-8bd4-4d53-aefc-1b853ffc1461",
    progressionTable  = "7e91ca72-fcaf-4cd7-b0a4-7ccf53148604",
    progressionUUID = {
      [1] = "eb3ac23d-3f7f-44d5-ad6a-bb99232d63bd"
    },
    Author          = "labotor",
    SourceBook      = "",
    MainRace        = true,
    Stats           = { "0", "1", "0", "0", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- Transient Guests Are We - Dhampir by Ne Dragon - https://www.nexusmods.com/baldursgate3/mods/4750
  --
  {
    Name            = "Dhampir",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/4750" },
    modGuid         = "7a4aaaca-88a7-41c4-98d6-de2df39496fe",
    progressionTable  = "9add9a21-e933-4324-a438-6122a15557b4",
    progressionUUID = {
      [1] = "58971151-461d-4556-8db7-5894af1dceb2",
      [3] = "2be94888-8406-45fa-96a0-139a2c71c1e5",
      [5] = "70f2db13-e332-47f2-a464-a7aafbe947b3",
      [10] = "6876ea2c-f42b-4bb4-9145-cb70d207b1e3"
    },
    Author          = "Ne Dragon",
    SourceBook      = "VRGtR",
    MainRace        = true,
    Stats           = { "0", "1", "0", "0", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- Dhampir by Sassandra Baerne - https://www.nexusmods.com/baldursgate3/mods/4761
  --
  {
    Name            = "Dhampir", -- look unused
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/4761" },
    modGuid         = "5114d845-2c0f-441c-a01b-91a1847a48bc",
    progressionTable  = "257bb459-3a9e-4bea-b4e2-349e3a9ac3ef",
    progressionUUID = {
      [1] = "b5f04836-e2ef-4eb6-93d5-4aad7f3b1c20",
    },
    Author          = "Sassandra Baerne",
    SourceBook      = "P",
    MainRace        = true,
    NoDefStats      = false
  },
  {
    Name            = "Dhampir - RU_SHI",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/4761" },
    modGuid         = "5114d845-2c0f-441c-a01b-91a1847a48bc",
    progressionTable  = "8d7d65ad-ed3f-4002-acfc-70fa10d2b570",
    progressionUUID = {
      [1] = "042e6092-1602-4338-b6f9-cc7987f3bff4" --Warning, conflit avec playable Undead (legacy) and Mori's Astral Elves
    },
    Author          = "Sassandra Baerne",
    Comments        = "Progression UUID conflict with playable undead",
    SourceBook      = "P",
    MainRace        = false,
    Stats           = { "2", "-2", "0", "2", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Dhampir - SVETOCHER",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/4761" },
    modGuid         = "5114d845-2c0f-441c-a01b-91a1847a48bc",
    progressionTable  = "72cd2e8c-e3d1-45a3-aac6-ed9f31bdef9e",
    progressionUUID = {
      [1] = "ceae071e-2ff2-4043-a2b8-a7fc1ab16065"
    },
    Author          = "Sassandra Baerne",
    SourceBook      = "P",
    MainRace        = false,
    Stats           = { "2", "0", "-2", "0", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Dhampir - AJIBACHANA",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/4761" },
    modGuid         = "5114d845-2c0f-441c-a01b-91a1847a48bc",
    progressionTable  = "22c50f6b-00a8-4104-bd7f-1134ec474e66",
    progressionUUID = {
      [1] = "65930b4d-75ca-4968-93b0-dde6662d5882"
    },
    Author          = "Sassandra Baerne",
    SourceBook      = "P",
    MainRace        = false,
    Stats           = { "0", "2", "0", "2", "-2", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Dhampir - ANCIENTBORN",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/4761" },
    modGuid         = "5114d845-2c0f-441c-a01b-91a1847a48bc",
    progressionTable  = "b2fbeed8-2cd4-4dc1-9534-85b24995fe4e",
    progressionUUID = {
      [1] = "ebd122f3-9223-4cc0-ac98-3810995dde9b"
    },
    Author          = "Sassandra Baerne",
    SourceBook      = "P",
    MainRace        = false,
    Stats           = { "2", "0", "-2", "0", "2", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- Followers Of Zerthimon - Githzerai by Kaz - https://www.nexusmods.com/baldursgate3/mods/3460
  --
  {
    Name            = "Githzerai (1.4)",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/3460" },
    modGuid         = "ae6eacb7-f346-418f-89a9-f0e4c697baab",
    progressionTable  = "",
    progressionUUID = {
      [1] = "8e8928df-70b1-43c0-bc86-40b32c455bee"
    },
    Author          = "Kaz",
    SourceBook      = "PAitM",
    MainRace        = true,
    Stats           = { "0", "0", "0", "1", "2", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Githzerai (1.5)",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/3460" },
    modGuid         = "d6d1028e-68fb-4e94-83d8-e8951f55b86a",
    progressionTable  = "",
    progressionUUID = {
      [1] = "8e8928df-70b1-43c0-bc86-40b32c455bee"
    },
    Author          = "Kaz",
    SourceBook      = "PAitM",
    MainRace        = true,
    Stats           = { "0", "0", "0", "1", "2", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- Spirited Seasons - Fey Eladrin by tepkunset - https://www.nexusmods.com/baldursgate3/mods/7037
  --
  {
    Name            = "Fey Eladrin",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/7037" },
    modGuid         = "abc09812-ed4d-43ff-9a93-ee46487e81d9",
    progressionTable  = "0978ac75-f50d-4606-b57d-37291245022d",
    progressionUUID = {
      [1] = "c2c089df-c622-4074-ab18-a4bde879a055"
    },
    Author          = "tepkunset",
    SourceBook      = "MToF",
    MainRace        = true,
    NoDefStats      = false
  },
  {
    Name            = "Fey Eladrin - Winter",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/7037" },
    modGuid         = "abc09812-ed4d-43ff-9a93-ee46487e81d9",
    progressionTable  = "f41055e6-2425-4cf9-b25f-6b227c486ada",
    progressionUUID = {
      [1] = "83132733-dfd4-45d6-b117-8d33b5550c8e",
      [2] = "aac1f629-83bc-4fc2-8d2c-d866a6140832",
      [3] = "4234da77-3404-42e4-b621-ec6451ec229b"
    },
    Author          = "tepkunset",
    SourceBook      = "MToF",
    MainRace        = false,
    Stats           = { "0", "2", "0", "0", "1", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Fey Eladrin - Spring",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/7037" },
    modGuid         = "abc09812-ed4d-43ff-9a93-ee46487e81d9",
    progressionTable  = "346296a3-2c07-4329-9a49-55edacb988a8",
    progressionUUID = {
      [1] = "734b5fab-6654-49be-971a-e0d0ddede50d",
      [2] = "966afb46-efde-4dce-b6f6-25dfc3b1f160",
      [3] = "0872ab9f-983e-410f-900b-131b07715a64"
    },
    Author          = "tepkunset",
    SourceBook      = "MToF",
    MainRace        = false,
    Stats           = { "0", "2", "0", "0", "1", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Fey Eladrin - Summer",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/7037" },
    modGuid         = "abc09812-ed4d-43ff-9a93-ee46487e81d9",
    progressionTable  = "7b03ae3c-a63c-44d2-b253-cc7dfb0107a2",
    progressionUUID = {
      [1] = "39d96060-532d-4814-9098-a6c0524d3b73",
      [2] = "38811d17-ddac-4045-a3f9-3e1ce46d5b69",
      [3] = "ae50030d-0676-49b2-bddc-5c743c87316f"
    },
    Author          = "tepkunset",
    SourceBook      = "MToF",
    MainRace        = false,
    Stats           = { "0", "2", "0", "0", "1", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Fey Eladrin - Autumn",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/7037" },
    modGuid         = "abc09812-ed4d-43ff-9a93-ee46487e81d9",
    progressionTable  = "442c017e-8cd3-48a5-af81-87c0a9362436",
    progressionUUID = {
      [1] = "09e3d698-1ef6-46ef-b768-f19b94d46127",
      [2] = "a3f1a592-2ea1-4f51-bf43-f5b901155068",
      [3] = "eed76014-26ab-4616-a723-406c36c676fd"
    },
    Author          = "tepkunset",
    SourceBook      = "MToF",
    MainRace        = false,
    Stats           = { "0", "2", "0", "0", "1", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- Eladrin by SteveTheDM - https://www.nexusmods.com/baldursgate3/mods/3506
  --
  {
    Name            = "Eladrin",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/3506" },
    modGuid         = "c20bb0be-8f18-419f-98f4-e318ef738392",
    progressionTable  = "69c02d23-ef59-453b-9f73-00db111b239b",
    progressionUUID = {
      [1] = "3c96263f-ea29-4c3e-8790-56c094a18229",
      [3] = "47c6a97b-ce77-4c0c-b0e9-a5be61440761",
      [5] = "703ad95d-22c9-4d64-9a70-67c384c305cc",
      [9] = "963802e5-f766-4be3-9e85-8ca00b27e1a2",
      [13] = "d4c7df5c-5a70-43ac-bdc7-3f4b424a514c",
      [17] = "eb8f148e-46c7-4dbb-a2d0-b7f4ef89ccc8"
    },
    Author          = "SteveTheDM",
    SourceBook      = "MToF",
    MainRace        = true,
    Stats           = { "0", "2", "0", "0", "1", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- Forest Friends - Firbolgs by tepkunset - https://www.nexusmods.com/baldursgate3/mods/7757
  --
  {
    Name              = "Firbolgs",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/7757" },
    modGuid           = "ecfb9910-1b38-4bbc-a873-4f2812fff276",
    progressionTable  = "6964d589-a2e3-484f-8a58-35a6042713a5",
    progressionUUID   = {
      [1] = "7eede716-00f0-43aa-ad18-f001f8c7c283"
    },
    Author            = "tepkunset",
    SourceBook        = "MPMotM",
    MainRace          = true,
    Stats             = { "1", "0", "0", "0", "2", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats        = false
  },
  --
  -- Enter Maztica - unstone Gnome by SydMeier - https://www.nexusmods.com/baldursgate3/mods/9205
  --
  {
    Name            = "Enter Maztica: Sunstone Gnome Subrace",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/9205" },
    modGuid         = "7c7407ec-e2a8-4deb-a6dc-6cbc7bea2894",
    progressionTable  = "",
    progressionUUID = {
      [1] = "3d7c0866-0357-43e1-ace0-b9c7f8bd90be"
    },
    Author          = "SydMeier",
    SourceBook      = "",
    MainRace        = false,
    Stats           = { "0", "1", "0", "2", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- Enter Maztica - Desert Dwarf by SydMeier - https://www.nexusmods.com/baldursgate3/mods/9210
  --
  {
    Name            = "Enter Maztica: Desert Dwarf Subrace",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/9210" },
    modGuid         = "1a3a0820-48e3-45b4-822a-7ee31e5d25c5",
    progressionTable  = "",
    progressionUUID = {
      [1] = "75c28431-cd41-4256-af2e-0cadd4f8c2f8"
    },
    Author          = "SydMeier",
    SourceBook      = "",
    MainRace        = false,
    Stats           = { "0", "1", "2", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- Beyond Faerun - Tinker Gnome by SydMeier - https://www.nexusmods.com/baldursgate3/mods/9547
  --
  {
    Name            = "Tinker Gnome",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/9547" },
    modGuid         = "0b1613ac-1610-4ac4-ba8b-effe33317fd1",
    progressionTable  = "",
    progressionUUID = {
      [1] = "a0ae2974-b54a-4e17-ba69-cde2f7448338"
    },
    Author          = "SydMeier",
    SourceBook      = "ERftLW",
    MainRace        = false,
    Stats           = { "0", "2", "0", "2", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- Beyond Faerun - Whisper Gnome by SydMeier - https://www.nexusmods.com/baldursgate3/mods/9546
  --
  {
    Name            = "Beyond Faerûn: Whisper Gnome Subrace",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/9546" },
    modGuid         = "f13d31f7-c897-494c-a988-bca2a71ccddc",
    progressionTable  = "",
    progressionUUID = {
      [1] = "d45a8d46-8a68-4065-98da-9cc84bb2e3b1"
    },
    Author          = "SydMeier",
    SourceBook      = "ERftLW",
    MainRace        = false,
    Stats           = { "0", "2", "2", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- Haunted Warriors - Ghostwise Halfling by SydMeier - https://www.nexusmods.com/baldursgate3/mods/8617
  --
  {
    Name            = "Halfling - Ghostwise",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/8617" },
    modGuid         = "f8f5f704-d463-4616-a321-9460060538ff",
    progressionTable  = "3de86dee-fab0-4515-a321-27aed1fc98df",
    progressionUUID = {
      [1] = "0194f214-ffce-4e74-94b6-09e76a270e49",
      [3] = "0f1c239c-e759-4dfc-8d65-f0f6698d2b4c"
    },
    Author          = "SydMeier",
    SourceBook      = "SCAG",
    MainRace        = false,
    Stats           = { "0", "2", "0", "0", "1", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- Enter Maztica - Wild Halfling by SydMeier - https://www.nexusmods.com/baldursgate3/mods/9211
  --
  {
    Name            = "Halfling - Wild",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/9211" },
    modGuid         = "9e7836a9-b1a9-4d4e-9089-563c43f4fb1e",
    progressionTable  = "",
    progressionUUID = {
      [1] = "e8ccff14-10b6-43f7-bbfa-22ab2104f4fc"
    },
    Author          = "SydMeier",
    SourceBook      = "",
    MainRace        = false,
    Stats           = { "0", "2", "0", "0", "1", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- Godkin by Onyxeagle171 - https://www.nexusmods.com/baldursgate3/mods/9564
  --
  {
    Name            = "Godkin",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/9564" },
    modGuid         = "66eab192-a288-48f0-a814-4657f0599163",
    progressionTable  = "447e6245-c1c4-4f48-ac91-768711bd3e22",
    progressionUUID = {
      [1] = "d2bf964a-24dc-4ed9-bac4-11f669ff0001",
      [3] = "d2bf964a-24dc-4ed9-bac4-11f669ff0003",
      [9] = "d2bf964a-24dc-4ed9-bac4-11f669ff0009",
      [13] = "d2bf964a-24dc-4ed9-bac4-11f669ff0013",
      [17] = "d2bf964a-24dc-4ed9-bac4-11f669ff0017"
    },
    Author          = "Onyxeagle171",
    SourceBook      = "",
    MainRace        = true,
    NoDefStats      = false
  },
  {
    Name            = "Godkin - Moonshard",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/9564" },
    modGuid         = "66eab192-a288-48f0-a814-4657f0599163",
    progressionTable  = "45fa65a0-ac3b-4aa8-89ad-3424f5b87735",
    progressionUUID = {
      [1] = "fbe8014a-3de9-47e4-88ef-471e44fe1001",
      [3] = "fbe8014a-3de9-47e4-88ef-471e44fe1002",
      [5] = "fbe8014a-3de9-47e4-88ef-471e44fe1003"
    },
    Author          = "Onyxeagle171",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = false
  },
  {
    Name            = "Godkin - Sunshard",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/9564" },
    modGuid         = "66eab192-a288-48f0-a814-4657f0599163",
    progressionTable  = "45fa65a0-ac3b-4aa8-89ad-3424f5b87702",
    progressionUUID = {
      [1] = "fbe8014a-3de9-47e4-88ef-471e44fe2001",
      [3] = "fbe8014a-3de9-47e4-88ef-471e44fe2002",
      [5] = "fbe8014a-3de9-47e4-88ef-471e44fe2003"
    },
    Author          = "Onyxeagle171",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = false
  },
  {
    Name            = "Godkin - Warshard",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/9564" },
    modGuid         = "66eab192-a288-48f0-a814-4657f0599163",
    progressionTable  = "45fa65a0-ac3b-4aa8-89ad-3424f5b87703",
    progressionUUID = {
      [1] = "fbe8014a-3de9-47e4-88ef-471e44fe3001",
      [3] = "fbe8014a-3de9-47e4-88ef-471e44fe3002",
      [5] = "fbe8014a-3de9-47e4-88ef-471e44fe3003"
    },
    Author          = "Onyxeagle171",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = false
  },
  {
    Name            = "Godkin - Peaceshard",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/9564" },
    modGuid         = "66eab192-a288-48f0-a814-4657f0599163",
    progressionTable  = "45fa65a0-ac3b-4aa8-89ad-3424f5b87704",
    progressionUUID = {
      [1] = "fbe8014a-3de9-47e4-88ef-471e44fe4001",
      [3] = "fbe8014a-3de9-47e4-88ef-471e44fe4002",
      [5] = "fbe8014a-3de9-47e4-88ef-471e44fe4003"
    },
    Author          = "Onyxeagle171",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = false
  },
  {
    Name            = "Godkin - Stormshard",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/9564" },
    modGuid         = "66eab192-a288-48f0-a814-4657f0599163",
    progressionTable  = "45fa65a0-ac3b-4aa8-89ad-3424f5b87705",
    progressionUUID = {
      [1] = "fbe8014a-3de9-47e4-88ef-471e44fe5001",
      [3] = "fbe8014a-3de9-47e4-88ef-471e44fe5002",
      [5] = "fbe8014a-3de9-47e4-88ef-471e44fe5003"
    },
    Author          = "Onyxeagle171",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = false
  },
  {
    Name            = "Godkin - Protectionshard",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/9564" },
    modGuid         = "66eab192-a288-48f0-a814-4657f0599163",
    progressionTable  = "45fa65a0-ac3b-4aa8-89ad-3424f5b87706",
    progressionUUID = {
      [1] = "fbe8014a-3de9-47e4-88ef-471e44fe6001",
      [3] = "fbe8014a-3de9-47e4-88ef-471e44fe6002",
      [5] = "fbe8014a-3de9-47e4-88ef-471e44fe6003"
    },
    Author          = "Onyxeagle171",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = false
  },
  --
  -- Stoneborn by Figgyinchains / EmeraldTechno - https://www.nexusmods.com/baldursgate3/mods/7782
  --
  {
    Name            = "Stoneborn",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/7782" },
    modGuid         = "8f91d268-f9f8-4912-a1f5-96db5dddc689",
    progressionTable  = "6e7f3aba-9980-4a10-baca-0939f2f8d314",
    progressionUUID = {
      [1] = "37b93218-63d2-4b75-a70f-b68aed3c8b20",
      [3] = "8225b4b1-03c9-4bc9-a3ee-ac17200887dc",
      [5] = "b8187f97-c195-46a2-9b93-b8b83cb78155",
      [7] = "43927e8e-d268-4e93-b3de-d5c07fcf8305",
      [9] = "f81c5d38-73b9-48d6-b1bd-f6461912070b"
    },
    Author          = "Figgyinchains / EmeraldTechno",
    SourceBook      = "",
    MainRace        = true,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = false
  },
  --
  -- Emerald's Catbugs by EmeraldTechno - https://www.nexusmods.com/baldursgate3/mods/8919
  --
  {
    Name            = "Catbugs",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/8919" },
    modGuid         = "c8d7fd4d-a572-439e-8332-c7d61bb52644",
    progressionTable  = "f1c185fc-ce58-4a1d-a73f-af43c7470257",
    progressionUUID = {
      [1] = "e4bf3b25-e360-4528-b2b2-43db3d1d8dec",
      [3] = "97745435-1096-4de3-81e8-6c1654e8e523"
    },
    Author          = "EmeraldTechno",
    SourceBook      = "",
    MainRace        = true,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = false
  },
  --
  -- BeastFolk by DessZai - https://www.nexusmods.com/baldursgate3/mods/9768
  --
  {
    Name              = "BeastFolk",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/9768" },
    modGuid           = "82a9caeb-6a9c-4212-9320-ef47d8551bc4",
    progressionTable  = "566289a9-7782-4877-b261-339654bb94e9",
    progressionUUID   = {
      [1] = "886cafb2-d100-4e31-90f6-a973453ecd4e",
      [4] = "f597bdd3-d42b-4b48-983b-6cc236bfb3b2",
      [8] = "f901aba7-9b18-4806-a312-02b8ba572926"
    },
    Author            = "DessZai",
    SourceBook        = "",
    MainRace          = true,
    NoDefStats        = false
  },
  {
    Name              = "BeastFolk - Nekojin",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/9768" },
    modGuid           = "82a9caeb-6a9c-4212-9320-ef47d8551bc4",
    progressionTable  = "f184048d-91c1-4601-b319-f593e7194a96",
    progressionUUID   = {
      [1] = "75a2eacb-09ec-4676-9d9a-7457ab27d7dc",
      [3] = "68a1c26e-9cf0-4628-9ae3-48ceaff63a9f",
      [4] = "3075947f-0ac9-4ff4-ba48-85cbcf02a3ce",
      [6] = "06f38114-a0b5-4104-a366-688e489afa2e",
      [8] = "5b1498fa-441e-405e-8dfa-e2beb0d69f5d",
      [9] = "ee677bc7-a6cb-44b4-9191-e765cb08a5b9",
      [12] = "93b92bbc-663b-4ba5-8b6a-c3f47aa958bd"
    },
    Author            = "DessZai",
    SourceBook        = "",
    MainRace          = false,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  {
    Name              = "BeastFolk - Kumajin",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/9768" },
    modGuid           = "82a9caeb-6a9c-4212-9320-ef47d8551bc4",
    progressionTable  = "3e3a7a8d-9196-4b4e-a7bd-f72a31dd5d0e",
    progressionUUID   = {
      [1] = "1dc569b3-cd69-451a-ae14-386e9ac5cc0c",
      [3] = "397b50d1-c606-4a0c-8689-69b2316c1840",
      [4] = "63fc1de0-5456-4b4a-978c-6dd93bb47e51",
      [6] = "128f0389-5300-4c33-a05c-cf366a275072",
      [8] = "b02cdcfb-757a-4ded-9f7b-3d2049083ab1",
      [9] = "fda04660-3b0a-46e9-bb67-411b5b6e4626",
      [12] = "135b4887-a5da-44f0-8251-0dbe342bb00c"
    },
    Author            = "DessZai",
    SourceBook        = "",
    MainRace          = false,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  {
    Name              = "BeastFolk - Usagijin",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/9768" },
    modGuid           = "82a9caeb-6a9c-4212-9320-ef47d8551bc4",
    progressionTable  = "c3f4d271-e8e1-4ab2-8303-e66c72f9fbd5",
    progressionUUID   = {
      [1] = "0033e708-9ed4-470c-9109-b034193cac3d",
      [3] = "7decb07e-e2c9-4dcb-a601-377ad4be2664",
      [4] = "832e555d-aabd-4bac-b96e-6fab37915bef",
      [6] = "b26ed22c-31f1-43f0-b846-6826a4a85f4d",
      [8] = "f8b4f96f-c342-4bff-b847-40e5b99ed1c7",
      [9] = "d0360049-2665-40f9-93fb-810d4209ea9c",
      [12] = "a795d4a1-9cb7-43eb-816f-00eed7d969d0"
    },
    Author            = "DessZai",
    SourceBook        = "",
    MainRace          = false,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  {
    Name              = "BeastFolk - Kitsune",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/9768" },
    modGuid           = "82a9caeb-6a9c-4212-9320-ef47d8551bc4",
    progressionTable  = "9afdc5aa-7c10-4e5e-abdb-a016abd38a25",
    progressionUUID   = {
      [1] = "a5bf99b0-83ad-42b3-80e0-7f9914004115",
      [3] = "76fef98a-cb73-4be3-a1d2-94c62feb660b",
      [4] = "2a4ebff5-b079-4550-9a7c-d503748ae4e5",
      [6] = "883e76e8-b3b3-4cc6-8bdc-3f730c915610",
      [8] = "8cc6e2a2-d0c4-49b7-bf03-dd9571425a5c",
      [9] = "77282294-d510-41dc-8206-297d1cac98b9",
      [12] = "ec16e78f-939e-4a39-9cb3-bb632a05ca83"
    },
    Author            = "DessZai",
    SourceBook        = "",
    MainRace          = false,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  --
  -- Heart Of The Forest - Dryad by EmeraldTechno - https://www.nexusmods.com/baldursgate3/mods/6443
  --
  {
    Name            = "Dryad",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/6443" },
    modGuid         = "e61be041-6c93-4576-a4b1-ad183e726f02",
    progressionTable  = "78cb9632-c52c-47d6-8588-4779228fc892",
    progressionUUID = {
      [1] = "c5671549-0282-4b60-a68d-47b676e9e2b9",
      [3] = "1832cbeb-f13f-4888-bee9-c1f8f97a83c7",
      [5] = "2251786f-df29-4b18-b35b-f8f71165b612",
      [7] = "87fa3288-f069-41da-9989-4a6e7b1f5dfc",
      [9] = "79e1c2f9-9d29-4006-96ca-eb8022008754"
    },
    Author          = "EmeraldTechno",
    SourceBook      = "",
    MainRace        = true,
    NoDefStats      = false
  },
  {
    Name            = "Dryad - Spring",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/6443" },
    modGuid         = "e61be041-6c93-4576-a4b1-ad183e726f02",
    progressionTable  = "9ac5bb2d-642b-4560-b1c8-064f79f93240",
    progressionUUID = {
      [1] = "40fdbfe4-2f41-4609-bb4c-ddb7bc49b5c4"
    },
    Author          = "EmeraldTechno",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = false
  },
  {
    Name            = "Dryad - Summer",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/6443" },
    modGuid         = "e61be041-6c93-4576-a4b1-ad183e726f02",
    progressionTable  = "8721afc3-dca2-4353-b5d5-7a74334e443c",
    progressionUUID = {
      [1] = "64615482-5cd6-4bac-beba-bdd5dff19b89"
    },
    Author          = "EmeraldTechno",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = false
  },
  {
    Name            = "Dryad - Autumn",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/6443" },
    modGuid         = "e61be041-6c93-4576-a4b1-ad183e726f02",
    progressionTable  = "1f6cc94e-47d6-44b3-a557-79b69a66a811",
    progressionUUID = {
      [1] = "9693b4ad-6ac7-401c-a6ab-5503785edfac"
    },
    Author          = "EmeraldTechno",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = false
  },
  {
    Name            = "Dryad - Winter",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/6443" },
    modGuid         = "e61be041-6c93-4576-a4b1-ad183e726f02",
    progressionTable  = "0fe1484d-958b-4c13-a9a3-d46fe817d892",
    progressionUUID = {
      [1] = "40ef0562-ac1b-4c5c-9831-5e3c4ce04c20"
    },
    Author          = "EmeraldTechno",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = false
  },
  --
  -- Whispers of the Fey - Changelings by Trips ♥ - https://www.nexusmods.com/baldursgate3/mods/3110
  --
  {
    Name            = "Whispers of the Fey - Changelings", -- SelectAbilityBonus(b9149c8e-52c8-46e5-9cb6-fc39301c05fe,AbilityBonus,1)
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/3110" },
    modGuid         = "eaf83c50-1f22-4ce8-a825-25f07caf9faa",
    progressionTable  = "2a6b9ce0-c21a-421f-8378-6383c8c01b87",
    progressionUUID = {
      [1] = "fa7bf84a-a1d6-46b2-a779-739424d20b5b",
      [2] = "22236412-e04b-4846-84e7-8d6a4f9af676",
      [7] = "3a0183f4-c5a3-4a54-8229-67f4ed9f30f9",
      [10] = "97c993d2-ffe8-4b0d-9b1a-15222c44e856"
    },
    Author          = "Trips ♥",
    SourceBook      = "",
    MainRace        = true,
    Stats           = { "0", "0", "0", "0", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    Sab             = { "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = false
  },
  --
  -- Whispers of the Fey - Goblins by Trips ♥ - https://www.nexusmods.com/baldursgate3/mods/3254
  --
  {
    Name            = "Goblins",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/3254" },
    modGuid         = "ca81f091-bf1b-4bb6-90dd-1c4ef83fd798",
    progressionTable  = "95653fbb-2fc7-4c6b-8027-25a5d890a376",
    progressionUUID = {
      [1] = "fa9d4980-1b18-43e6-974b-4e3a2abae183"
    },
    Author          = "Trips ♥",
    SourceBook      = "VGtM",
    MainRace        = true,
    NoDefStats      = false
  },
  {
    Name            = "Goblins Greenskin",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/3254" },
    modGuid         = "ca81f091-bf1b-4bb6-90dd-1c4ef83fd798",
    progressionTable  = "06faa116-05b3-45a0-b61e-25fcaf99cdc2",
    progressionUUID = {
      [1] = "5a317953-08ea-4424-ad93-05a0a66b4748"
    },
    Author          = "Trips ♥",
    SourceBook      = "VGtM",
    MainRace        = false,
    Stats           = { "0", "2", "1", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Goblins Dankwood",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/3254" },
    modGuid         = "ca81f091-bf1b-4bb6-90dd-1c4ef83fd798",
    progressionTable  = "46aa63c9-79a5-4f1c-aa2b-74fff0243226",
    progressionUUID = {
      [1] = "453c15bb-0ead-4766-b747-961066c84ee1"
    },
    Author          = "Trips ♥",
    SourceBook      = "",
    MainRace        = false,
    Stats           = { "0", "2", "0", "0", "1", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- Secrets of the Serpent - Yuan-ti by Trips ♥ - https://www.nexusmods.com/baldursgate3/mods/7922
  --
  {
    Name            = "Yuan-ti",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/7922" },
    modGuid         = "b2d490bc-6e10-4bc2-89e0-69c8f68cd453",
    progressionTable  = "70b0cfaa-cac0-4cb6-938c-976ab96d73cd",
    progressionUUID = {
      [1] = "139dba60-4895-496a-ab48-bbd45719f317"
    },
    Author          = "tepkunset and neonbutchery",
    SourceBook      = "",
    MainRace        = true,
    Stats           = { "0", "0", "0", "1", "2", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- Warforged by BlueHuman123 - https://www.nexusmods.com/baldursgate3/mods/5665
  --
  {
    Name            = "Warforged",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/5665" },
    modGuid         = "6c821950-4e31-4702-bc21-a0b1bed72ba1",
    progressionTable  = "88846a0c-429e-406e-9c51-da2b518fee36",
    progressionUUID = {
      [1] = "2e01fc62-8a91-4bb6-976e-e4689136f78d"
    },
    Author          = "BlueHuman123",
    SourceBook      = "",
    MainRace        = true,
    Stats           = { "0", "0", "1", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Warforged - Envoy",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/5665" },
    modGuid         = "6c821950-4e31-4702-bc21-a0b1bed72ba1",
    progressionTable  = "c832688d-0cfb-4227-93a2-31da4175d4a7",
    progressionUUID = {
      [1] = "15711f95-ee11-43be-b1bb-d09b8a100ce7"
    },
    Author          = "BlueHuman123",
    SourceBook      = "",
    MainRace        = false,
    Sab              = { "1", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = false
  },
  {
    Name            = "Warforged - Juggernaut",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/5665" },
    modGuid         = "6c821950-4e31-4702-bc21-a0b1bed72ba1",
    progressionTable  = "2f1dc338-1b67-4f84-9898-b83319680bd2",
    progressionUUID = {
      [1] = "7b47d8cd-8b33-4047-af28-09e399637ace"
    },
    Author          = "BlueHuman123",
    SourceBook      = "",
    MainRace        = false,
    Stats           = { "2", "0", "0", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Warforged - Skirmisher",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/5665" },
    modGuid         = "6c821950-4e31-4702-bc21-a0b1bed72ba1",
    progressionTable  = "1a234382-88d5-4fa7-b3bc-e82973d2c5bb",
    progressionUUID = {
      [1] = "b5d74374-e97f-438f-883a-9fc47b7c2a18"
    },
    Author          = "BlueHuman123",
    SourceBook      = "",
    MainRace        = false,
    Stats           = { "0", "2", "0", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- Automaton Figgyinchains by GentlemanBabbo - https://github.com/GentlemanBabbo/Automaton/blob/main/
  --
  {
    Name            = "Automaton Figgyinchains",
    modURL          = { "https://github.com/GentlemanBabbo/Automaton/blob/main/" },
    modGuid         = "a56867c9-8260-4685-b8a5-6cc94be41152",
    progressionTable  = "",
    progressionUUID = {
      [1] = "3615e5db-c3ac-4b3b-bd01-f618d1cd95b5"
    },
    Author          = "GentlemanBabbo",
    SourceBook      = "",
    MainRace        = true,
    Stats           = { "0", "0", "1", "1", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- The Nine Hells Unchained - Imp by SydMeier - https://www.nexusmods.com/baldursgate3/mods/10849
  --
  {
    Name            = "Imp",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/10849" },
    modGuid         = "4b268977-b9ec-47fd-95e7-9b977969ba28",
    progressionTable  = "e209391d-b257-47c5-9d2e-1435811fe84c",
    progressionUUID = {
      [1] = "602818c4-ec05-4af9-9cb7-dedf06ec04a8",
      [2] = "b59bef6c-1016-46c5-b655-15333316c085",
      [3] = "a7420b99-d1d9-4df1-9f6b-9f1b5d713c7e"
    },
    Author          = "SydMeier",
    SourceBook      = "",
    MainRace        = true,
    NoDefStats      = false
  },
  {
    Name            = "Imp - Avernus",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/10849" },
    modGuid         = "4b268977-b9ec-47fd-95e7-9b977969ba28",
    progressionTable  = "c2161257-756d-489c-99a2-734bd54c31ec",
    progressionUUID = {
      [1] = "7ef3086e-0caa-4c31-ae61-03ff3f153c03",
      [5] = "4e5c4dad-f47d-47ee-991a-69caba804cf5"
    },
    Author          = "SydMeier",
    SourceBook      = "",
    MainRace        = false,
    Stats           = { "0", "1", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Imp - Dis",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/10849" },
    modGuid         = "4b268977-b9ec-47fd-95e7-9b977969ba28",
    progressionTable  = "2205b2a3-0d48-47eb-8c79-175168de385c",
    progressionUUID = {
      [1] = "ef5929ca-ed90-4050-9439-a9d0e080ee92",
      [5] = "72d014ee-99bd-4941-9b99-4af0ee64b6d4"
    },
    Author          = "SydMeier",
    SourceBook      = "",
    MainRace        = false,
    Stats           = { "0", "1", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Imp - Minauros",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/10849" },
    modGuid         = "4b268977-b9ec-47fd-95e7-9b977969ba28",
    progressionTable  = "3bf603b1-e071-483d-b0a7-a3783dda186c",
    progressionUUID = {
      [1] = "359d1af0-33b8-4949-b865-e7fb99e2590c",
      [5] = "5abe3d86-65ee-44ce-9bed-bb13968f143b"
    },
    Author          = "SydMeier",
    SourceBook      = "",
    MainRace        = false,
    Stats           = { "0", "1", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Imp - Phlegethos",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/10849" },
    modGuid         = "4b268977-b9ec-47fd-95e7-9b977969ba28",
    progressionTable  = "ab10eb6b-4e3d-4d41-8f29-112a46737585",
    progressionUUID = {
      [1] = "afbb84c9-612b-4300-a521-22abf2f65f06",
      [5] = "71d32314-aea8-49c1-90b4-875e2aa0375b"
    },
    Author          = "SydMeier",
    SourceBook      = "",
    MainRace        = false,
    Stats           = { "0", "1", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Imp - Stygia",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/10849" },
    modGuid         = "4b268977-b9ec-47fd-95e7-9b977969ba28",
    progressionTable  = "b878af33-5d85-41db-93b8-f8dcfeb68727",
    progressionUUID = {
      [1] = "c459c4d9-f97c-48db-b09d-c38482d03092",
      [5] = "53c4337e-f9e5-4278-8d28-e54ab6491b10"
    },
    Author          = "SydMeier",
    SourceBook      = "",
    MainRace        = false,
    Stats           = { "0", "1", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Imp - Malbolge",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/10849" },
    modGuid         = "4b268977-b9ec-47fd-95e7-9b977969ba28",
    progressionTable  = "5222a1f7-5a4f-44fb-b5b2-4848f4091b82",
    progressionUUID = {
      [1] = "ba346fb4-ddcf-45d8-9d61-1818763b710c",
      [5] = "0ef917e8-6384-42e3-8d91-afa91b33c32c"
    },
    Author          = "SydMeier",
    SourceBook      = "",
    MainRace        = false,
    Stats           = { "0", "1", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Imp - Maladomini",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/10849" },
    modGuid         = "4b268977-b9ec-47fd-95e7-9b977969ba28",
    progressionTable  = "02e71e8c-671a-4488-aaf7-a375974794ca",
    progressionUUID = {
      [1] = "f568ce77-922d-47ed-9163-05c4c1eb8fa6",
      [5] = "ccf45048-d15b-4120-a554-bba07464b470"
    },
    Author          = "SydMeier",
    SourceBook      = "",
    MainRace        = false,
    Stats           = { "0", "1", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Imp - Cania",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/10849" },
    modGuid         = "4b268977-b9ec-47fd-95e7-9b977969ba28",
    progressionTable  = "111a12c8-a2fc-4a03-9e92-87ee97acef40",
    progressionUUID = {
      [1] = "764e9049-246b-42f9-a71d-6b13272b34d7",
      [5] = "a610b67d-2bb8-48c5-9433-2c0b26733b3b"
    },
    Author          = "SydMeier",
    SourceBook      = "",
    MainRace        = false,
    Stats           = { "0", "1", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Imp - Nessus",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/10849" },
    modGuid         = "4b268977-b9ec-47fd-95e7-9b977969ba28",
    progressionTable  = "02ea1ecd-6b3c-428c-a832-f548ddd0e6fc",
    progressionUUID = {
      [1] = "f157b7c5-95fb-43dd-a32b-02b9c710d637",
      [5] = "622b0bba-06fc-4b58-9fc8-29a2bc30cc4c"
    },
    Author          = "SydMeier",
    SourceBook      = "",
    MainRace        = false,
    Stats           = { "0", "1", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- Avariel Elf by Ren - https://www.nexusmods.com/baldursgate3/mods/3680
  --
  {
    Name            = "Avariel Elf",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/3680" },
    modGuid         = "11675ee8-a7be-443b-9edb-125f33d21ce1",
    progressionTable  = "09e2fb28-6d24-4b83-8fee-4ad610b1dc69",
    progressionUUID = {
      [1] = "77b6f9ec-7d6a-44b2-b110-88bf025eb586",
      [2] = "efd08f18-2fe1-493d-abb7-645717a7d673",
      [3] = "e580329f-db10-44e1-99e5-136e1e050e6a",
      [4] = "84713e72-e270-44da-915f-d32320a03205"
    },
    Author          = "Ren",
    SourceBook      = "",
    MainRace        = true,
    Stats           = { "0", "2", "0", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    Sab             = { "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = false
  },
  --
  -- Orc Half-Elf by Soriyumi - https://www.nexusmods.com/baldursgate3/mods/5943
  --
  {
    Name            = "Orc Half-Elf",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/5943" },
    modGuid         = "d25f0ed3-efe7-4194-bdc6-671f784d7cef",
    progressionTable  = "222db3e4-1c5f-4e48-b4c6-b8a8e7b095d0",
    progressionUUID = {
      [1] = "128ae023-fef6-4fa1-ade9-e338e60b8b56"
    },
    Author          = "Soriyumi",
    SourceBook      = "",
    MainRace        = false,
    Stats           = { "1", "1", "1", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --
  -- Playable Undead - Skeleton by Rexsaze - https://www.nexusmods.com/baldursgate3/mods/4949
  --
  {
    Name            = "Skeleton",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/4949" },
    modGuid         = "315ce1a1-0f24-4777-90d9-06b01a93a716",
    progressionTable  = "8d7d65ad-ed3f-4002-acfc-70fa10d2b570",
    progressionUUID = {
      [1] = "042e6092-1602-4338-b6f9-cc7987f3bff4"
    },
    Author          = "Sutherex",
    SourceBook      = "",
    MainRace        = true,
    Stats           = { "0", "0", "1", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  {
    Name            = "Adapted Kender Race from Dragonlance: Shadow of the Dragon Queen",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/8465" },
    modGuid         = "56fe7a47-e0d6-404e-b2d5-fd6e88cae6ae",
    progressionTable  = "",
    progressionUUID = {
      [1] = "7551c355-8311-4c2f-b91b-9877ef608267"
    },
    Author          = "Syd Meier",
    SourceBook      = "DSotDQ",
    Comments        = "The Alpha Race :-D",
    MainRace        = false,
    Sab             = { "1", "1", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = false
  },
  --
  -- Playable Ogre M-F by dunHozzie - https://www.nexusmods.com/baldursgate3/mods/425
  --
  {
    Name            = "Playable Ogre M-F",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/425" },
    modGuid         = "562861e5-4434-43fc-9eb1-3d6cf3e031fd",
    progressionTable  = "80b2552d-a325-424a-9581-abcdefc2a4d0",
    progressionUUID = {
      [1] = "526226b2-c9b2-4428-95a4-abcdefe1d533"
    },
    Author          = "dunHozzie",
    SourceBook      = "PHB",
    MainRace        = true,
    Stats           = { "4", "-1", "3", "-3", "-2", "-2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats      = false
  },
  --[[
|    _____       .___                    __                            /\          ________      .__    .___         __           ___________                    .__       .__   
|   /  _  \    __| _/__  __ ____   _____/  |_ __ _________   __________)/ ______  /  _____/ __ __|__| __| _/____   _/  |_  ____   \__    ___/____    ____________|__| ____ |  |  
|  /  /_\  \  / __ |\  \/ // __ \ /    \   __\  |  \_  __ \_/ __ \_  __ \/  ___/ /   \  ___|  |  \  |/ __ |/ __ \  \   __\/  _ \    |    |  \__  \  /     \_  __ \  |/ __ \|  |  
| /    |    \/ /_/ | \   /\  ___/|   |  \  | |  |  /|  | \/\  ___/|  | \/\___ \  \    \_\  \  |  /  / /_/ \  ___/   |  | (  <_> )   |    |   / __ \|  Y Y  \  | \/  \  ___/|  |__
| \____|__  /\____ |  \_/  \___  >___|  /__| |____/ |__|    \___  >__|  /____  >  \______  /____/|__\____ |\___  >  |__|  \____/    |____|  (____  /__|_|  /__|  |__|\___  >____/
|         \/      \/           \/     \/                        \/           \/          \/              \/    \/                                \/      \/              \/      
|          \_Adventurer's Guide to Tamriel - NellsRelo
]]--

  --
  -- Cyrodiilic by NellsRelo - https://www.nexusmods.com/baldursgate3/mods/591
  --
  {
    Name              = "Cyrodiil",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "39668970-4021-4113-a6d8-72ea8b55d09d",
    progressionUUID   = {
      [1] = "346871de-be49-41c4-8450-d85d666cfdee"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = true,
    NoDefStats        = false
  },
  {
    Name              = "Cyrodiil - Colovian",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "af10483e-e385-4e08-8ac8-c183b6a13eb4",
    progressionUUID   = {
      [1] = "17a7ecec-8d95-4e24-bc95-e9253d126a92"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = false,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  {
    Name              = "Cyrodiil - Nibenese",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "aae784b7-03cf-432b-a916-296a67bb7532",
    progressionUUID   = {
      [1] = "97244ddc-a158-405d-96e1-a22d0ec8543c"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = false,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  --
  -- Breton by NellsRelo - https://www.nexusmods.com/baldursgate3/mods/591
  --
  {
    Name              = "Breton",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "322dfbbb-b37e-47cf-96e1-64cf9287452c",
    progressionUUID   = {
      [1] = "4d5fb255-1a17-4b02-b376-9f0eb06706c8"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = true,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  --
  -- Nord by NellsRelo - https://www.nexusmods.com/baldursgate3/mods/591
  --
  {
    Name              = "Nord",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "47256a77-c595-4559-865a-81fa97e8c43e",
    progressionUUID   = {
      [1] = "5aa5e1cc-d1b7-4a62-b4fd-c048faaca766"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = true,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  --
  -- Redguard by NellsRelo - https://www.nexusmods.com/baldursgate3/mods/591
  --
  {
    Name              = "Redguard",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "e4ef5b65-3a15-415d-adb4-00c7366c9d89",
    progressionUUID   = {
      [1] = "b0bb2e7f-c7fe-4cac-89a6-8bb5351230b7"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = true,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  --
  -- Altmer by NellsRelo - https://www.nexusmods.com/baldursgate3/mods/591
  --
  {
    Name              = "Altmer",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "c2e01fdd-0dc8-45b4-94cf-cf127f70a63f",
    progressionUUID   = {
      [1] = "5ec70564-e26c-41d8-b8e2-2c601538c77e"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = true,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  --
  -- Bosmer by NellsRelo - https://www.nexusmods.com/baldursgate3/mods/591
  --
  {
    Name              = "Bosmer",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "16a27721-2176-4172-9507-c71fccb0961b",
    progressionUUID   = {
      [1] = "25fbb11f-99b9-4a63-aeb2-603c399f4928"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = true,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  --
  -- Dunmer by NellsRelo - https://www.nexusmods.com/baldursgate3/mods/591
  --
  {
    Name              = "Dunmer",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "8dfdb77c-5abf-4477-a708-f741e9677301",
    progressionUUID   = {
      [1] = "0f9d4f27-7538-4690-82f9-41cff9672355"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = true,
    NoDefStats        = false
  },
  {
    Name              = "Dunmer - Unaffiliated",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "cee411d2-082d-47f2-ba20-4347764e57ea",
    progressionUUID   = {
      [1] = "3edd63b7-4a70-4abb-87aa-995fbe85cdda"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = false,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  {
    Name              = "Dunmer - Hlaalu",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "e557e49a-15d6-4ad7-b521-4bded39c97c6",
    progressionUUID   = {
      [1] = "0466283e-8d04-4823-8d0e-c264034c922f"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = false,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  {
    Name              = "Dunmer - Redoran",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "bb63f695-44d9-4f10-b0f0-ca221e099ffe",
    progressionUUID   = {
      [1] = "80f5e560-ad79-4165-9aab-0c8b0c3b4082"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = false,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  {
    Name              = "Dunmer - Telvanni",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "f9351f2c-dc19-49a6-9bd6-242a85f0ca2d",
    progressionUUID   = {
      [1] = "df7dbd47-f79e-4d8a-9ac4-d4a4e41ced82"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = false,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  {
    Name              = "Dunmer - Indoril",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "9d2720b5-8899-402e-9297-15b74f759461",
    progressionUUID   = {
      [1] = "25a713e0-4d5b-477e-aa56-56900f7976f9"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = false,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  {
    Name              = "Dunmer - Dres",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "ef15408f-08d3-4b1a-8ae3-2ec7ae28ada3",
    progressionUUID   = {
      [1] = "ac2d7f7f-120c-4cb9-9f04-ff16c4aec266"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = false,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  --
  -- Orsimer by NellsRelo - https://www.nexusmods.com/baldursgate3/mods/591
  --
  {
    Name              = "Orsimer",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "86041cdd-2d60-4c22-87c4-ab8e88bef027",
    progressionUUID   = {
      [1] = "1cb54ee3-21e0-483d-af57-ae89a7addc1c"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = true,
    NoDefStats        = false
  },
  {
    Name              = "Orsimer - Iron",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "feafabc0-8cc2-415a-ba10-0c21ddaac2cc",
    progressionUUID   = {
      [1] = "2ea45a26-1355-4651-acff-80291d90fa1e"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = false,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
  {
    Name              = "Orsimer - Wood",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/591" },
    modGuid           = "46c59a34-b3b1-40d0-8424-6f59ded3d575",
    progressionTable  = "f7629248-b39e-4acf-9771-ff4add8c59a5",
    progressionUUID   = {
      [1] = "e9f1e041-5bf0-45b8-9244-2edfe50307fb"
    },
    Author            = "NellsRelo",
    SourceBook        = "",
    MainRace          = false,
    Sab               = {"2","1"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },
--[[
|	  ________.__                     __  .__            ________.__                 .__            ____ ___           .___                 .___ __________
|	 /  _____/|  |__ _____    _______/  |_|  | ___.__.  /  _____/|  |__   ____  __ __|  |   ______ |    |   \____    __| _/____ _____     __| _/ \______   \_____    ____  ____
|	/   \  ___|  |   \__  \  /  ___/\   __\  |<   |  | /   \  ___|  |  \ /  _ \|  |  \  |  /  ___/ |    |   /    \  / __ |/ __ \__   \   / __ |   |       _/\__  \ _/ ___\/ __ \
|	\    \_\  \   Y  \/ __ \_\___ \  |  | |  |_\___  | \    \_\  \   Y  (  <_> )  |  /  |__\___ \  |    |  /   |  \/ /_/ \  ___/ / __ \_/ /_/ |   |    |   \ / __ \  \__\  ___/
|	 \______  /___|  (____  /____  > |__| |____/ ____|  \______  /___|  /\____/|____/|____/____  > |______/|___|  /\____ |\___  >____  /\____ |   |____|_  /(____ /\___  >___  >
|	        \/     \/     \/     \/            \/              \/     \/                       \/               \/      \/    \/     \/      \/          \/      \/     \/   \/
|	         \_Ghastly Ghouls - Playable Undead Race 3.01 Used
]]--
	{
    Name				      =	"Undead",
		modURL				    =	{"https://www.nexusmods.com/baldursgate3/mods/5895"},
    modGuid				    =	"f3d4e722-e576-43ce-a585-cfffcfcbcf40",
    progressionTable  = "d3b77de3-b977-46f4-bd1c-f85882b26489",
    progressionUUID 	=	{
			[1]	=	"a21579fc-b7d7-4295-bf5c-d2111be3f13a",
      [5] = "640be951-bdbf-4d7b-acf8-df8266fb70fe",
      [10] = "ec193217-1c9b-4cdb-8bee-2f51cd1dc027"
								},
		Author				  =	"Ghouls0Rules",
		SourceBook			=	"",
		MainRace			  =	true,
		NoDefStats			=	false
    },
  {
    Name              = "Undead - Archlich",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/5895" },
    modGuid           = "f3d4e722-e576-43ce-a585-cfffcfcbcf40",
    progressionTable  = "cf1674f1-af50-4878-8f0a-2497941e5034",
    progressionUUID   = {
      [1] = "7123242e-9e00-4b9e-8e4f-aa1b0477fe13",
      [3] = "d924cae6-b610-43da-82c9-8c521cae5a1b",
      [4] = "a4c8d0ae-3e06-444e-ae96-b7cea020f1a0",
      [6] = "4975cc5b-a4b9-465d-b468-8ce809cc951d",
      [7] = "1e55dde5-743f-48aa-9d8f-e5d3ea4fd0df",
      [9] = "9bf3c83e-7bb2-4298-b2b6-091edca820b7",
      [12] = "186b103d-1b2c-4f93-af0c-bc6d3176ea19"
    },
    Author            = "Ghouls0Rules",
    SourceBook        = "",
    MainRace          = false,
    Stats             = { "0", "0", "0", "2", "1", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats        = false
  },
  {
    Name              = "Undead - Ghoul",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/5895" },
    modGuid           = "f3d4e722-e576-43ce-a585-cfffcfcbcf40",
    progressionTable  = "ff5eac8f-6074-4b22-9d29-b438382f733d",
    progressionUUID   = {
      [1] = "cfabed72-38b8-424d-a07d-058fbd4dd1a9",
      [3] = "84f2f366-f5c5-4c66-820a-42d569519c32",
      [6] = "fe495adf-47b5-4824-b810-e5ff7d6dbea5",
      [9] = "40430000-6428-4ca5-8330-87b6a9c41331"
    },
    Author            = "Ghouls0Rules",
    SourceBook        = "",
    MainRace          = false,
    Stats             = { "0", "0", "0", "1", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats        = false
  },
  {
    Name              = "Undead - Mummy",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/5895" },
    modGuid           = "f3d4e722-e576-43ce-a585-cfffcfcbcf40",
    progressionTable  = "1cf239c2-bc90-4135-94ac-f090ea59f89a",
    progressionUUID   = {
      [1] = "3a4465df-49a2-4278-9d16-f17ed876aede",
      [4] = "95ff9536-5c8d-4e05-a66d-34b81fd09f9d",
      [5] = "845362c3-0fcc-465f-b88f-3306270a2cd9",
      [7] = "a28768cb-8e44-4c19-89fd-3dbc119e1621",
      [10] = "d0ae0e8c-d6ff-4af6-80ec-c90aada21824"
    },
    Author            = "Ghouls0Rules",
    SourceBook        = "",
    MainRace          = false,
    Stats             = { "0", "0", "0", "1", "2", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats        = false
  },  
  {
    Name              = "Undead - Wight",
    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/5895" },
    modGuid           = "f3d4e722-e576-43ce-a585-cfffcfcbcf40",
    progressionTable  = "8a473472-a21c-4795-9d53-b2b757207e98",
    progressionUUID   = {
      [1] = "677de788-81da-4f2f-b0d1-75c6aa9a1c35", -- SelectAbilityBonus(b9149c8e-52c8-46e5-9cb6-fc39301c05fe,AbilityBonus,1);
      [4] = "27cb1d31-57ce-46b9-91bf-e294e2a2a2e4",
      [7] = "478b3404-f0ad-4b5c-a54c-36d3e1a9a94a",
      [10] = "647b94a1-4a94-40c3-91ab-459a35e4cef6"
    },
    Author            = "Ghouls0Rules",
    SourceBook        = "",
    MainRace          = false,
    Stats             = { "0", "0", "0", "0", "0", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    Sab               = { "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats        = false
  },

  --[[
|	___________              __                   __  .__              .__       _____        .__   __  .__
|	\_   _____/____    _____/  |______    _______/  |_|__| ____ _____  |  |     /     \  __ __|  |_/  |_|__|__  __ ___________  ______ ____
|	 |    __) \__  \  /    \   __\__  \  /  ___/\   __\  |/ ___\\__  \ |  |    /  \ /  \|  |  \  |\   __\  \  \/ // __ \_  __ \/  ___// __ \
|	 |     \   / __ \|   |  \  |  / __ \_\___ \  |  | |  \  \___ / __ \|  |__ /    Y    \  |  /  |_|  | |  |\   /\  ___/|  | \/\___ \\  ___/
|	 \___  /  (____  /___|  /__| (____  /____  > |__| |__|\___  >____  /____/ \____|__  /____/|____/__| |__| \_/  \___  >__|  /____  >\___  >
|	     \/        \/     \/          \/     \/               \/     \/               \/                              \/           \/     \/
|	      \_Fantastical Multiverse from Nexus
]] --

  {-- Two other Humain in the mod to verify
    Name             = "Variant Human",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "5e53f556-ba7a-46fd-9dee-ba1ff456d8db",
    progressionTable = "3b047c50-aaae-4000-93f7-37bd8804f7fb",
    progressionUUID  = {
      [1]  = "0b88cad4-c5d0-4cde-a661-a8ede3f7d113"
    },
    Author           = "Dungeons and Souls",
    Comments         = "optional feat rules from the Player’s Handbook, \
		your Dungeon Master might allow these variant traits, all of which replace the human’s Ability Score Increase trait.",
    SourceBook       = "PHB",
    MainRace         = false,
    Sab              = { "1", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },-- Two other Humain in the mod to verify
  {
    Name             = "Astral Elf",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "e7071309-78a8-4fad-949b-d4dd326dd39b",
    progressionTable = "3f2a743a-0dd6-4f1e-8e7d-7cb72791d6b2",
    progressionUUID  = {
      [1]  = "aecc89d9-c860-4d13-9ddb-866be4e7930b",
      [5]  = "8d31b5a1-0498-4b75-b9e5-ae36372c1ebe",
      [9]  = "654d0498-eabe-446f-87b3-139b748fb9fb",
      [13] = "aac8e59f-f203-4cf3-baaa-4eb1acc0146a",
      [17] = "f6ea35f4-df3a-4135-a933-59a4f2b8e9da"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "SAiS",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
  {
    Name             = "Reborn (Lineage)",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "07a0478e-ba76-4fc7-a671-1c13c66ede2e",
    progressionTable = "c52c58fc-3d9e-43bd-a822-964b9618e040",
    progressionUUID  = {
      [1]  = "de3a8294-d913-412e-82ee-6015716b2ac6",
      [5]  = "f39762bc-e448-4762-8b0d-58320c917435",
      [9]  = "38722e23-e2fc-45fd-8708-cd12dc427e97",
      [13] = "7e29e9ed-0ab5-44dc-82b9-298a826159e9",
      [17] = "4ffcf4ab-2603-4fb3-9afa-e24e26472d32"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "VRGtR",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
--  {
--    Name             = "Reborn (Humanoid)",
--    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
--    modGuid          = "07a0478e-ba76-4fc7-a671-1c13c66ede2e",
--    progressionTable = "f9deeded-805f-4f13-9bc1-cbe4fad1ff43",
--    progressionUUID  = {
--      [1]  = "1253592f-5c8b-41b5-9ae7-b83b08ab92bb"
--    },
--    Author           = "Dungeons and Souls",
--    SourceBook       = "VRGtR",
--    MainRace         = false,
--    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
--    NoDefStats       = false
--  },
  {
    Name             = "Downcast",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "21d14d75-2e99-4e85-82ad-7139c69b85fe",
    progressionTable = "ef4ff936-4f31-45ef-92fd-12626ea66e04",
    progressionUUID  = {
      [1]   = "aa03e8ed-a301-4e4a-bfde-ff7144e1fbb1",
      [2]   = "f11f218d-b871-45a7-9fe0-1376b839efde",
      [3]   = "9d9b3661-ae19-49d3-be8d-3b4f81330afe",
      [4]   = "e3259d2e-09ae-4cb5-9d29-ae70d6bbd2b2",
      [5]   = "b82d7f04-3187-43d4-a508-d2578ccc72b4",
      [6]   = "23adc02d-ef7d-41e8-9f36-0309fd69458d",
      [7]   = "b6c37a5f-33ac-44a1-8dc6-f824941ceafd",
      [8]   = "313340b8-a2b8-44bf-b25b-ea735f2c98a3",
      [9]   = "841bfefd-3cdf-480a-908d-d017ac09625a",
      [10]  = "4d141b8a-a71e-49f0-95df-4224bceeae84",
      [11]  = "e0ac38ec-a01c-46a5-bc36-4a1c91d136a4",
      [12]  = "e2bb218c-9901-4387-a7ee-ed7b1534b07a",
      [13]  = "75381bf2-9272-4a76-9acc-355c6a9047eb",
      [14]  = "bb18614b-673e-40c2-9505-ea70bf8a00f8",
      [15]  = "ec128205-a5bd-4cdd-8da9-ff23fdc04e02",
      [17]  = "2bf90f36-4045-4920-bdba-8abe83775599",
      [18]  = "a76faabd-71d9-4ed3-98fe-38e611aa2dcc",
      [19]  = "e7218d31-7116-474d-8750-ab5b2a41cb76",
      [20]  = "4c2aba90-ac6c-43f8-b041-e840161f59b1"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "GHPG",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
  {
    Name             = "Downcast - Aurelian",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "21d14d75-2e99-4e85-82ad-7139c69b85fe",
    progressionTable = "756208e7-49fb-493b-8b30-a38f0a54ef67",
    progressionUUID  = {
      [1]  = "8d1bed2a-a657-4d0b-89f2-f3c484c70808"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "GHPG",
    MainRace         = false,
    NoDefStats       = true
  },
  {
    Name             = "Downcast - Ulmyrite",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "21d14d75-2e99-4e85-82ad-7139c69b85fe",
    progressionTable = "febbb692-bf50-4c7d-8058-58f3d70710c2",
    progressionUUID  = {
      [1]  = "f1544d24-c5c3-41e8-871f-c05b5eac3e67"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "GHPG",
    MainRace         = false,
    NoDefStats       = true
  },
  {
    Name             = "Downcast - Maliganti",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "21d14d75-2e99-4e85-82ad-7139c69b85fe",
    progressionTable = "867830a8-1cb6-41b3-b018-58c8f80a1136",
    progressionUUID  = {
      [1]  = "700cc489-049d-40dc-8189-0a07948d582e"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "GHPG",
    MainRace         = false,
    NoDefStats       = true
  },
  {
    Name             = "Downcast - Galtian",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "21d14d75-2e99-4e85-82ad-7139c69b85fe",
    progressionTable = "c9ffe574-0f83-46dc-96a8-4aad32453478",
    progressionUUID  = {
      [1]  = "acb741fe-8dac-4ff9-9972-70e9d3ad8628"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "GHPG",
    MainRace         = false,
    NoDefStats       = true
  },
  {
    Name             = "Elezen",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "3b7799fa-3dc0-47da-bf9f-fc590f7e2cdf",
    progressionTable = "a9baf07d-092f-4d76-a964-a1ee3f8bbdce",
    progressionUUID  = {
      [1]  = "9be04b6b-c89f-4e67-8431-d0cd9b97db15"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "",
    MainRace         = true,
    NoDefStats       = false
  },
  {
    Name             = "Elezen - Wildwood",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "3b7799fa-3dc0-47da-bf9f-fc590f7e2cdf",
    progressionTable = "a7a08f36-46fd-43ec-9e4e-b562eedbf23d",
    progressionUUID  = {
      [1]  = "a8310439-9a0b-411a-92c2-8911cc50e7f2"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Elezen - Duskwight",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "3b7799fa-3dc0-47da-bf9f-fc590f7e2cdf",
    progressionTable = "1157213d-456f-4d28-b4b2-ad2c35a1b4f4",
    progressionUUID  = {
      [1]  = "9c0e5775-6d44-4f35-807c-195ba0b7f803"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "",
    MainRace         = false,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = true
  },
  {
    Name             = "Dhampir - Lineage",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "f34c3aca-0b14-4001-af29-27e130cf5c5c",
    progressionTable = "ab26c8c2-da66-4fbd-8882-ffd6ba501e56",
    progressionUUID  = {
      [1]  = "f4a822a7-8663-4082-abe7-655feb29303c",
      [3]  = "107ff3e7-93e8-4640-8d91-b76caf2b1311",
      [5]  = "8954a8dd-33bd-4c03-8f4d-edfb6c980ac6",
      [9]  = "69581b44-8c2e-43fb-82f2-56fbc1afabb0",
      [13] = "ad44f6b8-d147-4a18-97d6-261f84ca8c5c",
      [17] = "4b7b0665-2a45-4801-b7e1-f34af6b18111"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "VRGtR",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
--  {
--    Name             = "Dhampir - Humanoid",
--    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
--    modGuid          = "f34c3aca-0b14-4001-af29-27e130cf5c5c",
--    progressionTable = "3025ad42-1bce-411c-bf9d-eb97b31cc3a2",
--    progressionUUID  = {
--      [1] = "4f0a047b-fd6f-488d-a627-966ed2d4e6fb"
--    },
--    Author           = "Dungeons and Souls",
--    SourceBook       = "VRGtR",
--    MainRace         = true,
--    NoDefStats       = false
--  },
  {
    Name             = "Orc",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "9cbbf22a-2af4-48c7-970a-fb61a6c20b15",
    progressionTable = "3e54d4a0-cd58-4307-9cbb-dbf0f9d4277b",
    progressionUUID  = {
      [1]  = "6c7094a4-bc8c-4613-9de6-5d9edec8e403",
      [5]  = "295f8d35-d49a-46c8-8398-4bbe49e0d0fb",
      [9]  = "ba66676e-a760-465f-b184-ae80f3380e1d",
      [13] = "4bb3ccee-32c0-40c1-af02-15859543a5a3",
      [17] = "4c3cd89c-2133-433b-9094-f64c3292fc43"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "PHB",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
  {
    Name             = "Kender",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "4508d3bd-e721-47a4-894d-0e61c7b0380d",
    progressionTable = "9ea712e7-2507-4d26-8f3d-5e1a8715fa29",
    progressionUUID  = {
      [1]  = "727ce5d7-2c90-4cbb-bd52-6bd45067e27b",
      [5]  = "44a2ff5a-ab0c-4fe0-aa85-f94e6d746d69",
      [9]  = "e916fa5d-ed04-4830-9244-a735f10ab143",
      [13] = "b576d063-8c64-448a-a04c-0e0200cc7175",
      [17] = "e2d8d417-a85f-4372-bfd0-4131bbd5c787"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "DSotDQ",
    MainRace         = true,
    Sab              = { "1", "1", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
  {
    Name             = "Shadar-kai",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "6abf0f64-62d6-4e80-a141-5582e29783e7",
    progressionTable = "5de13126-8919-4cfa-807f-4d173a056f8c",
    progressionUUID  = {
      [1]  = "24991da3-14d0-4c65-85c6-9c62168415eb",
      [3]  = "8a9da5a9-f8f5-4a40-bd4c-eefd94e04f41",
      [5]  = "f114625a-5281-4240-a32b-c7e969295226",
      [9]  = "dfa5457d-4b63-46e7-8e55-c6ae46bd02f5",
      [13] = "c0771798-15ad-49c3-aace-0c6655318255",
      [17] = "a653c4cb-381b-41a1-8ebc-2d313ae5ca94"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "MPMotM",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
  {
    Name             = "Water Genasi",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "95d5279b-e063-459d-81d2-d4fa0cec27ca",
    progressionTable = "5d5a49e8-124e-4b79-a7a8-67b500673f34",
    progressionUUID  = {
      [1]  = "43759dcb-f50f-4c22-906c-d79c40a3dbb0",
      [3]  = "27037ac0-d3ca-4899-a2cd-c5bf79bde545",
      [5]  = "d4096312-066a-4fb8-b95c-18c955859025"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "MPMotM",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
  {
    Name             = "Air Genasi",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "35fd2505-5eff-45c5-96e9-98d848f35da4",
    progressionTable = "c7a9163f-9519-43a5-95f5-f04f69b4edaf",
    progressionUUID  = {
      [1]  = "58af38d8-b039-4a75-91fa-4ef079318d8b",
      [3]  = "7d7f30ec-449b-4399-a739-69c4c8d8d6e9",
      [5]  = "0957dda3-57f9-4d27-90d3-57fb4d635ff8"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "MPMotM",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
  {
    Name             = "Earth Genasi",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "3fe9bc5e-2723-4044-a06b-060aed98e40b",
    progressionTable = "e0c0ba89-69aa-40b4-9b4e-4f329eeca617",
    progressionUUID  = {
      [1]  = "47372143-e2a7-4cc5-9810-7caea80bd46a",
      [5]  = "26acdd6e-a7a4-40ca-8392-f95c61e5d4ec",
      [9]  = "9c01a03e-41b8-4e6d-ab6e-bc07f8d802a2",
      [13] = "ae80cccb-4c4f-4393-b233-d093197e27c6",
      [17] = "271d3311-2546-4da6-823e-e92b4c085290"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "MPMotM",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
  {
    Name             = "Fire Genasi",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "410f1b65-e8a1-4f13-b4e8-ae25e5460a7e",
    progressionTable = "bfba96a1-6fb8-487f-9ac8-71d902850ccf",
    progressionUUID  = {
      [1]  = "5a33238e-313f-4cce-8bac-f36db533b704",
      [3]  = "4ebd8b2f-2432-432b-a97c-ac0872f2fbf2",
      [5]  = "2906c3c7-8b2c-40b4-9d08-8748967e7b2d"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "MPMotM",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
  {
    Name             = "Firbolg",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "2b5c5a5b-5da3-4c65-b852-92ff75dda75a",
    progressionTable = "268ca7a8-b96c-41f4-9f66-1a67a22334e7",
    progressionUUID  = {
      [1]  = "003cf78d-7db5-444e-9a2f-e41f9836c8c3",
      [5]  = "42921a0b-bf94-4a29-b2c2-ac859b1dc8f8",
      [9]  = "e6186746-ed40-455d-a6e8-1ea39f0e78a1",
      [13] = "287480b3-edab-4715-a16c-211e2bfa4f0a",
      [17] = "5b7fd93c-5649-427f-87bf-4abf6d7b6312"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "MPMotM",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
  {
    Name             = "Githzerai",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "dc812cdf-7fdb-4372-81c7-72df0e00f542",
    progressionTable = "f51f4e7c-c6a5-4b50-87fa-1790c9edff7a",
    progressionUUID  = {
      [1]  = "8ffe5132-b5ad-424c-befb-eb4fc640a18b",
      [3]  = "9833eb57-a5cf-4da7-a3bb-0f9bf6b04f24",
      [5]  = "76392372-679a-453b-b7e1-4f6bc702a5bf"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "PAitM",
    MainRace         = true,
    Stats            = { "0", "0", "0", "1", "2", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = false
  },
  {
    Name             = "Goliath",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "ff15d50f-57d4-48d9-80ce-0ee75a669010",
    progressionTable = "91f0d10a-26cf-4a7b-8523-75105cbcc33e",
    progressionUUID  = {
      [1]  = "328980be-7a43-4487-8efd-b72476a30bad",
      [5]  = "6a51894f-2f82-42fc-9c52-5cb65b58723c",
      [9]  = "2c755c3a-dc3f-44d9-91fa-9b38ff4fd4d4",
      [13] = "2f6e5399-eec4-4fe0-ae51-d85bbd3bc441",
      [17] = "4b8afb02-d6d3-40fe-bcba-06eca782597d"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "MPMotM",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
  {
    Name             = "Kobold",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "d41e6098-288c-49ba-a861-1ab082f8e4b9",
    progressionTable = "32ff7635-4711-4878-84c7-68947afc0f1d",
    progressionUUID  = {
      [1]  = "9572fef0-12c6-4730-94ad-1471d54e7172"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "MPMotM",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
  {
    Name             = "Kobold - Legacy Craftiness",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "d41e6098-288c-49ba-a861-1ab082f8e4b9",
    progressionTable = "3e272b43-aaf7-418d-8ce0-0eed49aaeb0c",
    progressionUUID  = {
      [1]  = "9b859a49-4c5a-4d38-baef-308bfa6753f1"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "VGtML",
    MainRace         = false,
    NoDefStats       = true
  },
  {
    Name             = "Kobold - Legacy Defiance",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "d41e6098-288c-49ba-a861-1ab082f8e4b9",
    progressionTable = "56268188-707a-48f6-8ca3-835ddce34877",
    progressionUUID  = {
      [1]  = "9572fef0-12c6-4730-94ad-1471d54e7172"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "VGtML",
    MainRace         = false,
    NoDefStats       = true
  },
  {
    Name             = "Kobold - Legacy Draconic Sorcery",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "d41e6098-288c-49ba-a861-1ab082f8e4b9",
    progressionTable = "ca989b4e-a99e-4573-ac0c-941e5c83b960",
    progressionUUID  = {
      [1]  = "1c224cd0-0617-4bc9-89ec-9370d4bef988"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "VGtML",
    MainRace         = false,
    NoDefStats       = true
  },
  {
    Name             = "Lizardfolk",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "44aeee6c-5a35-4733-89a1-420451c6a559",
    progressionTable = "97154b38-f9b2-401c-99c4-b652bfe2b206",
    progressionUUID  = {
      [1]  = "fc81b68e-2835-4791-8a22-bfedee977765",
      [5]  = "1e70d8bd-6ece-4a8f-8f38-1c2820c8dec8",
      [9]  = "33786926-c1ad-48ff-ac0b-7f345e62e700",
      [13] = "48c22894-a744-4473-93ed-2ace873511f7",
      [17] = "2bbaf479-a680-45cd-bf1d-e5f033437b1a"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "MPMotM",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
  {
    Name             = "Minotaur",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "35e9d7e9-716d-4fdb-8b0b-6dac2526389d",
    progressionTable = "3ce4b60a-7301-4bfa-b6e2-f466e4ec56f2",
    progressionUUID  = {
      [1]  = "82319b4e-f38e-49b0-81cd-59953d54d824"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "MPMotM",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
  {
    Name             = "Sea Elf",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "13871336-692e-4af3-9e52-68cdf58330fb",
    progressionTable = "700ec281-1e9f-45ce-b358-e2ef0a047601",
    progressionUUID  = {
      [1]  = "08bcd922-ef05-49e0-8e6f-3f6574c4d54c"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "MPMotM",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
  {
    Name             = "Triton",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "41e6aeb8-e8ae-41b8-b303-8ad2f8b43f61",
    progressionTable = "2150c0c6-1e90-4a64-97ae-d0f68379f5d4",
    progressionUUID  = {
      [1]  = "328aafb6-9e72-4702-b3ab-10bdbc5e953e",
      [3]  = "9663730a-f5b6-4f60-8143-22ef9fdfd93f",
      [5]  = "6b1ce3e8-7e60-4594-86e9-95f18c18de5d"
    },
    Author           = "",
    SourceBook       = "MPMotM",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
  {
    Name             = "Yuan-ti",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "bea5a09a-b394-4a52-9166-659cbc1bf183",
    progressionTable = "b4ada3a0-f98b-452c-a1e6-da0704b00736",
    progressionUUID  = {
      [1]  = "3fbd5365-bb01-4741-965d-2be2f11156bd",
      [3]  = "017874f0-8d02-4948-8cd3-2605ee04e99d"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "MPMotM",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
--  {
--    Name             = "Yuan-ti - Serpent",
--    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
--    modGuid          = "bea5a09a-b394-4a52-9166-659cbc1bf183",
--    progressionTable = "61ed638b-1b83-4b79-a131-cae506d0d219",
--    progressionUUID  = {
--      [1]  = "85f21e44-6bb4-4782-affa-d5a7aa1d8a9a"
--    },
--    Author           = "Dungeons and Souls",
--    SourceBook       = "MPMotM",
--    MainRace         = false,
--    NoDefStats       = false
--  },
--  {
--    Name             = "Yuan-ti - Humanity",
--    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
--    modGuid          = "bea5a09a-b394-4a52-9166-659cbc1bf183",
--    progressionTable = "1fdbcd97-9c06-4bf6-8094-58c52c60987f",
--    progressionUUID  = {
--      [1]  = "d756b55f-d72a-4469-9624-d6d3e57f1e91"
--    },
--    Author           = "Dungeons and Souls",
--    SourceBook       = "MPMotM",
--    MainRace         = false,
--    NoDefStats       = false
--  },
  {
    Name             = "Ogresh",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "0cc2683d-c407-40d6-ad65-8c5f95d7ef4b",
    progressionTable = "efce75a6-0c22-4d2a-aaf6-4c26e07abd32",
    progressionUUID  = {
      [1]  = "11d3fa5d-3e88-4c8c-b21c-e183d7208533",
      [5]  = "53144ecc-716c-49cc-b390-02db4e441863",
      [9]  = "0bbc7c45-e455-4766-8f5c-040617155e9a",
      [13] = "310e1d68-5ef0-42f3-be3a-2a33bf178f1b",
      [17] = "0e8dfc2b-6e11-47ca-98b2-d5920b244476"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "GHPG",
    MainRace         = true,
    Sab              = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats       = false
  },
  {
    Name             = "Yuan-ti Pureblood",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "94710eae-8809-42fe-ab17-5681ceae8714",
    progressionTable = "ba0ef186-feaa-4ff9-904e-d58f3b7fba82",
    progressionUUID  = {
      [1]  = "69a8edff-fdec-4ef5-aeb6-dcb15562b062",
      [3]  = "800550e4-4c07-46b3-a4de-536b5063b2f5"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "VGtML",
    MainRace         = true,
    Stats            = { "0", "0", "0", "1", "0", "2" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = false
  },
  {
    Name             = "Elf - Pallid",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "02ad19d9-bb24-44a6-9693-35cec821774c",
    progressionTable = "99dd3e3d-4246-4584-87e9-e34a8939fb74",
    progressionUUID  = {
      [1] = "82704351-c1d6-4767-adef-49e25a290aad",
      [3] = "44205be3-30c9-4e83-8f1b-74761fe81362",
      [5] = "17e7394b-fe08-4dbe-a7cb-d117f7a26c24"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "EGtW",
    MainRace         = false,
    Stats            = { "0", "2", "0", "0", "1", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = true
  },
  {
    Name             = "Vedalken",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "58474556-4b69-494d-b290-1421010d1742",
    progressionTable = "930b392c-3a2d-4270-bf4b-5802e12b2839",
    progressionUUID  = {
      [1]  = "d17424ad-839d-4733-b16d-f7cb007c865f"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "GGtR",
    MainRace         = true,
    Stats            = { "0", "0", "0", "2", "1", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = false
  },
  {
    Name             = "Kobold (Legacy)",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "866dee81-42b5-4647-9fb7-ec39271f6c96",
    progressionTable = "561fb98e-ddc2-44ad-842a-aa26837ab8d4",
    progressionUUID  = {
      [1]  = "ee0bbb70-b8f7-44ec-9419-565ab963f664"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "VGtML",
    MainRace         = true,
    Stats            = { "0", "2", "0", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = false
  },
  {
    Name             = "Kalashtar",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "cbd0f091-d2a7-4569-bdf8-56511cea3076",
    progressionTable = "b859aa61-d1eb-442e-9efc-9200922685ae",
    progressionUUID  = {
      [1]  = "0e35ec74-a63c-4d24-8912-4afa4a9930d8"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "VGtML",
    MainRace         = true,
    Stats            = { "0", "0", "0", "0", "2", "1" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = false
  },
  {
    Name             = "Bugbear",
    modURL           = { "https://www.nexusmods.com/baldursgate3/mods/215" },
    modGuid          = "f4361c10-b197-4490-ae30-06ce796f950e",
    progressionTable = "7ce6c941-4964-41a2-906f-71d4e1527003",
    progressionUUID  = {
      [1]  = "d01d244f-3ae2-4d15-b0ba-9aed04fc16ac"
    },
    Author           = "Dungeons and Souls",
    SourceBook       = "VGtML",
    MainRace         = true,
    Stats            = { "2", "1", "0", "0", "0", "0" }, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
    NoDefStats       = false
  },

  --[[
|	___________.__       ___.                          ___________                                                          _____  ________
|	\_   _____/|__|______\_ |__ _____    ____   ______ \__    ___/______   ____ _____    ________ _________ ___.__.   _____/ ____\ \______ \____________     ____   ____   ____   ______
|	 |    __)  |  \___   /| __ \\__  \  /    \ /  ___/   |    |  \_  __ \_/ __ \\__  \  /  ___/  |  \_  __ <   |  |  /  _ \   __\   |    |  \_  __ \__  \   / ___\ /  _ \ /    \ /  ___/
|	 |     \   |  |/    / | \_\ \/ __ \|   |  \\___ \    |    |   |  | \/\  ___/ / __ \_\___ \|  |  /|  | \/\___  | (  <_> )  |     |    `   \  | \// __ \_/ /_/  >  <_> )   |  \\___ \
|	 \___  /   |__/_____ \|___  (____  /___|  /____  >   |____|   |__|    \___  >____  /____  >____/ |__|   / ____|  \____/|__|    /_______  /__|  (____  /\___  / \____/|___|  /____  >
|	     \/             \/    \/     \/     \/     \/                         \/     \/     \/              \/                             \/           \//_____/             \/     \/
|	     \_Fizbans Treasury of Dragons
]] --
  {
    Name            = "Dragonborn - Overwrite",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1793" },
    modGuid         = "1e64a434-4318-42fe-9388-e6aa49505094",
    progressionTable = "e2472b4f-682a-4ac8-b11c-723f921fd7a1",
    progressionUUID = {
      [1] = "cabc4d46-f08e-4a48-8937-0bd1067ab43d",
      [5] = "b0ac83a4-f274-4d89-be11-f229377956a1",
      [9] = "f07b73ae-4d93-447d-ae12-674da92309cd",
      [13] = "22edfe7f-1674-4f6b-925a-fa4de74d4b15",
      [17] = "39403bcb-b9e5-4ebb-b9f6-1b13efc05bb9"
    },
    Author          = "3XC4L1B3R",
    SourceBook      = "PHB",
    MainRace        = false,
    NoDefStats      = false
  },
  {
    Name            = "Dragonborn - Amethyst",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1793" },
    modGuid         = "1e64a434-4318-42fe-9388-e6aa49505094",
    progressionTable = "253ff82f-32f1-49f0-be6b-2e51bb48c150",
    progressionUUID = {
      [1] = "862da67a-a65a-4cae-b9da-aceb974bc6e2",
      [5] = "68ebe0af-1ce9-416f-9b4f-73483e55faf4"
    },
    Author          = "3XC4L1B3R",
    SourceBook      = "PHB",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true
  },
  {
    Name            = "Dragonborn - Crystal",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1793" },
    modGuid         = "1e64a434-4318-42fe-9388-e6aa49505094",
    progressionTable = "68dc67cf-57b9-438f-8c6c-7bf6629327db",
    progressionUUID = {
      [1] = "f416a104-9a39-47ee-a96f-755f60f63d3e",
      [5] = "ccce1850-17d6-416f-a2aa-88047dc9f2d5"
    },
    Author          = "3XC4L1B3R",
    SourceBook      = "PHB",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true
  },
  {
    Name            = "Dragonborn - Emerald",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1793" },
    modGuid         = "1e64a434-4318-42fe-9388-e6aa49505094",
    progressionTable = "88caf2b4-9ca0-45e1-b21e-c5ee49e1a531",
    progressionUUID = {
      [1] = "8c099c31-cc1b-4aa2-b6ba-43b46b607e5d",
      [5] = "1f57fb95-6522-478e-8e98-06950155bdfb"
    },
    Author          = "3XC4L1B3R",
    SourceBook      = "PHB",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true
  },
  {
    Name            = "Dragonborn - Sapphire",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1793" },
    modGuid         = "1e64a434-4318-42fe-9388-e6aa49505094",
    progressionTable = "4199b326-d8d5-4cf3-b0d0-8c6cdae08f26",
    progressionUUID = {
      [1] = "aff81767-f832-4599-b980-e4123cec0306",
      [5] = "ffeb1fef-7e29-49cc-9778-af9bd7159525"
    },
    Author          = "3XC4L1B3R",
    SourceBook      = "PHB",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true
  },
  {
    Name            = "Dragonborn - Topaz",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1793" },
    modGuid         = "1e64a434-4318-42fe-9388-e6aa49505094",
    progressionTable = "0848fdf4-82c1-41ae-9d21-3c9bb7b40981",
    progressionUUID = {
      [1] = "f9d85bdb-2930-42b9-ace1-78b9187e8546",
      [5] = "936b9510-0988-43b6-ae67-bec60ac6a1e1"
    },
    Author          = "3XC4L1B3R",
    SourceBook      = "PHB",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true
  },
  {
    Name            = "Dragonborn - Black Overwrite",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1793" },
    modGuid         = "1e64a434-4318-42fe-9388-e6aa49505094",
    progressionTable = "445a41db-995d-4e35-892a-4ab0e34d4594",
    progressionUUID = {
      [5] = "54d30867-1c05-49ae-81b5-d7ec72d9c4cc"
    },
    Author          = "3XC4L1B3R",
    SourceBook      = "PHB",
    MainRace        = false,
    NoDefStats      = false
  },
  {
    Name            = "Dragonborn - Blue Overwrite",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1793" },
    modGuid         = "1e64a434-4318-42fe-9388-e6aa49505094",
    progressionTable = "dbe8c9aa-8a1d-49d2-b0b1-816966fe2c8c",
    progressionUUID = {
      [5] = "a80f41b2-8c0a-4167-92a8-2deb7b87a99a"
    },
    Author          = "3XC4L1B3R",
    SourceBook      = "PHB",
    MainRace        = false,
    NoDefStats      = false
  },
  {
    Name            = "Dragonborn - Green Overwrite",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1793" },
    modGuid         = "1e64a434-4318-42fe-9388-e6aa49505094",
    progressionTable = "cc914fb7-e0eb-49f0-a195-20d11917bf1a",
    progressionUUID = {
      [5] = "212748d1-a44a-4ed2-940a-8845e6711410"
    },
    Author          = "3XC4L1B3R",
    SourceBook      = "PHB",
    MainRace        = false,
    NoDefStats      = false
  },
  {
    Name            = "Dragonborn - Red Overwrite",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1793" },
    modGuid         = "1e64a434-4318-42fe-9388-e6aa49505094",
    progressionTable = "ed5b3a12-7f18-46c2-8fe9-1ff96d44ed96",
    progressionUUID = {
      [5] = "56103616-9a48-4708-8a8b-e06e489325d1"
    },
    Author          = "3XC4L1B3R",
    SourceBook      = "PHB",
    MainRace        = false,
    NoDefStats      = false
  },
  {
    Name            = "Dragonborn - White Overwrite",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1793" },
    modGuid         = "1e64a434-4318-42fe-9388-e6aa49505094",
    progressionTable = "91577000-c8f7-465b-b56f-eb6d87d173d2",
    progressionUUID = {
      [5] = "16e5b1bf-cb8b-45bf-8f1b-ffd47f1439c6"
    },
    Author          = "3XC4L1B3R",
    SourceBook      = "PHB",
    MainRace        = false,
    NoDefStats      = false
  },
  {
    Name            = "Dragonborn - Brass Overwrite",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1793" },
    modGuid         = "1e64a434-4318-42fe-9388-e6aa49505094",
    progressionTable = "d5338f29-2047-40a7-ad72-f65241150858",
    progressionUUID = {
      [5] = "0156f518-c7bc-468c-9c02-d1a1d237a8c3"
    },
    Author          = "3XC4L1B3R",
    SourceBook      = "PHB",
    MainRace        = false,
    NoDefStats      = false
  },
  {
    Name            = "Dragonborn - Bronze Overwrite",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1793" },
    modGuid         = "1e64a434-4318-42fe-9388-e6aa49505094",
    progressionTable = "829ed0e9-25dc-49ca-aee2-2494bbca180b",
    progressionUUID = {
      [5] = "351c5d95-50cc-4be7-a627-46ad4d326b4a"
    },
    Author          = "3XC4L1B3R",
    SourceBook      = "PHB",
    MainRace        = false,
    NoDefStats      = false
  },
  {
    Name            = "Dragonborn - Copper Overwrite",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1793" },
    modGuid         = "1e64a434-4318-42fe-9388-e6aa49505094",
    progressionTable = "f0747c54-dccd-4a1b-89d3-adee8bcc8b76",
    progressionUUID = {
      [5] = "825e6d26-e6af-4907-8f31-2bab7322ab6c"
    },
    Author          = "3XC4L1B3R",
    SourceBook      = "PHB",
    MainRace        = false,
    NoDefStats      = false
  },
  {
    Name            = "Dragonborn - Gold Overwrite",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1793" },
    modGuid         = "1e64a434-4318-42fe-9388-e6aa49505094",
    progressionTable = "8aeadd65-f951-4004-8f65-b3cd127e1e6d",
    progressionUUID = {
      [5] = "7260fd5d-7c34-465b-8a98-8057b586ee6a"
    },
    Author          = "3XC4L1B3R",
    SourceBook      = "PHB",
    MainRace        = false,
    NoDefStats      = false
  },
  {
    Name            = "Dragonborn - Silver Overwrite",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/1793" },
    modGuid         = "1e64a434-4318-42fe-9388-e6aa49505094",
    progressionTable = "ccbbbf91-53a4-4777-9676-5469d3d5b821",
    progressionUUID = {
      [5] = "a9398494-1bc7-4cac-a42d-9e1da7dac101"
    },
    Author          = "3XC4L1B3R",
    SourceBook      = "PHB",
    MainRace        = false,
    NoDefStats      = false
  },

  --[[
|	____________________ ________  ________ ________                                    ___.                           _________    ___.                               ___________                                  .__
|	\______   \______   \\_____  \/  _____/ \______ \____________     ____   ____   ____\_ |__   ___________  ____    /   _____/__ _\_ |______________    ____  ____   \_   _____/__  ______________    ____   _____|__| ____   ____
|	 |    |  _/|    |  _/ /  ____/   __  \   |    |  \_  __ \__  \   / ___\ /  _ \ /    \| __ \ /  _ \_  __ \/    \   \_____  \|  |  \ __ \_  __ \__  \ _/ ___\/ __ \   |    __)_\  \/  /\____ \__  \  /    \ /  ___/  |/  _ \ /    \
|	 |    |   \|    |   \/       \  |__\  \  |    `   \  | \// __ \_/ /_/  >  <_> )   |  \ \_\ (  <_> )  | \/   |  \  /        \  |  / \_\ \  | \// __ \\  \__\  ___/   |        \>    < |  |_> > __ \|   |  \\___ \|  (  <_> )   |  \
|	 |______  /|______  /\_______ \_____  / /_______  /__|  (____  /\___  / \____/|___|  /___  /\____/|__|  |___|  / /_______  /____/|___  /__|  (____  /\___  >___  > /_______  /__/\_ \|   __(____  /___|  /____  >__|\____/|___|  /
|	        \/        \/         \/     \/          \/           \//_____/             \/    \/                  \/          \/          \/           \/     \/    \/          \/      \/|__|       \/     \/     \/               \/
|	        \_BB26 Dragonborn Subrace Expansion
]] --
  {
    Name            = "Pink Dragonborn",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/2116" },
    modGuid         = "05fa72c7-be18-4398-b0c6-a5c11fc897f6",
    progressionTable = "498949e6-f8d6-4475-b77e-b58dfd99a620",
    progressionUUID = {
      [1] = "50ee17bb-bc53-4d03-8100-0dd6c6bb48f8"
    },
    Author          = "Backburner26",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true
  },
  {
    Name            = "Shadow Dragonborn",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/2116" },
    modGuid         = "05fa72c7-be18-4398-b0c6-a5c11fc897f6",
    progressionTable = "a4b1a002-e287-468c-8b74-fd2bdacb18b4",
    progressionUUID = {
      [1] = "e216af62-5c9d-492b-8d2f-bf669d70b078",
      [5] = "1a707b04-4e1e-4adb-aba0-6217587e19bf"
    },
    Author          = "Backburner26",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true
  },
  {
    Name            = "Solar Dragonborn",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/2116" },
    modGuid         = "05fa72c7-be18-4398-b0c6-a5c11fc897f6",
    progressionTable = "85af98f0-eca2-4568-a33e-ee36dda0fd47",
    progressionUUID = {
      [1] = "a36bfa8a-afeb-4ff3-9985-8726cc45a8c8"
    },
    Author          = "Backburner26",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true
  },
  {
    Name            = "Lunar Dragonborn",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/2116" },
    modGuid         = "05fa72c7-be18-4398-b0c6-a5c11fc897f6",
    progressionTable = "fab718ed-3c0e-4039-878f-3e62eabe36b6",
    progressionUUID = {
      [1] = "edfcb043-f704-4a84-a5ba-a9098787eb81"
    },
    Author          = "Backburner26",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true
  },
  {
    Name            = "Deep Dragonborn",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/2116" },
    modGuid         = "05fa72c7-be18-4398-b0c6-a5c11fc897f6",
    progressionTable = "6f581ffa-a813-4494-94ae-3ca535178ab0",
    progressionUUID = {
      [1] = "097c8ee7-0525-4a9f-b614-24d1dd46aac6",
      [5] = "8be7c464-9181-4a5e-95fc-dd6c00a6e35b"
    },
    Author          = "Backburner26",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true
  },
  {
    Name            = "Moonstone Dragonborn",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/2116" },
    modGuid         = "05fa72c7-be18-4398-b0c6-a5c11fc897f6",
    progressionTable = "a0b17958-8b88-4f2c-8439-79dbe16c1c2c",
    progressionUUID = {
      [1] = "c990525f-e49b-4f82-b31f-e5dff0afed0a",
      [5] = "7fea02ce-a40a-46a0-8c2c-9dd316f5cd6f"
    },
    Author          = "Backburner26",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true
  },
  {
    Name            = "Grey Dragonborn",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/2116" },
    modGuid         = "05fa72c7-be18-4398-b0c6-a5c11fc897f6",
    progressionTable = "dc0c5b86-d0e8-4242-b2ba-747a11f52f21",
    progressionUUID = {
      [1] = "f011eebf-9545-4972-98d1-841c61b0ccae"
    },
    Author          = "Backburner26",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true
  },
  {
    Name            = "Yellow Dragonborn",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/2116" },
    modGuid         = "05fa72c7-be18-4398-b0c6-a5c11fc897f6",
    progressionTable = "25ffeb36-0103-4bbb-8db0-9a04a07d5ea4",
    progressionUUID = {
      [1] = "f75743c6-8a0e-49a6-b9b1-4a001ea0ffb2",
      [5] = "1acfead1-107a-4a78-ab96-f64a3e424dbe",
      [11] = "15c34e9a-3380-4018-8b77-1c147ae3a689"
    },
    Author          = "Backburner26",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true
  },
  {
    Name            = "Orange Dragonborn",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/2116" },
    modGuid         = "05fa72c7-be18-4398-b0c6-a5c11fc897f6",
    progressionTable = "e400cd2e-5e1e-46a4-a41c-dc11a598f417",
    progressionUUID = {
      [1] = "039b3255-28c6-43a1-a40c-4fbbec842cb4"
    },
    Author          = "Backburner26",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true
  },
  {
    Name            = "Purple Dragonborn",
    modURL          = { "https://www.nexusmods.com/baldursgate3/mods/2116" },
    modGuid         = "05fa72c7-be18-4398-b0c6-a5c11fc897f6",
    progressionTable = "556709e2-de9a-4f6c-a099-4f1f840d36b6",
    progressionUUID = {
      [1] = "19f4eded-03fb-4363-90c2-689bff080c4b",
      [5] = "9bc1cca5-bc05-4df2-ba16-be2b41eabd94"
    },
    Author          = "Backburner26",
    SourceBook      = "",
    MainRace        = false,
    Sab             = { "2", "1" }, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
    NoDefStats      = true
  },
  --
  -- Racemod by author - https://www.nexusmods.com/baldursgate3/mods/
  --
--  {
--    Name              = "",
--    modURL            = { "https://www.nexusmods.com/baldursgate3/mods/" },
--    modGuid           = "",
--    progressionTable  = "",
--    progressionUUID   = {
--      [1] = "",
--      [2] = "",
--      [3] = "",
--      [4] = "",
--      [5] = "",
--      [6] = "",
--      [7] = "",
--      [8] = "",
--      [9] = "",
--      [10] = "",
--      [11] = "",
--      [12] = "",
--      [13] = "",
--      [14] = "",
--      [15] = "",
--      [16] = "",
--      [17] = "",
--      [18] = "",
--      [19] = "",
--      [20] = ""
--    },
--    Author            = "",
--    SourceBook        = "",
--    MainRace          = true,
--    Stats             =	{"0", "0", "0", "0", "0", "0"}, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
--    Sab               = {"0","0","0"}, --[[ valeurs autorisé : {"0","0","0"} ou {"0","0"} ou {"0"} ]]
--    NoDefStats        = false
--  },
  --[[
|	__________.__  __    __              __________                  __       _____             .___
|	\______   \__|/  |__/  |_  __________\______   \_____    _______/  |_    /     \   ____   __| _/______
|	 |    |  _/  \   __\   __\/ __ \_  __ \     ___/\__  \  /  ___/\   __\  /  \ /  \ /  _ \ / __ |/  ___/
|	 |    |   \  ||  |  |  | \  ___/|  | \/    |     / __ \_\___ \  |  |   /    Y    (  <_> ) /_/ |\___ \
|	 |______  /__||__|  |__|  \___  >__|  |____|    (____  /____  > |__|   \____|__  /\____/\____ /____  >
|			\/                    \/                     \/     \/                 \/            \/    \/
|			 \_BitterPast Mods
]] --
  --
  -- Underdark's Chosen - Drow RP by BitterPast - https://www.nexusmods.com/baldursgate3/mods/3485
  --
  --	{
  --		Name				=	"Assassin Drow",
  --		modURL				=	{"https://www.nexusmods.com/baldursgate3/mods/3485"},
  --		modGuid				=	"76015234-1bb4-42dc-adb9-c86c7f4cbb39",
  --		progressionUUID		=	{
  --									[1]	=	"4a634f24-bdcb-4559-b8be-7847133ad1c3"
  --								},
  --		Author				=	"BitterPast",
  --		SourceBook			=	"",
  --		MainRace			=	true,
  --		Stats				=	{"0", "2", "0", "0", "0", "1"}, --[[ "Strength", "Dexterity", "Constitution", "Intelligence", "Wisdom", "Charisma" ]]
  --		NoDefStats			=	false
  --	},

}

--[[
Todo

	PHB
	variant human mods
	- https://www.nexusmods.com/baldursgate3/mods/3468
	- https://www.nexusmods.com/baldursgate3/mods/10232
	- https://www.nexusmods.com/baldursgate3/mods/875



	5e Extended
	- Mori's Astral Elves - https://www.nexusmods.com/baldursgate3/mods/7718
	- Astral Elves 5E - https://www.nexusmods.com/baldursgate3/mods/1780
	- Astral Elves - https://www.nexusmods.com/baldursgate3/mods/1388
	- Astral Half-Elves - https://www.nexusmods.com/baldursgate3/mods/9676

	Half-homebrew
	- Demon Player Race - https://www.nexusmods.com/baldursgate3/mods/3703
	- Half Demon (Cambion) Realistic - https://www.nexusmods.com/baldursgate3/mods/4905
	- Displacer Player Race and Hireling - https://www.nexusmods.com/baldursgate3/mods/5002

	Homebrew
	- The Dunmer - Playable Dark Elf Race - https://www.nexusmods.com/baldursgate3/mods/4076
	- Tiger Race Mod by Babbo - https://www.nexusmods.com/baldursgate3/mods/10532
	- Coven of the Underdark - Vampiric Drow Subrace - https://www.nexusmods.com/baldursgate3/mods/10456
	- Inner Planes Unleashed - Mephit Race - https://www.nexusmods.com/baldursgate3/mods/10814
	- Playable Dire Wolf Race - https://www.nexusmods.com/baldursgate3/mods/2264
	- Playable Skeletons - https://www.nexusmods.com/baldursgate3/mods/565
	- Wolfkind Race by Team TechnoBabble - https://www.nexusmods.com/baldursgate3/mods/8591

	BitterPast - Collection - Probably not
	- Vastly Superior Gnomes - https://www.nexusmods.com/baldursgate3/mods/3364
	- Human Zombie-WhiteWalker RP - https://www.nexusmods.com/baldursgate3/mods/3370
	- Sins of the Father - Dark Urge RP - https://www.nexusmods.com/baldursgate3/mods/3822
	- Metallic and Chromatic Dragonborn Combined - https://www.nexusmods.com/baldursgate3/mods/3450
	- Berserker Dragonborn Combined - https://www.nexusmods.com/baldursgate3/mods/3394
	- Assassin RP Elf and Halfling - https://www.nexusmods.com/baldursgate3/mods/3437
	- Undead Dragonborn Traits - https://www.nexusmods.com/baldursgate3/mods/3372
	- Variant Human RP - https://www.nexusmods.com/baldursgate3/mods/3468
	- The Dwarf King - https://www.nexusmods.com/baldursgate3/mods/3378
	- Wood Elf Beastmaster Combined - https://www.nexusmods.com/baldursgate3/mods/3395
	- Barbarian Half-Orc and others Combined - https://www.nexusmods.com/baldursgate3/mods/3371
	- Arcane Trickster Drow Race Combined - https://www.nexusmods.com/baldursgate3/mods/3373
	- Slightly Better Dragonborn - https://www.nexusmods.com/baldursgate3/mods/3300
]]
   --
