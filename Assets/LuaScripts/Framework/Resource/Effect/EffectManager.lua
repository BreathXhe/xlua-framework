--[[
-- 特效管理：暂时好像没什么事情要做，后续
--]]

---@class EffectManager
local EffectManager = BaseClass("EffectManager", Singleton)

---@return EffectManager
function EffectManager:GetInstance()
	return Singleton.GetInstance(self)
end

return EffectManager
