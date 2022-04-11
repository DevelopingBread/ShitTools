local Metadata = {
    Title = "Undertail Save Editor", -- Title
    Author = "Expired Bread#8976", -- Author
    Version = "1.0.0", -- This is the version of the script
    Description = "You are able to modify the save of undertale.", -- Description

    Color = "White", -- Color of the text

    Run = function ()
        require("Files\\Modules\\Functions")

        eval("cls")
        local UndertailSaveFile = OpenFileDialog("Undertail save file ( file[number] )", LocalAppdata() .. "\\Undertale")
        local iniFile = OpenFileDialog("undertale.ini file", LocalAppdata() .. "\\Undertale")

        local options = {
            ["ini File"] = {

            },
            ["Save File"] = {

            }
        }

        local section = options

        while true do
            local input = Dropdown(ColorText("white", "Which one do you want to edit?"), options)

            if input == nil then return end
            section = input
        end
    end
}

return Metadata