-- storage server

local listeningChannel = 8001
local periList = peripheral.getNames()

local chest = peripheral.wrap("left")
local items = chest.list()

local itemsWindow = window.create(term.current(), 1, 3, 51, 15, false)
itemsWindow.setBackgroundColour(colours.red)
itemsWindow.setTextColour(colours.white)
itemsWindow.clear()
itemsWindow.write("Testing my window!")
itemsWindow.setVisible(true)

os.sleep(4)