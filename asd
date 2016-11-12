wait(1)
hat = game.InsertService:LoadAsset(80922288):GetChildren()[1]
Player = game.Players.thekingofasome
Character = Player.Character
game.Lighting.Outlines = false

--Body Parts--

Head = Character.Head
Torso = Character.Torso
LeftA = Character["Left Arm"]
RightA = Character["Right Arm"]
LeftL = Character["Left Leg"]
RightL = Character["Right Leg"]

--Setup

for i,v in pairs(Character:GetChildren()) do
	if v:IsA("Hat") then
		v:remove()
	elseif v:IsA("Shirt") then
		v:remove()
	elseif v:IsA("Pants") then
		v:remove()
	end
end

if Head:FindFirstChild("face") then
	Head:FindFirstChild("face"):remove()
end

wait(1)

shirt = Instance.new("Shirt")
pants = Instance.new("Pants")
face = Instance.new("Decal")
shirt.Parent = Character
pants.Parent = Character
hat.Parent = Character
face.Parent = Head
face.Face = "Front"
face.Texture = "http://www.roblox.com/asset/?id=288287250"
shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=270271860"
pants.PantsTemplate = "http://www.roblox.com/asset/?id=234106591"

music = Instance.new("Sound",Torso)
music.SoundId = "rbxassetid://419084879"
music.Volume = 2
music:Play()

--Main

mouse = Player:GetMouse()

mouse.KeyDown:connect(function(ky)
	local key = ky:lower()
	
	if key == "f" then
		game.Chat:Chat(Character, "WE WILL BUILD THE WALL!", Enum.ChatColor.Red)
	elseif key == "e" then
		game.Chat:Chat(Character, "MEXICO WILL PAY FOR MY WALL!", Enum.ChatColor.Red)
	elseif key == "k" then
		game.Chat:Chat(Character, "FUCK YOU!", Enum.ChatColor.Red)
		Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0, 0,  0, 1, -11, 1, -0, -1, 0, 0)
		local midf = Instance.new("Part",RightA)
		midf.BrickColor = Character["Body Colors"]["RightArmColor"]
		midf.LeftSurface = "Smooth"
		midf.RightSurface = "Smooth"
		midf.FrontSurface = "Smooth"
		midf.BackSurface = "Smooth"
		midf.BottomSurface = "Smooth"
		midf.TopSurface = "Smooth"
		midf.Size = Vector3.new(0.2, 0.2, 1)
		local midw = Instance.new("Weld",RightA)
		midw.Part0 = RightA
		midw.Part1 = midf
		midw.C1 = CFrame.new(0, 0.89, 0.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		wait(1)
		midw:remove()
		midf:remove()
		Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
	elseif key == "q" then
		game.Chat:Chat(Character, "I am donald trump.", Enum.ChatColor.Blue)
	end
end)
