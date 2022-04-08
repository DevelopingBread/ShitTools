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
        local file = io.open(PickRandomItemFromTable(GetFiles(dir)), "rb")


    --     -- Ask the user if they want to continue
    --     print(ColorText("red", "Do you want to continue? (y/n) "))
    --     print(ColorText("red", "THIS WILL CLEAR THE FOLDER THAT YOU ARE GOING TO FLOOD!"))
    --     print(ColorText("red", "THIS IS NOT REVERSABLE!"))
    --     local input = io.read()
    --     if input ~= "y" then
    --         print(ColorText("red", "Exiting..."))
    --         return
    --     end
    --     -- Ask the user if they are very sure
    --     print(ColorText("red", "Are you very sure? (y/n) "))
    --     local input = io.read()
    --     if input ~= "y" then
    --         print(ColorText("red", "Exiting..."))
    --         return
    --     end
    --     -- Ask the user of the location of the folder
    --     eval("cls")
    --     print("Enter the location of the folder you want to flood:\n")
    --     local folder = io.read("*line")
    --     --Check if the folder exists
    --     eval("if not exist " .. folder .. ": mkdir " .. folder)
    --     ClearFolder(folder)
    --     -- Ask the user of the text to flood
    --     eval("cls")
    --     print("Enter the text you want to flood:\n")
    --     local text = io.read("*line")
    --     -- Ask the user how many files to spam
    --     eval("cls")
    --     print("Enter the number of files you want to flood:\n")
    --     local amount = io.read("*number")
    --     -- Ask the user of the name of the files
    --     eval("cls")
    --     print("Enter the name of the files you want to flood:")
    --     print("(Use %s to insert the number of the file)\n")
    --     local name = io.read("*line")
    --     io.read()
    --     -- Clamp the number of files to spam
    --     if amount > 200 then
    --         amount = 200
    --     end
    --     if not tonumber(amount) then 
    --         print("Invalid amount")
    --         io.read()
    --         return
    --     end
    --     -- Ask the user if they are ok with the flood
    --     eval("cls")
    --     print("Folder: " .. folder)
    --     print("Text: " .. text)
    --     print("File Name: " .. name)
    --     print("Amount: " .. amount .. "\n")
    --     print("Are you sure you want to flood " .. amount .. " files with \"" .. text .. "\"?")
    --     print("Type \"yes\" to continue")

    --     local answer = io.read("*line")
    --     -- Start flooding
    --     -- Replace all spaces in the name with underscores
    --     name = name:gsub(" ", "_")

    --     print(ColorText("yellow", "Flooding..."))
    --     for i = 1, amount do
    --         -- replace %s with string.format("%03i", i)
    --         name = name:gsub("%s", string.format("%03i", i))
    --         CreateTextFile(folder .. "\\" .. name .. ".txt", text)
    --         print(ColorText("yellow", "Created file " .. name .. ".txt"))
    --         print(ColorText("yellow", "Added file " .. i .. " of " .. amount))
    --     end
    --     -- Finished
    --     print(ColorText("green", "Finished"))
    --     io.read()
    end
}

return Metadata