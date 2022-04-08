local Metadata = {
    Title = "Text File Flooder", -- Title
    Author = "Me", -- Author
    Version = "1.0.0", -- This is the version of the script
    Description = "ahaha", -- Description

    Color = "red", -- Color of the text

    Run = function ()
        require("Files\\Modules\\Functions")
        eval("cls")

        -- Open a file dialog
        print(ColorText("green", "Select a file to flood"))
        local dir = GetWorkingDirectory()
        local file = OpenFileDialog("Select a folder to flood", dir .. "\\Files\\Data")
        if not file or not IsFolder(file) then
            print(ColorText("red", "Invalid file"))
            PressEnterToContiue()
            return
        end

        -- Get the number of times to flood
        print(ColorText("green", "How many times to flood?"))
        local times = tonumber(io.read())
        if not times then
            print(ColorText("red", "Invalid number"))
            PressEnterToContiue()
            return
        end

        -- Get the text to flood
        print(ColorText("green", "What text to flood?"))
        local text = io.read()
        if not text then
            print(ColorText("red", "Invalid text"))
            PressEnterToContiue()
            return
        end

        -- Get the file extension
        print(ColorText("green", "What file extension?"))
        local extension = io.read()
        if not extension then
            print(ColorText("red", "Invalid extension"))
            PressEnterToContiue()
            return
        end

        -- Get the file name
        print(ColorText("green", "What file name?"))
        local name = io.read()
        if not name then
            print(ColorText("red", "Invalid name"))
            PressEnterToContiue()
            return
        end

        eval("cls")

        -- Print all the information they inputed
        print(ColorText("green", "Flooding folder: " .. file))
        print(ColorText("green", "Times to flood: " .. times))
        print(ColorText("green", "Text to flood: " .. text))
        print(ColorText("green", "File extension: " .. extension))
        print(ColorText("green", "File name: " .. name))

        -- Ask if they want to flood
        print(ColorText("green", "Are you sure you want to flood?"))
        print("1: Yes")
        print("2: No")
        local input = tonumber(io.read())
        if input ~= 1 then
            print(ColorText("red", "Canceled"))
            PressEnterToContiue()
            return
        end

        -- Flood the file
        for i = 1, times do
            local filePath = file .. "\\" .. name .. " " .. i .. "." .. extension
            local file = io.open(filePath, "w")
            file:write(text)
            file:close()

            eval("cls")
            print(ColorText("yellow", "Created " .. i .. " / " .. times .. " " .. math.floor(i/times*100) .. "%"))
        end

        -- Tell the user it's done
        print(ColorText("green", "Done"))
        PressEnterToContiue()
    end
}

return Metadata