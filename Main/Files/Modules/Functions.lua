function PrintMainTitle()
    return
    "   ░██████╗██╗░░██╗██╗████████╗  ████████╗░█████╗░░█████╗░██╗░░░░░░██████╗\n   ██╔════╝██║░░██║██║╚══██╔══╝  ╚══██╔══╝██╔══██╗██╔══██╗██║░░░░░██╔════╝\n   ╚█████╗░███████║██║░░░██║░░░  ░░░██║░░░██║░░██║██║░░██║██║░░░░░╚█████╗░\n   ░╚═══██╗██╔══██║██║░░░██║░░░  ░░░██║░░░██║░░██║██║░░██║██║░░░░░░╚═══██╗\n   ██████╔╝██║░░██║██║░░░██║░░░  ░░░██║░░░╚█████╔╝╚█████╔╝███████╗██████╔╝\n   ╚═════╝░╚═╝░░╚═╝╚═╝░░░╚═╝░░░  ░░░╚═╝░░░░╚════╝░░╚════╝░╚══════╝╚═════╝░"
end

function eval(code)
    os.execute(code)
end

function ColorText(color, ...)
    local text = table.concat({...}, " ")
    local returnColor = ""
    color = color:lower()

    if color == "red" then
        returnColor = "\27[31m" .. text
    elseif color == "green" then
        returnColor = "\27[32m" .. text
    elseif color == "yellow" then
        returnColor = "\27[33m" .. text
    elseif color == "blue" then
        returnColor = "\27[34m" .. text
    elseif color == "magenta" then
        returnColor = "\27[35m" .. text
    elseif color == "cyan" then
        returnColor = "\27[36m" .. text
    elseif color == "white" then
        returnColor = "\27[37m" .. text
    else
        returnColor = text
    end

    return  returnColor .. "\27[37m"
end

function PickRandomItemFromTable(list)
    math.randomseed(os.time())
    return list[math.random(#list)]
end

function Wait(time)
    eval('PING localhost -n ' .. time .. ' >NUL')
end

function NewLine(times)
    for i = 1, times or 1 do
        print("")
    end
end

function FileExists(file)
    local f = io.open(file, "rb")
    if f then f:close() end
    return f ~= nil
end

function GetFiles(dir)
    local i, t, popen = 0, {}, io.popen
    for filename in popen('dir "' .. dir .. '" /b'):lines() do
        i = i + 1
        t[i] = filename
    end
    return t
end

function CreateTextFile(dir, text)
    if FileExists(dir) then return end
    local f = io.open(dir, "w")
    f:write(text)
    f:close()
end

function ClearFolder(dir)
    for _, file in pairs(GetFiles(dir)) do
        os.remove(dir .. "\\" .. file)
    end
end

-- Clear a folder and its descendants
function ClearFolderRecursive(dir)
    for _, file in pairs(GetFiles(dir)) do
        if file ~= "." and file ~= ".." then
            if FileExists(dir .. "\\" .. file) then
                os.remove(dir .. "\\" .. file)
            else
                ClearFolderRecursive(dir .. "\\" .. file)
            end
        end
    end
end

function CreateFolder(dir, name)
    os.execute("mkdir " .. dir .. "\\" .. name)
end

function RandomTitle()
    eval("title " .. PickRandomItemFromTable({
        "ShitTools",
        "Among is is suspicious",
        "Yielding is cool",
        "Copilot is going to take over my job 😱",
        "Lies - Copilot",
    })
    )
end

function DeleteFile(file)
    if FileExists(file) then
        os.remove(file)
    end
end

function ReadFile(file)
    local f = io.open(file, "rb")
    local content = f:read("*all")
    f:close()
    return content
end

function ObjectExistsInTable(object, table)
    for _, item in pairs(table) do
        if item == object then
            return true
        end
    end
    return false
end

function ConvertStringToTable(str)
    local tbl = {}
    for word in string.gmatch(str, "%S+") do
        table.insert(tbl, word)
    end
    return tbl
end

function GetTableKeys(table)
    local keys = {}
    for k, v in pairs(table) do
        table.insert(keys, k)
    end
    return keys
end

function GetTableValues(table)
    local values = {}
    for k, v in pairs(table) do
        table.insert(values, v)
    end
    return values
end

function GetTableKeysAndValues(table)
    local keysAndValues = {}
    for k, v in pairs(table) do
        table.insert(keysAndValues, {k, v})
    end
    return keysAndValues
end

function OpenFileDialog(title, filter)
    local file = io.open(io.popen("explorer /select," .. title):read("*all"), "r")
    if file then
        file:close()
    end
end

function GetModule()
    
end