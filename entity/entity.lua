local vector = require "..\\3rdParty\\vector\\vector"
local module = {
  _version = "0.0.1",
  _description = "base entity",
  _url = "https://github.com/themousery/vector.lua",
  _license = [[
    Copyright (c) 2018 themousery

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
  ]]
}

-- create the module
local entity = {}
entity.__index = entity

-- get a random function from Love2d or base lua, in that order.
local rand = math.random
if love and love.math then rand = love.math.random end
  
-- makes a new entity
local function new(x,y)
  return setmetatable({pos=pos or vector.new(x,y)}, entity)
end
local function new(pos)
  return setmetatable({pos=pos or vector.new(0,0)}, entity)
end




-- pack up and return module
module.new = new
--module.random = random
--module.fromAngle = fromAngle
--module.isvector = isvector
return setmetatable(module, {__call = function(_,...) return new(...) end})
