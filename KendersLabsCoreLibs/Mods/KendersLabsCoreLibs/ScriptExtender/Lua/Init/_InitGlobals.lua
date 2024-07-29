if Ext.Mod.IsModLoaded("396c5966-09b0-40a1-af3f-93a5e9ce71c0") then
  local clImports = {}
  clImports[1] = "Globals"
  clImports[2] = "Strings"
  clImports[3] = "DictUtils"
  clImports[4] = "Utils"
  clImports[5] = "Validators"

  CLGlobals, CLStrings, CLDictUtils, CLUtils, CLValidators = Mods.CommunityLibrary.Import(clImports)
end
