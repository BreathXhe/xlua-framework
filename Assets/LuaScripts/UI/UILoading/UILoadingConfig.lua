--[[
-- UILoading模块窗口配置，要使用还需要导出到UI.Config.UIConfig.lua
--]]

-- 窗口配置
---@class UILoading
local UILoading = {
	Name = UIWindowNames.UILoading,
	Layer = UILayers.TopLayer,
	Model = require "UI.UILoading.Model.UILoadingModel",
	Ctrl = nil,
	View = require "UI.UILoading.View.UILoadingView",
	PrefabPath = "UI/Prefabs/View/UILoading.prefab",
}

return {
	-- 配置
	UILoading = UILoading,
}