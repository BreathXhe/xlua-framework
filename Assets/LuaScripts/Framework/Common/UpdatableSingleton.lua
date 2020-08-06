--[[
-- 可更新单例脚本，等效于MonoSignleton
--]]

---@class UpdatableSingleton:Updatable
local UpdatableSingleton = BaseClass("UpdatableSingleton", Updatable)

function UpdatableSingleton:__init()
	assert(rawget(self._class_type, "Instance") == nil, self._class_type.__cname.." to create UpdatableSingleton twice!")
	rawset(self._class_type, "Instance", self)
end

function UpdatableSingleton:__delete()
	rawset(self._class_type, "Instance", nil)
end

-- 只是用于启动模块
function UpdatableSingleton:Startup()
end

-- 不要重写
function UpdatableSingleton:GetInstance()
	if rawget(self, "Instance") == nil then
		rawset(self, "Instance", self.New())
	end
	assert(self.Instance ~= nil)
	return self.Instance
end

-- 不要重写
function UpdatableSingleton:Delete()
	self.Instance = nil
end

-- UpdatableSingleton.__init = __init
-- UpdatableSingleton.__delete = __delete
-- UpdatableSingleton.Startup = Startup
-- UpdatableSingleton.GetInstance = GetInstance
-- UpdatableSingleton.Destory = Destory

return UpdatableSingleton
