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
        Enabled = FileExists("Files\\Data\\ShitToolsData\\AlwaysShowMenu.txt"),

        Run = function()
            eval("cls")
            
            print(FileExists("Files\\Data\\ShitToolsData\\AlwaysShowMenu.txt"))

            print(ColorText("green", "Say True to enable"))
            print(ColorText("red", "Say False to disable\n"))

            local input = io.read()

            DeleteFile("Files\\Data\\ShitTools\\AlwaysShowMenu.txt")

            if input:lower() == 'true' then
                CreateTextFile("Files\\Data\\ShitToolsData\\AlwaysShowMenu.txt", "")
            elseif input:lower() == 'false' then
                DeleteFile("Files\\Data\\ShitToolsData\\AlwaysShowMenu.txt")
            end

            print(ColorText("green", "Its set to "), ColorText("yellow", input))
            PressEnterToContiue()
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

return settings