
player = game.Players.LocalPlayer
char = player.Character
torso = char.Torso
mouse = player:GetMouse()
down = false
times = 100
x = 10
z = 0
function grow(part)
  size = part.Size.X
  part:Resize(1, 1)
  part.mesh.Scale = part.mesh.Scale + Vector3.new(0, 1.5, 0)
end
m = Instance.new("Model", char)
m.Name = "Black Sphere"
orb = Instance.new("Part", m)
orb.CanCollide = false
orb.CFrame = torso.CFrame
orb.Name = "Head"
orb.Shape = "Ball"
orb.BrickColor = BrickColor.new("Really black")
orb.Material = "Neon"
orb.Size = Vector3.new(1, 1, 1)
orb.CanCollide = false
hum = Instance.new("Humanoid", m)
hum.MaxHealth = 0
bp = Instance.new("BodyPosition", orb)
bp.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
mouse.Button1Down:connect(function()
  down = true
  spike = Instance.new("Part", char)
  spike.Name = "Spike"
  spike.Size = Vector3.new(1, 1, 1)
  spike.BrickColor = BrickColor.new("Really black")
  spike.CanCollide = false
  spike.CFrame = orb.CFrame
  spike.Touched:connect(function(hit)
    if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil and hit.Parent ~= char then
      hit.Parent.Humanoid.Health = 0
    end
  end)
  mesh = Instance.new("SpecialMesh", spike)
  mesh.Name = "mesh"
  mesh.MeshId = "http://www.roblox.com/asset/?id=9257317"
  mesh.Scale = Vector3.new(5, 1, 5)
  weld = Instance.new("Weld", spike)
  weld.Part0 = spike
  weld.Part1 = orb
  weld.C1 = CFrame.new(0, 1, 0)
  while down == true do
    spike.CFrame = CFrame.new(spike.Position, mouse.Hit.p) * CFrame.Angles(4.7, 0, 0)
    grow(spike)
    wait()
  end
end)
mouse.Button1Up:connect(function()
  down = false
  char.Spike:Remove()
end)
function move(bp, torso)
  if down == false then
    bp.Position = Vector3.new(torso.CFrame.x, torso.CFrame.y, torso.CFrame.z) + Vector3.new(x, 4, z)
  end
end
while true do
  if down == false then
    for i = 1, times do
      x = x - 0.1
      z = z + 0.1
      move(bp, torso)
      wait()
    end
    for i = 1, times do
      x = x - 0.1
      z = z - 0.1
      move(bp, torso)
      wait()
    end
    for i = 1, times do
      x = x + 0.1
      z = z - 0.1
      move(bp, torso)
      wait()
    end
    for i = 1, times do
      x = x + 0.1
      z = z + 0.1
      move(bp, torso)
      wait()
    end
    wait()
  else
    wait()
  end
end
