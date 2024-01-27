--Store path to variable

local startingPackagePath = package.path

--Append to path
--package.path = currentDir .. "\\3rdParty\\tick;" ..package.path
--package.path = currentDir .. "\\3rdParty\\log.lua\\log;" ..package.path
--package.path = "D:\\Documents\\Projects\\SuperPunchBlock\\3rdParty;" ..package.path


--Add packages
--local open = io.open

--log = require "3rdParty/log.lua/log"
--tick = require "3rdParty/tick/tick"
--log = require "log.lua"
--tick = require "tick"
--local lfs = require "lfs"
--print(lfs.currentdir())
--entity = require "entity.entity"

--Restore path
--package.path = startingPackagePath

--https://love2d.org/wiki/Category:Snippets
--https://love2d.org/wiki/License
--https://love2d.org/wiki/Game_Distribution
--https://love2d.org/wiki/Category:Tutorials
--https://www.love2d.org/wiki/love.filesystem.setRequirePath
--https://create.roblox.com/docs/luau/metatables

function love.load()
  tick = require("3rdParty/tick/tick")
  log = require("3rdParty/log/log")
  vector = require("3rdParty/vector/vector")
  entity = require("entity.entity")


  local curDir = love.filesystem.getWorkingDirectory()
  log.info(curDir)
  local curDir = love.filesystem.getSource()
  print(curDir)
  log.info(curDir)
  love.filesystem.setRequirePath( curDir )
  --love.filesystem.setRequirePath( curDir .. '3rdParty\\log.lua\\' )

  --open = require("io.open")
  --log.outfile = "output/log.txt"
  log.info("Loading Love Module")
  
  vec = vector.new(10,10)
  Message = "Hello from LOVE"
  local secret = 'This is a local string' -- local variable, apostrophes on the string.
  --something()
  x = 30
  y = 30
  
end

function love.update(dt)
  tick.update(dt)
  --print(dt)
  --TODO
  --print("Time: ", dt)
end


function love.draw()
	love.graphics.print(Message, 400, 300)
    love.graphics.rectangle("fill", x, y, 100, 100)
end

function love.keypressed(key)
    --If space is pressed then..
    if key == "space" then
        --x and y become a random number between 100 and 500
        x = math.random(100, 500)
        y = math.random(100, 500)
    end
end

--   .. concatenation ..
-- ~= :  not equals
-- table = {}
-- tableLength = #table
