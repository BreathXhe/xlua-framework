--[[
-- UILoginServerCtrl控制层
--]]

---@class UILoginServerCtrl:UIBaseCtrl
local UILoginServerCtrl = BaseClass("UILoginServerCtrl", UIBaseCtrl)

function UILoginServerCtrl:SetSelectedServer(svr_id)
	-- 合法性校验
	if svr_id == nil then
		-- TODO：错误弹窗
		Logger.LogError("svr_id nil")
		return
	end
	local servers = ServerData:GetInstance().servers
	if servers[svr_id] == nil then
		-- TODO：错误弹窗
		Logger.LogError("no svr_id : "..tostring(svr_id))
		return
	end
	ClientData:GetInstance():SetLoginServerID(svr_id)
end

function UILoginServerCtrl:CloseSelf()
	UIManager:GetInstance():CloseWindow(UIWindowNames.UILoginServer)
end

-- UILoginServerCtrl.SetSelectedServer = SetSelectedServer
-- UILoginServerCtrl.CloseSelf = CloseSelf

return UILoginServerCtrl