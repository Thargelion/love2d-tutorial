---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by mdepietro.
--- DateTime: 20/03/2020 18:36
---}
Object = require 'vendor/classic/classic'

BSquareRoom = Object:extend()

function BSquareRoom:new()

end

function BSquareRoom:update(dt)

end

function BSquareRoom:draw()
    rect_1 = { x = 400, y = 300, w = 50, h = 200 }
    rect_2 = { x = 400, y = 300, w = 200, h = 50 }
    love.graphics.rectangle('fill', rect_1.x - rect_1.w / 2, rect_1.y - rect_1.h / 2, rect_1.w, rect_1.h)
    love.graphics.rectangle('fill', rect_2.x - rect_2.w / 2, rect_2.y - rect_2.h / 2, rect_2.w, rect_2.h)
end