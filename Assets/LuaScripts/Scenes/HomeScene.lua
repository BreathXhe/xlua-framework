--[[
--]]

---@class HomeScene:BaseScene
local HomeScene = BaseClass("HomeScene", BaseScene)
local base = BaseScene

-- 创建：准备预加载资源
function HomeScene:OnCreate()
	base.OnCreate(self)
	-- TODO
	self:AddPreloadResource(UIConfig[UIWindowNames.UITestMain].PrefabPath, typeof(CS.UnityEngine.GameObject), 1)
end

-- 准备工作
function HomeScene:OnComplete()
	base.OnComplete(self)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UITestMain)
end

-- 离开场景
function HomeScene:OnLeave()
	UIManager:GetInstance():CloseWindow(UIWindowNames.UITestMain)
	base.OnLeave(self)
end

return HomeScene;