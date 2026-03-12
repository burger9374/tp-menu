-- Gui to Lua
-- Version: 3.2

-- Instances:

local tpmenu = Instance.new("ScreenGui")
local thethning = Instance.new("Frame")
local tp5studsforward = Instance.new("TextButton")
local tp5studsbackwards = Instance.new("TextButton")
local tptorandomperson = Instance.new("TextButton")
local credits = Instance.new("TextLabel")
local credits_2 = Instance.new("TextLabel")
local mebeionghandsome = Instance.new("ImageLabel")
local name = Instance.new("TextLabel")

--Properties:

tpmenu.Name = "tp menu"
tpmenu.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
tpmenu.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

thethning.Name = "the thning"
thethning.Parent = tpmenu
thethning.BackgroundColor3 = Color3.fromRGB(70, 9, 106)
thethning.BorderColor3 = Color3.fromRGB(0, 0, 0)
thethning.BorderSizePixel = 0
thethning.Position = UDim2.new(0.424007505, 0, 0.230186477, 0)
thethning.Size = UDim2.new(0, 180, 0, 174)

thethning.Active = true
thethning.Draggable = true

tp5studsforward.Name = "tp 5 studs forward"
tp5studsforward.Parent = thethning
tp5studsforward.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tp5studsforward.BorderColor3 = Color3.fromRGB(0, 0, 0)
tp5studsforward.BorderSizePixel = 0
tp5studsforward.Position = UDim2.new(0.135065719, 0, 0.0898239315, 0)
tp5studsforward.Size = UDim2.new(0, 129, 0, 35)
tp5studsforward.Font = Enum.Font.SourceSans
tp5studsforward.Text = "tp 5 studs forward"
tp5studsforward.TextColor3 = Color3.fromRGB(0, 0, 0)
tp5studsforward.TextSize = 14.000

tp5studsbackwards.Name = "tp 5 studs backwards"
tp5studsbackwards.Parent = thethning
tp5studsbackwards.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tp5studsbackwards.BorderColor3 = Color3.fromRGB(0, 0, 0)
tp5studsbackwards.BorderSizePixel = 0
tp5studsbackwards.Position = UDim2.new(0.140621275, 0, 0.396843046, 0)
tp5studsbackwards.Size = UDim2.new(0, 129, 0, 35)
tp5studsbackwards.Font = Enum.Font.SourceSans
tp5studsbackwards.Text = "tp 5 studs backwards"
tp5studsbackwards.TextColor3 = Color3.fromRGB(0, 0, 0)
tp5studsbackwards.TextSize = 14.000

tptorandomperson.Name = "tp to random person"
tptorandomperson.Parent = thethning
tptorandomperson.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tptorandomperson.BorderColor3 = Color3.fromRGB(0, 0, 0)
tptorandomperson.BorderSizePixel = 0
tptorandomperson.Position = UDim2.new(0.135065719, 0, 0.683787405, 0)
tptorandomperson.Size = UDim2.new(0, 129, 0, 35)
tptorandomperson.Font = Enum.Font.SourceSans
tptorandomperson.Text = "tp to random person"
tptorandomperson.TextColor3 = Color3.fromRGB(0, 0, 0)
tptorandomperson.TextSize = 14.000

credits.Name = "credits"
credits.Parent = thethning
credits.BackgroundColor3 = Color3.fromRGB(130, 3, 124)
credits.BorderColor3 = Color3.fromRGB(0, 0, 0)
credits.BorderSizePixel = 0
credits.Position = UDim2.new(-0.00531107606, 0, 0.986596823, 0)
credits.Size = UDim2.new(0, 180, 0, 18)
credits.Font = Enum.Font.SourceSans
credits.Text = "made by javascriptgt"
credits.TextColor3 = Color3.fromRGB(255, 255, 255)
credits.TextSize = 13.000

credits_2.Name = "credits"
credits_2.Parent = thethning
credits_2.BackgroundColor3 = Color3.fromRGB(19, 130, 93)
credits_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
credits_2.BorderSizePixel = 0
credits_2.Position = UDim2.new(-0.377627552, 0, 1.08753324, 0)
credits_2.Size = UDim2.new(0, 247, 0, 24)
credits_2.Font = Enum.Font.SourceSans
credits_2.Text = "more buttons will be added in the future"
credits_2.TextColor3 = Color3.fromRGB(255, 255, 255)
credits_2.TextSize = 13.000

mebeionghandsome.Name = "me beiong handsome"
mebeionghandsome.Parent = thethning
mebeionghandsome.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mebeionghandsome.BorderColor3 = Color3.fromRGB(0, 0, 0)
mebeionghandsome.BorderSizePixel = 0
mebeionghandsome.Position = UDim2.new(-0.377627552, 0, -0.178422242, 0)
mebeionghandsome.Size = UDim2.new(0, 67, 0, 222)
mebeionghandsome.Image = "rbxassetid://71959538680826"

name.Name = "name"
name.Parent = thethning
name.BackgroundColor3 = Color3.fromRGB(86, 44, 255)
name.BorderColor3 = Color3.fromRGB(0, 0, 0)
name.BorderSizePixel = 0
name.Position = UDim2.new(-0.00531107606, 0, -0.172675028, 0)
name.Size = UDim2.new(0, 180, 0, 30)
name.Font = Enum.Font.SourceSans
name.Text = "Tp menu"
name.TextColor3 = Color3.fromRGB(255, 255, 255)
name.TextSize = 29.000

-- Scripts:

local function PMPW_fake_script() -- tp5studsforward.LocalScript 
	local script = Instance.new('LocalScript', tp5studsforward)

	local button = script.Parent
	local player = game.Players.LocalPlayer
	
	button.MouseButton1Click:Connect(function()
		local character = player.Character
		if character and character:FindFirstChild("HumanoidRootPart") then
			local root = character.HumanoidRootPart
	
	
			root.CFrame = root.CFrame + (root.CFrame.LookVector * 5)
		end
	end)
end
coroutine.wrap(PMPW_fake_script)()
local function HFNUS_fake_script() -- tp5studsbackwards.LocalScript 
	local script = Instance.new('LocalScript', tp5studsbackwards)

	local button = script.Parent
	local player = game.Players.LocalPlayer
	
	button.MouseButton1Click:Connect(function()
		local character = player.Character
		if character and character:FindFirstChild("HumanoidRootPart") then
			local root = character.HumanoidRootPart
	
	
			root.CFrame = root.CFrame - (root.CFrame.LookVector * 5)
		end
	end)
end
coroutine.wrap(HFNUS_fake_script)()
local function EXRARH_fake_script() -- tptorandomperson.LocalScript 
	local script = Instance.new('LocalScript', tptorandomperson)

	local button = script.Parent
	local player = game.Players.LocalPlayer
	local players = game:GetService("Players")
	
	button.MouseButton1Click:Connect(function()
		local character = player.Character
		local root = character and character:FindFirstChild("HumanoidRootPart")
		if not root then return end
	
		local playerList = players:GetPlayers()
	
	
		for i, p in ipairs(playerList) do
			if p == player then
				table.remove(playerList, i)
				break
			end
		end
	
	
		if #playerList > 0 then
			local randomPlayer = playerList[math.random(1, #playerList)]
			local targetChar = randomPlayer.Character
			if targetChar and targetChar:FindFirstChild("HumanoidRootPart") then
				root.CFrame = targetChar.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
			end
		end
	end)
end
coroutine.wrap(EXRARH_fake_script)()
