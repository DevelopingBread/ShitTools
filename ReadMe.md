# ShitTools Documentation

## Install ShitTools Here
[ShitToolsInstaller.zip](https://github.com/DevelopingBread/ShitTools/files/8422068/ShitToolsInstaller.zip)

Unzip it and run ShitToolsInstall.cmd

**MAKE SURE YOU HAVE 7zip INSTALLED**

##  eval
```lua
<void?> eval(<string> code)
```
Runs code using batch.

##  PrintMainTitle
```lua
<string> PrintMainTitle()
```
Returns the logo of ShitTools in a string.

##  PickRandomItemFromTable
```lua
<any> PickRandomItemFromTable(<table> table)
```
Returns a random item from a table.

##  Wait
```lua
<void> Wait(<number> time)
```
Waits for a certain amount of time.

##  NewLine
```lua
<void> NewLine(<number> times)
```
Prints a new line.

##  FileExists 
```lua
<boolean> FileExists(<string> path)
```
Returns true if the file exists.

##  GetFiles 
```lua
<table> GetFiles(<string> path)
```
Returns a table of all files in a folder.

##  CreateTextFile 
```lua
<void> CreateTextFile(<string> path, <string> text)
```
Creates a text file.

##  ClearFolderRecursive 
```lua
<void> ClearFolderRecursive(<string> path)
```
Clears a folder recursively.

##  CreateFolder 
```lua
<void> CreateFolder(<string> path, <string> name)
```
Creates a folder.

##  RandomTitle 
```lua
<void> RandomTitle()
```
Sets the CMD title to a random title.

##  DeleteFile 
```lua
<void> DeleteFile(<string> path)
```
Deletes a file.

##  ReadFile 
```lua
<string> ReadFile(<string> path)
```
Reads a file and returns the text.

##  ObjectExistsInTable 
```lua
<boolean> ObjectExistsInTable(<any> object, <table> table)
```
Returns true if the object exists in the table.

##  ConvertStringToTable 
```lua
<table> ConvertStringToTable(<string> string)
```
Converts a string to a table.

##  GetTableKeys
```lua
<table> GetTableKeys(<table> table)
```
Returns the keys of a table.

##  GetTableValues 
```lua
<table> GetTableValues(<table> table)
```
Returns the values of a table.

##  GetTableKeysAndValues 
```lua
<table> GetTableKeysAndValues(<table> table)
```
Returns the keys and values of a table.

## IsFolder
```lua
<boolean> IsFolder(<string> path)
```
Returns true if the path is a folder. (Read below for the warning)

## GetWorkingDirectory
```lua
<string> GetWorkingDirectory()
```
Returns the working directory.

##  OpenFileDialog
```lua
<string> OpenFileDialog(<string> title, <string> startLocation)
```
Opens a file dialog. (Warning, this does test each file by adding a text file and removing it {Uses the function called IsFolder}. 1 it can break your computer or a file in the folder. Be careful)

##  GetModule
```lua
<string> GetModule(<string> Module)
```
Returns the module.

## PressEnterToContiue
```lua
<void> PressEnterToContiue()
```
Waits until the user presses enter.

## DeleteSpeedTest
```lua
<void> DeleteSpeedTest()
```
Test how long just to delete a file.

## GetAvg
```lua
<number> GetAvg(<table> table)
```
Returns the average of a table.