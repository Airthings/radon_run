---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by bloon.
--- DateTime: 7/2/2020 12:08 PM
---

Ghost = Class{}

local ghostFloatHeight = 5

function Ghost:init(img, x, dyFromGround, rotation)
    self.image = img
    self.width = img:getWidth()
    self.height = img:getHeight()
    self.x = x

    local dy = dyFromGround or 0
    self.y = VIRTUAL_HEIGHT - gGraphics['ground']:getHeight() - self.height - dy - ghostFloatHeight
    self.rotation = rotation or 1
    self.isVisible = false
end

function Ghost:update(isVisible)
    self.isVisible = isVisible
end

function Ghost:render()
    if self.isVisible then love.graphics.draw(self.image, self.x, self.y, 0, self.rotation, 1) end
end
