# windows-automation
Automates Visual Studio Code Project Creation

## 1. Create specific file
If you want to run specific batch files, you need to create these batch files anywhere you want (here Desktop\Projects\VSCode).<br />
With maybe this code:<br />
```
cd "C:\Users\%USERNAME%\Desktop\Projects\VSCode"
mkdir %1
cd %1
code .
```

## 2. Create command file
To run your individual commands (in this case VScode automatically project creation) create a file in your USER Folder: C:\Users\USERNAME and name it "init.cmd".
Insert your specific code.<br />
Every doskey tag will create a alias for your specific command.<br />
For Example:<br />
```
@echo off
doskey e=explorer $*
doskey ls=dir
doskey create="C:\Users\%USERNAME%\Documents\shell\vscode.cmd" $*
```

## 3. Make it run
If you don't want to execute the init.cmd every time you open the commandline manually, you need to make it autorun. To do so and let it run every time you open your commandline, use the following command.<br />
```
reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun /t REG_EXPAND_SZ /d "%"USERPROFILE"%\init.cmd" /f
```
If you want to undo this autorun, just provide this command.<br />
```
reg delete "HKCU\Software\Microsoft\Command Processor" /v AutoRun
```


Sources: <br />
https://stackoverflow.com/questions/20530996/aliases-in-windows-command-prompt

https://stackoverflow.com/questions/54866820/create-alias-for-a-specific-command-in-cmd/54872621
