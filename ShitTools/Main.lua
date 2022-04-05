require("Files\\Functions")

--// Startup Info
if not FileExists("Files\\Data\\ShitToolsData\\StartUp.txt") or FileExists("Files\\Data\\ShitToolsData\\AlwaysShowMenu.txt") then
    eval("cls")

    print(ColorText("green", "Thanks for using ShitTools!"))
    print(ColorText("green", "Made by: "))
    print(ColorText("green", "  -  Expired Bread#8976"))

    NewLine()

    print(ColorText("red", "If you have any questions, suggestions, or require any help then, please contact me on Discord."))
    print(ColorText("red", "If anything brakes while using this, we are NOT responsible for it."))

    eval('pause')
    
    CreateTextFile("Files\\Data\\ShitToolsData\\StartUp.txt", "Dont delete this file or the program will restart the intro")
end

--// Main
if not FileExists("Files\\Data\\ShitToolsData\\CMDTitle.txt") then
    RandomTitle()
else
    eval("title " .. ReadFile("Files\\Data\\ShitToolsData\\CMDTitle.txt"))
end 

function ShowFiles()
    eval('cls')

    NewLine(2)
    print(ColorText("white", PrintMainTitle()))

    local files = GetFiles("Files\\Extensions")
    local length = 3

    NewLine(2)

    print(ColorText("red", "[ exit ]: to exit\n"))

    for i = 1, #files do
        local file = files[i]
        local metadata = require("Files\\Extensions\\" .. file:gsub(".lua", "")) 

        print(ColorText(metadata.Color, "[", i, "]", metadata.Title), ColorText("yellow", "\n   Author:          ", metadata.Author, "\n   Version:         ", metadata.Version, "\n   Description:     ", metadata.Description), "\n")
    end
end

while true do
    ShowFiles()

    local input = io.read()
    local files = GetFiles("Files\\Extensions")

    if input == 'exit' then break end
    if files[tonumber(input)] then
        require("Files\\Extensions\\" .. files[tonumber(input)]:gsub(".lua", "")).Run()
    end
end
