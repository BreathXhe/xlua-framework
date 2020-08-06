--[[
-- 客户端数据
--]]

---@class ClientData
local ClientData = BaseClass("ClientData", Singleton)

function ClientData:__init()
	self.app_version = CS.GameChannel.ChannelManager.instance.appVersion
	self.res_version = CS.GameChannel.ChannelManager.instance.resVersion
	self.account = CS.UnityEngine.PlayerPrefs.GetString("account")
	self.password = CS.UnityEngine.PlayerPrefs.GetString("password")
	self.login_server_id = CS.UnityEngine.PlayerPrefs.GetInt("login_server_id")
end

---@return ClientData
function ClientData:GetInstance()
	return Singleton.GetInstance(self)
end

function ClientData:SetAccountInfo( account, password)
	self.account = account
	self.password = password
	CS.UnityEngine.PlayerPrefs.SetString("account", account)
	CS.UnityEngine.PlayerPrefs.SetString("password", password)
	DataManager:GetInstance():Broadcast(DataMessageNames.ON_ACCOUNT_INFO_CHG, account, password)
end

function ClientData:SetLoginServerID( id)
	self.login_server_id = id
	CS.UnityEngine.PlayerPrefs.SetInt("login_server_id", id)
	DataManager:GetInstance():Broadcast(DataMessageNames.ON_LOGIN_SERVER_ID_CHG, id)
end

-- ClientData.__init = __init
-- ClientData.SetAccountInfo = SetAccountInfo
-- ClientData.SetLoginServerID = SetLoginServerID

return ClientData