--[[
--]]

---@class LoginScene:BaseScene
local LoginScene = BaseClass("LoginScene", BaseScene)
local base = BaseScene

-- 创建：准备预加载资源
function LoginScene:OnCreate()
	base.OnCreate(self)
	-- TODO
	self:AddPreloadResource(UIConfig[UIWindowNames.UILogin].PrefabPath, typeof(CS.UnityEngine.GameObject), 1)
	self:AddPreloadResource(UIConfig[UIWindowNames.UILoginServer].PrefabPath, typeof(CS.UnityEngine.GameObject), 1)
end

-- 准备工作
function LoginScene:OnComplete()
	base.OnComplete(self)
	UIManager:GetInstance():OpenWindow(UIWindowNames.UILogin)
end

-- 离开场景
function LoginScene:OnLeave()
	UIManager:GetInstance():CloseWindow(UIWindowNames.UILogin)
	base.OnLeave(self)
end

return LoginScene;