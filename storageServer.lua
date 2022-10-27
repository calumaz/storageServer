-- storage server
local listeningChannel = 8001
local periList = peripheral.getNames()

peripheral.find("modem", rednet.open)


while true do
    os.pullEvent("modem_message")
end