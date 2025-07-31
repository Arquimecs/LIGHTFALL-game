local Lighting = game:GetService("Lighting")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local DayCycleHandler = {}

local ServerData = ReplicatedStorage.ServerData

DayCycleHandler.TenMinutesValue = 0.1 -- added every time 10 minutes progress
DayCycleHandler.WAIT_TIME = 0.75
DayCycleHandler.OneMinute = 0.17
DayCycleHandler.TimeLeft = 180 -- seconds
DayCycleHandler.CurrentDay = 1

function DayCycleHandler:Initialize()
	while true do
		for _i = 0, 1440, 1 do
			local CurrentDecimals = math.fmod(Lighting.ClockTime, 2)

			if CurrentDecimals < 0.017 then
				Lighting.ClockTime = math.round(Lighting.ClockTime)
			end

			Lighting.ClockTime += 0.017

			task.wait(DayCycleHandler.WAIT_TIME)
		end
	end
end

return DayCycleHandler
