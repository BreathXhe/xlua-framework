--[[
-- UILNoticeTip视图层
--]]

---@class UILNoticeTip:UIBaseView
local UILNoticeTip = BaseClass("UILNoticeTip", UIBaseView)
local base = UIBaseView

function UILNoticeTip:OnCreate()
	base.OnCreate(self)

	self.cs_obj = CS.UINoticeTip.Instance
	self.cs_obj.UIGameObject = self.gameObject
end

function UILNoticeTip:OnEnable()
	base.OnEnable(self)

	self.model.cs_func(self.cs_obj, SafeUnpack(self.model.args))
end

function UILNoticeTip:OnDestroy()
	self.cs_obj:DestroySelf()
	base.OnDestroy(self)
end

-- UILNoticeTip.OnCreate = OnCreate
-- UILNoticeTip.OnEnable = OnEnable
-- UILNoticeTip.OnDestroy = OnDestroy

return UILNoticeTip