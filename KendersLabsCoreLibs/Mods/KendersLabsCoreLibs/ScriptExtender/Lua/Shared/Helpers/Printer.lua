if Ext.Mod.IsModLoaded("755a8a72-407f-4f0d-9a33-274ac0f0b53d") then
  KLPrinter = VolitionCabinetPrinter:New { Prefix = "KendersLibsPrinter", ApplyColor = true,
    DebugLevel = 1 }

  function KLPrint(debugLevel, ...)
    KLPrinter:SetFontColor(0, 255, 255)
    KLPrinter:Print(debugLevel, ...)
  end

  function KLTest(debugLevel, ...)
    KLPrinter:SetFontColor(100, 200, 150)
    KLPrinter:PrintTest(debugLevel, ...)
  end

  function KLSuccess(debugLevel, ...)
    KLPrinter:SetFontColor(50, 255, 100)
    KLPrinter:Print(debugLevel, ...)
  end

  function KLDebug(debugLevel, ...)
    KLPrinter:SetFontColor(200, 200, 0)
    KLPrinter:PrintDebug(debugLevel, ...)
  end

  function KLWarn(debugLevel, ...)
    KLPrinter:SetFontColor(255, 100, 50)
    KLPrinter:PrintWarning(debugLevel, ...)
  end

  function KLDump(debugLevel, ...)
    KLPrinter:SetFontColor(190, 150, 225)
    KLPrinter:Dump(debugLevel, ...)
  end

  function KLDumpArray(debugLevel, ...)
    KLPrinter:DumpArray(debugLevel, ...)
  end
end
