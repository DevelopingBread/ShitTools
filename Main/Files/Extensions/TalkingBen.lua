local Metadata = {
    Title = "Talking Ben", -- Title
    Author = "Expired Bread#8976", -- Author
    Version = "1.0.0", -- This is the version of the script
    Description = "Yes?", -- Description

    Color = "White", -- Color of the text

    Run = function ()
        require("Files\\Modules\\Functions")

        eval("cls")

        print(ColorText("white", "*Ben picks up the phone*"))
        print(ColorText("white", "Yes?\n"))
        print("Say 'exit' to leave")

        while true do
            local input = io.read()
            local item = PickRandomItemFromTable({
                {
                    Text = "Yes\n",
                    Color = "Green",
                },
                {
                    Text = "No\n",
                    Color = "Red",
                },
                {
                    Text = "Ho Ho Ho\n",
                    Color = "Yellow",
                },
                {
                    Text = "Ugh\n",
                    Color = "Magenta",
                }
            })

            if input:lower() == "exit" then
                break
            else
                print(ColorText(item.Color, "Ben:", item.Text))
            end
        end
    end
}

return Metadata