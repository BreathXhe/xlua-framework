--[[
-- UIBattleMain控制层
--]]

---@class UIBattleMainCtrl:UIBaseCtrl
local UIBattleMainCtrl = BaseClass("UIBattleMainCtrl", UIBaseCtrl)

function UIBattleMainCtrl:Back()
	SceneManager:GetInstance():SwitchScene(SceneConfig.HomeScene)
end

-- UIBattleMainCtrl.Back = Back

return UIBattleMainCtrl