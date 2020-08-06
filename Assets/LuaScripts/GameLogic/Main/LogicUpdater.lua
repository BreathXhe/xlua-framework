--[[
-- 游戏逻辑Updater，游戏逻辑模块可能需要严格的驱动顺序
--]]

---@class LogicUpdater
local LogicUpdater = BaseClass("LogicUpdater", UpdatableSingleton)
local traceback = debug.traceback

function LogicUpdater:GetInstance()
	return Singleton.GetInstance(self)
end

function LogicUpdater:Update()
	local delta_time = Time.deltaTime
	local hallConnector = HallConnector:GetInstance()
	local status,err = pcall(hallConnector.Update, hallConnector)
	if not status then
		Logger.LogError("hallConnector update err : "..err.."\n"..traceback())
	end
end

function LogicUpdater:LateUpdate()
end

function LogicUpdater:FixedUpdate()
end

function LogicUpdater:Dispose()
end

-- LogicUpdater.Update = Update
-- LogicUpdater.LateUpdate = LateUpdate
-- LogicUpdater.FixedUpdate = FixedUpdate
-- LogicUpdater.Dispose = Dispose

return LogicUpdater