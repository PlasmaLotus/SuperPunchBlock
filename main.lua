
function love.load()
  pl_entity = require ("entity/entity")
  tick = require("3rdParty/tick/tick")
  
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
  print("Time: ", dt)
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
