local Metadata = {
    Title = "Settings", -- Title
    Author = "ShitTools", -- Author
    Version = "1.0.0", -- This is the version of the script
    Description = "Edits the settings for ShitTools", -- Description

    Color = "Magenta", -- Color of the text

    Run = function ()
        require("Files\\Modules\\Functions")

        while true do
            local settings = GetModule("Settings")

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