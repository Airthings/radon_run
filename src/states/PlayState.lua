---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by bloon.
--- DateTime: 7/2/2020 12:06 PM
---

PlayState = Class{__include = BaseState}

function PlayState:enter(params)
    self.player = params.player
    self.monitor = params.monitor
    self.obstacles = params.obstacles
    self.tiles = params.tiles
end

function PlayState:update(dt)

    if self.player:collides(monitor) then
        self.player.acquireMonitor = true
        self.monitor.isVisible = false

        self.player.width = gGraphics['player']['radon_left']:getWidth()
        self.player.height = gGraphics['player']['radon_left']:getHeight()
    end

    self.player:update(dt)
    self.monitor:update(dt)
end

function PlayState:render()
    self.player:render()
    self.monitor:render()

    for _, obstacle in pairs(self.obstacles) do
        obstacle:render()
    end
    for _, tile in pairs(self.tiles) do
        tile:render()
    end

    self.player:render()
end

function PlayState:exit() end


