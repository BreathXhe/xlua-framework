--[[
-- UILoading模型层
--]]

---@class UILoadingModel:UIBaseModel
local UILoadingModel = BaseClass("UILoadingModel", UIBaseModel)
local base = UIBaseModel

-- 打开
function UILoadingModel:OnEnable()
	base.OnEnable(self)
	-- 进度
	self.value = 0
end

-- 关闭
function UILoadingModel:OnDisable()
	base.OnDisable(self)
	self.value = 0
end

-- UILoadingModel.OnEnable = OnEnable
-- UILoadingModel.OnDisable = OnDisable

return UILoadingModel