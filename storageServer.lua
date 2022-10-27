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

local isGrey = true
for k, v in pairs(items) do
    if isGrey then
        itemsWindow.setBackgroundColour(colours.lightGrey)
        isGrey = false
    else
        itemsWindow.setBackgroundColour(colours.black)
        isGrey = true
    end
    
    itemsWindow.write(items[k].displayName .. " " .. items[k].count)
end

itemsWindow.setVisible(true)

os.sleep(4)