local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")

local Remotes = ReplicatedStorage.Remotes
local Server = ServerScriptService.Server

local Modules = Server.Modules

local DayCycleHandler = require(Modules.DayCycleHandler)

local GameStarter = {}

function GameStarter:Initialize() end

return GameStarter
