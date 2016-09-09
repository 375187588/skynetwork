local Goboard = require "chessboard"
local t = Goboard:new(t)
function test( ... )
	InitGoBoard()
	t:PlayerMove(0,2,1)
	t:CapturesChess()
	t:Print()
	while true do
	    local params = io.read()
	    if params ~= nil  then
	    	local tableparams = {}
	    	for Player in string.gmatch(params, "%d+") do
       			table.insert(tableparams,Player)
     		end

	       	if params ==  "quit" or params == "exit" then
	       		break
	       	end
	       --	print(tonumber(tableparams[1]),tonumber(tableparams[2]),tonumber(tableparams[3]))
	       	t:PlayerMove(tonumber(tableparams[1]),tonumber(tableparams[2]),tonumber(tableparams[3]))
	       	t:CapturesChess()
	       	t:Print()
	    end
	end
end
test()
