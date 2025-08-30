local Lighting = game:GetService("Lighting")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")

local DayCycleHandler = {}

local ServerData = ReplicatedStorage.ServerData
local Day = ServerData.Day
local Hour = ServerData.Hour
local Minute = ServerData.Minute
local TimeLeft = ServerData.TimeLeft
local DayState = ServerData.DayState

DayCycleHandler.TenMinutesValue = 0.1 -- added every time 10 minutes progress
DayCycleHandler.WAIT_TIME = 1.875 -- 15 minutes
DayCycleHandler.OneMinute = 0.17
DayCycleHandler.TimeLeft = 180 -- seconds
DayCycleHandler.CurrentDay = 1
DayCycleHandler.Multiplier = 2
DayCycleHandler.ClockTime = 12

local function MinuteTime(number, unit)

	local Hour = 3600
	local Minute = 60
	local Second = 1
	local Minutes = number / 60
	local ReminderSeconds = Minutes v

	if unit == "Hour" then
			return  (..":".. ..":"..ReminderSeconds)
	end
end

function DayCycleHandler:Initialize()
	print("started")
	while true do

		task.spawn(function()
			
			

		end)

		for _i = 0, 96, 1 do
			DayCycleHandler.ClockTime += 0.25
			Minute.Value += 0.15

			if Minute.Value == 0.60 then
				Minute.Value = 0
				Hour.Value += 1
			end

			if DayCycleHandler.ClockTime == 24 then
				local TweenInfo = TweenInfo.New()
				local Properties = {
					ClockTime = 0,
				}
				local NewTween = TweenService.Create()

				Hour.Value = 0
			end
			if DayCycleHandler.ClockTime == 12 then

				DayCycleHandler.ClockTime = 12

				DayCycleHandler.CurrentDay += (1 * DayCycleHandler.Multiplier)

				Day.Value = DayCycleHandler.CurrentDay

				Hour.Value = 12

				print("final loop, starting a new day")
			end
		end
	end
end

function DayCycleHandler:ChangeMultiplier(Value: number)
	DayCycleHandler.Multiplier = Value
end

return DayCycleHandler
