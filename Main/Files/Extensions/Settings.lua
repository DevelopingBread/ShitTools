local Metadata = {
    Title = "Settings", -- Title
    Author = "ShitTools", -- Author
    Version = "1.0.0", -- This is the version of the script
    Description = "Edits the settings for ShitTools", -- Description

    Color = "Magenta", -- Color of the text

    Run = function ()
        require("Files\\Modules\\Functions")

        local settings = {
            -- {
            --     Title = "",
            --     Description = "",
            --     Color = "",

            --     Run = function ()
 
            --     end
            -- },
            {
                Title = "Clear All ShitTools Data",
                Description = "Clears all data from ShitTools saved in ShitTools\\Files\\Data",
                Color = "Red",

                Run = function ()
                    eval("cls")

                    -- Ask user if they want to clear all data
                    print(ColorText("red", "Are you sure you want to clear all data?\n"))
                    print(ColorText("yellow", "This will delete all data from ShitTools"))
                    print(ColorText("yellow", "This cannot be undone\n"))
                    print(ColorText("red", "Type 'Yes' to continue"))
                    print(ColorText("green", "Type anything else to cancel\n"))

                    local input = io.read()

                    if input:lower() == 'yes' then 
                        ClearFolderRecursive("Files\\Data")

                        print(ColorText("green", "\nAnd its gone!"))
                        print(ColorText("green", "Press enter to restart"))
                        local _ = io.read()
                        
                        eval("exit")
                    end
                end
            },
            {
                Title = "Always show menu",
                Description = "Shows the menu every time you open ShitTools",
                Color = "Yellow",
                Enabled = FileExists("Files\\Data\\ShitTools\\AlwaysShowMenu.txt"),

                Run = function()
                    eval("cls")

                    print(ColorText("green", "Say True to enable"))
                    print(ColorText("red", "Say False to disable\n"))

                    local input = io.read()

                    if input:lower() == 'true' then 
                        CreateTextFile("Files\\Data\\ShitToolsData\\AlwaysShowMenu.txt", "")

                        print(ColorText("green", "\nAnd it enabled!"))
                        Wait(2)
                    elseif input:lower() == 'false' then
                        DeleteFile("Files\\Data\\ShitToolsData\\AlwaysShowMenu.txt")

                        print(ColorText("green", "\nAnd it disabled!"))
                        Wait(2)
                    else
                        return
                    end
                end
            },
            {
                Title = "Set CMD title",
                Description = "Sets your CMD title to what ever you input",
                Color = "White",

                Run = function ()
                    eval("cls")

                    print(ColorText("green", "Enter your new CMD title"))
                    print(ColorText("green", "Type 'Default' to go back\n"))

                    local input = io.read()

                    if input:lower() == 'default' then
                        DeleteFile("Files\\Data\\ShitToolsData\\CMDTitle.txt")
                        RandomTitle()
                        return
                    end

                    eval("title " .. input)

                    DeleteFile("Files\\Data\\ShitToolsData\\CMDTitle.txt")
                    CreateTextFile("Files\\Data\\ShitToolsData\\CMDTitle.txt", input)
                end
            },
        }

        while true do
            eval('cls')

            NewLine(2)
            print(ColorText("white", PrintMainTitle()))

            NewLine(2)

            for i = 1, #settings do
                local setting = settings[i]
                print(ColorText(setting.Color, "[", i, "]", setting.Title), ColorText("yellow", "\n   Description:     ", setting.Description))
                if setting.Enabled ~= nil then print(ColorText("yellow", "   Enabled:         ", tostring(setting.Enabled))) end
                NewLine(1)
            end

            NewLine(2)

            print(ColorText("white", "Type the number of the setting you want to edit."))
            print(ColorText("white", "Type 'exit' to exit."))

            local input = io.read()

            if input == "exit" then
                break
            elseif tonumber(input) then
                if tonumber(input) <= #settings then
                    settings[tonumber(input)].Run()
                end
            end
        end
    end
}

return Metadata