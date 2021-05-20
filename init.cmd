@echo off
:: to unregister use : "reg delete "HKCU\Software\Microsoft\Command Processor" /v AutoRun"
doskey e=explorer $*
doskey ls=dir
doskey create="C:\Users\%USERNAME%\Documents\commands.cmd" $*