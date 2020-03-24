---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by mdepietro.
--- DateTime: 23/03/2020 17:11
---

GameCircle = GameObject:extend()

function GameCircle:new(area, x, y, opts)
    GameCircle.super.new(self, area, x, y, opts)
end

function GameCircle:update(dt)
    GameCircle.super.update(self, dt)
end

function GameCircle:draw()
    love.graphics.circle('fill', self.x, self.y, self.radius or 50)
end