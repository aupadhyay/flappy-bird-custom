_W = display.contentWidth
_H = display.contentHeight

local pipesTop = {}
local pipesBottom = {}
local tapToPlay
local player
local group = self.view

function init()
	tapToPlay = display.newImageRect("images/tapToPlay.png", _W, _H)
	tapToPlay.x = _W/2
	tapToPlay.y = _H/2
	tapToPlay:addEventListener('tap', startGame)
	group:insert(tapToPlay)

	--/*************CYRUS PLAYER/BG STUFF****************//
	player= display.newImageRect("images/player.png",25,25)
	player.x = _W/2-150
	player.y = _H/2
	
	background =display.newImageRect("images/background.png",320,480)
	background.x = _W/2
	background.y = _H/2

end

function startGame(e)
	



end


function update(e)

end

function updateEventListeners(action)
	if(action == "add")then
		Runtime:addEventListener("enterFrame", update)
	elseif(action == "remove")then
		Runtime:removeEventListener("enterFrame", update)
	end
end

init()