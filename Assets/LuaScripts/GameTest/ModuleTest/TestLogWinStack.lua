--[[
--]]

local function Run()
	local stack = UIManager:GetInstance().__window_stack
	print(table.dump(stack))
end

return {
	Run = Run
}