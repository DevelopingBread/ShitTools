local Metadata = {
    Title = "Text File Flooder", -- Title
    Author = "Me", -- Author
    Version = "1.0.0", -- This is the version of the script
    Description = "ahaha", -- Description

    Color = "red", -- Color of the text

    Run = function ()
        require("Files\\Modules\\Functions")
        eval("cls")

        -- Get the current working directiory
        local dir = os.getenv("PWD") or io.popen("cd"):read()
        print(ColorText("green", "Current working directory: " .. dir))

        -- Open a file dialog
        print(ColorText("green", "Select a file to flood"))
        local file = OpenFileDialog("Select a folder to flood", dir)
        print(file)

        io.read()
        return
    end
}

return Metadata