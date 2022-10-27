-- storage server

local listeningChannel = 8001
local periList = peripheral.getNames()

local chest = peripheral.wrap("right")
local items = chest.list()

local itemsWindow = window.create(term.current(), 1, 3, 51, 15, false)
itemsWindow.setTextColour(colours.white)
itemsWindow.clear()

-- build table with meta data
for k, v in pairs(items) do
    items[k] = chest.getItemMeta(k)
end

local isGray = true
for k, v in pairs(items) do
    if isGray then
        itemsWindow.setBackgroundColour(colors.gray)
        isGray = false
    else
        itemsWindow.setBackgroundColour(colors.black)
        isGray = true
    end
    
    local displayString = items[k].displayName .. " " .. items[k].count
    for i = 1, 19 - #displayString do
        displayString = displayString .. " "
    end
    itemsWindow.write()
    local cursorX, cursorY = window.getCursorPos()
    -- window.setCursorPos(1, cursorY + 1)
end

itemsWindow.setVisible(true)

os.sleep(4)