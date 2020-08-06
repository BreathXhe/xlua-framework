--[[
-- UI窗口名字定义，手动添加
--]]

---@class UIWindowNames
local UIWindowNames = {
	-- 登陆模块
	UILogin = "UILogin",
	UILoginServer = "UILoginServer",
	-- 场景加载模块
	UILoading = "UILoading",
	-- Tip窗口
	UINoticeTip = "UINoticeTip",
	-- TestMain
	UITestMain = "UITestMain",
	-- BattleMain
	UIBattleMain = "UIBattleMain",
}

return ConstClass("UIWindowNames", UIWindowNames)