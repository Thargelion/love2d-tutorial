--
-- Created by IntelliJ IDEA.
-- User: mdepietro
-- Date: 20/03/2020
-- Time: 20:05
-- To change this template use File | Settings | File Templates.
--


Area = Object:extend()

function Area:new(room)
    self.room = room
    self.game_objects = {}
end

function Area:update(dt)
    for i = #self.game_objects, 1, -1 do
        local game_object = self.game_objects[i]
        game_object:update(dt)
        if game_object.dead then
            table.remove(self.game_objects, i)
        end
    end
end

function Area:draw()
    for _, game_object in ipairs(self.game_objects) do
        game_object:draw()
    end
end

function Area:addGameObject(game_object_type, x, y, opts)
    local opts = opts or {}
    local game_object = _G[game_object_type](self, x or 0, y or 0, opts)
    table.insert(self.game_objects, game_object)
    return game_object
end

function Area:filterGameObjects(filter)
    local filtered_objects = {}
    for object in pairs(self.game_objects) do
        if filter(object) then
            table.insert(filtered_objects, object)
        end
    end
end
