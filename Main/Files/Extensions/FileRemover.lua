local Metadata = {
    Title = "Destroy files", -- Title
    Author = "Expired Bread#8976", -- Author
    Version = "1.0.0", -- This is the version of the script
    Description = "Removes all files from a directory", -- Description

    Color = "Red", -- Color of the text

    Run = function ()
        require("Files\\Modules\\Functions")

        eval("cls")
        
        -- Get a file to remove its contents
        print(ColorText("green", "Select a file to clear"))
        local dir = GetWorkingDirectory()
        local file = OpenFileDialog("Select a folder to clear", dir .. "\\Files\\Data")
        if not file or not IsFolder(file) then
            print(ColorText("red", "Invalid file"))
            PressEnterToContiue()
            return
        end

        -- Ask use if they really want to clear it
        print(ColorText("yellow", "Are you sure you want to clear this file?"))
        print(ColorText("red", "This will delete all of its contents"))
        print(ColorText("red", "This isn't reversable"))
        print(ColorText("red", "y / n"))
        local input = io.read()
        if input:lower() ~= "y" then
            print(ColorText("red", "Cancled"))
            PressEnterToContiue()
            return
        end

        -- Ask the user one more time
        print(ColorText("yellow", "Are you really sure?"))
        print(ColorText("red", "y / n"))
        input = io.read()
        if input:lower() ~= "y" then
            print(ColorText("red", "Cancled"))
            PressEnterToContiue()
            return
        end

        -- Delete the folder contents
        print(ColorText("green", "Deleting contents..."))
        local files = GetFiles(file)
        -- Start a timer to show how long it takes
        local start = os.clock()

        for i, v in pairs(files) do
            coroutine.wrap(function()
                DeleteFile(file .. "\\" .. v)
                print(ColorText("green", "Deleted:", v), "||", ColorText("yellow", i, "/", #files), "||", ColorText("green", i / #files * 100, "%"))
            end)()
        end

        -- Finished
        print(ColorText("green", "Finished in ", os.clock() - start, "seconds"))
        PressEnterToContiue()
    end
}

return Metadata