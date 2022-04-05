local Metadata = {
    Title = "Title", -- Title
    Author = "Me", -- Author
    Version = "1.0.0", -- This is the version of the script
    Description = "A cool thing!", -- Description

    Color = "White", -- Color of the text

    Run = function ()
        require("Files\\Functions")

        print("Hello World!")
        eval("pause")
    end
}

return Metadata