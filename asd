Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
m = Instance.new("Model", Character)
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Face = Head.face
Neck = Torso.Neck
it = Instance.new
attacktype = 1
vt = Vector3.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
cloaked = false
necko = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false
attackdebounce = false
deb = false
equipped = true
hand = false
MMouse = nil
combo = 0
mana = 0
trispeed = 0.2
attackmode = "none"
local idle = 0
local Anim = "Idle"
local Effects = {}
local gun = false
local shoot = false
player = nil
mana = 0
mouse = Player:GetMouse()
RSH = nil
RW = Instance.new("Weld")
LW = Instance.new("Weld")
RW.Name = "Right Shoulder"
LW.Name = "Left Shoulder"
LH = Torso["Left Hip"]
RH = Torso["Right Hip"]
TorsoColor = Torso.BrickColor
NoOutline = function(Part)
  Part.TopSurface = 10
end

player = Player
ch = Character
RSH = ch.Torso["Right Shoulder"]
LSH = ch.Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "Right Shoulder"
RW.Part0 = ch.Torso
RW.C0 = cf(1.5, 0.5, 0)
RW.C1 = cf(0, 0.5, 0)
RW.Part1 = ch["Right Arm"]
RW.Parent = ch.Torso
LW.Name = "Left Shoulder"
LW.Part0 = ch.Torso
LW.C0 = cf(-1.5, 0.5, 0)
LW.C1 = cf(0, 0.5, 0)
LW.Part1 = ch["Left Arm"]
LW.Parent = ch.Torso
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
Mouse = Player:GetMouse()
m = Instance.new("Model", Character)
local weldBetween = function(a, b)
  local weldd = Instance.new("ManualWeld")
  weldd.Part0 = a
  weldd.Part1 = b
  weldd.C0 = CFrame.new()
  weldd.C1 = b.CFrame:inverse() * a.CFrame
  weldd.Parent = a
  return weldd
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 0.033333333333333
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:connect(function(s, p)
  tf = tf + s
  if frame <= tf then
    if allowframeloss then
      script.Heartbeat:Fire()
      lastframe = tick()
    else
      for i = 1, math.floor(tf / frame) do
        script.Heartbeat:Fire()
      end
      lastframe = tick()
    end
    if tossremainder then
      tf = 0
    else
      tf = tf - frame * math.floor(tf / frame)
    end
  end
end
)
swait = function(num)
  if num == 0 or num == nil then
    ArtificialHB.Event:wait()
  else
    for i = 0, num do
      ArtificialHB.Event:wait()
    end
  end
end

pwait = function(num)
  if num == 0 or num == nil then
    game:service("RunService").Heartbeat:wait(0)
  else
    for i = 0, num do
      game:service("RunService").Heartbeat:wait(0)
    end
  end
end

nooutline = function(part)
  part.TopSurface = 10
end

part = function(formfactor, parent, material, reflectance, transparency, brickcolor, name, size)
  local fp = it("Part")
  fp.formFactor = formfactor
  fp.Parent = parent
  fp.Reflectance = reflectance
  fp.Transparency = transparency
  fp.CanCollide = false
  fp.Locked = true
  fp.BrickColor = BrickColor.new(tostring(brickcolor))
  fp.Name = name
  fp.Size = size
  fp.Position = Character.Torso.Position
  nooutline(fp)
  fp.Material = material
  fp:BreakJoints()
  return fp
end

mesh = function(Mesh, part, meshtype, meshid, offset, scale)
  local mesh = it(Mesh)
  mesh.Parent = part
  if Mesh == "SpecialMesh" then
    mesh.MeshType = meshtype
    mesh.MeshId = meshid
  end
  mesh.Offset = offset
  mesh.Scale = scale
  return mesh
end

local fengui = it("GuiMain")
fengui.Parent = Player.PlayerGui
fengui.Name = "WeaponGUI"
local fenframe = it("Frame")
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255, 255, 255)
fenframe.BackgroundTransparency = 1
fenframe.BorderColor3 = Color3.new(17, 17, 17)
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframe.Position = UDim2.new(0.4, 0, 0.1, 0)
local fenbarmana1 = it("TextLabel")
fenbarmana1.Parent = fenframe
fenbarmana1.Text = " "
fenbarmana1.BackgroundTransparency = 0
fenbarmana1.BackgroundColor3 = Color3.new(0, 0, 0)
fenbarmana1.SizeConstraint = "RelativeXY"
fenbarmana1.TextXAlignment = "Center"
fenbarmana1.TextYAlignment = "Center"
fenbarmana1.Position = UDim2.new(0, 0, 0, 0)
fenbarmana1.Size = UDim2.new(4, 0, 0.2, 0)
local fenbarmana2 = it("TextLabel")
fenbarmana2.Parent = fenframe
fenbarmana2.Text = " "
fenbarmana2.BackgroundTransparency = 0
fenbarmana2.BackgroundColor3 = Torso.Color
fenbarmana2.SizeConstraint = "RelativeXY"
fenbarmana2.TextXAlignment = "Center"
fenbarmana2.TextYAlignment = "Center"
fenbarmana2.Position = UDim2.new(0, 0, 0, 0)
fenbarmana2.Size = UDim2.new(4 * mana / 100, 0, 0.2, 0)
local fenbarmana3 = it("TextLabel")
fenbarmana3.Parent = fenframe
fenbarmana3.Text = " "
fenbarmana3.BackgroundTransparency = 0
fenbarmana3.BackgroundColor3 = Color3.new(Col1, Col2, Col3)
fenbarmana3.SizeConstraint = "RelativeXY"
fenbarmana3.TextXAlignment = "Center"
fenbarmana3.TextYAlignment = "Center"
fenbarmana3.Position = UDim2.new(0, 0, 0, 0)
fenbarmana3.Size = UDim2.new(0, 0, 0.2, 0)
local fenbarmana4 = it("TextLabel")
fenbarmana4.Parent = fenframe
fenbarmana4.Text = "Energy(" .. mana .. ")"
fenbarmana4.BackgroundTransparency = 1
fenbarmana4.BackgroundColor3 = Color3.new(0, 0, 0)
fenbarmana4.SizeConstraint = "RelativeXY"
fenbarmana4.TextXAlignment = "Center"
fenbarmana4.TextYAlignment = "Center"
fenbarmana4.Position = UDim2.new(0, 0, -0.3, 0)
fenbarmana4.Size = UDim2.new(4, 0, 0.2, 0)
fenbarmana4.FontSize = "Size9"
fenbarmana4.TextStrokeTransparency = 0
fenbarmana4.TextColor = BrickColor.new("White")
weld = function(parent, part0, part1, c0, c1)
  local weld = it("Weld")
  weld.Parent = parent
  weld.Part0 = part0
  weld.Part1 = part1
  weld.C0 = c0
  weld.C1 = c1
  return weld
end

local CFrameFromTopBack = function(at, top, back)
  local right = top:Cross(back)
  return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

Triangle = function(a, b, c)
  local edg1 = c - a:Dot(b - a.unit)
  local edg2 = a - b:Dot(c - b.unit)
  local edg3 = b - c:Dot(a - c.unit)
  if edg1 <= b - a.magnitude and edg1 >= 0 then
    a = a
  else
    -- DECOMPILER ERROR at PC35: Overwrote pending register: R1 in 'AssignReg'

    if edg2 <= c - b.magnitude and edg2 >= 0 then
      a = b
    else
      -- DECOMPILER ERROR at PC46: Overwrote pending register: R2 in 'AssignReg'

      -- DECOMPILER ERROR at PC47: Overwrote pending register: R1 in 'AssignReg'

      if edg3 <= a - c.magnitude and edg3 >= 0 then
        a = c
      else
        assert(false, "unreachable")
      end
    end
  end
  local len1 = c - a:Dot(b - a.unit)
  local len2 = b - a.magnitude - len1
  local width = a + b - a.unit * len1 - c.magnitude
  local maincf = CFrameFromTopBack(a, b - a:Cross(c - b).unit, -b - a.unit)
  local list = {}
  local TrailColor = "Dark grey"
  if len1 > 0.01 then
    local w1 = Instance.new("WedgePart", m)
    game:GetService("Debris"):AddItem(w1, 5)
    w1.Material = "SmoothPlastic"
    w1.FormFactor = "Custom"
    w1.BrickColor = BrickColor.new(TrailColor)
    w1.Transparency = 0
    w1.Reflectance = 0
    w1.Material = "SmoothPlastic"
    w1.CanCollide = false
    NoOutline(w1)
    local sz = Vector3.new(0.2, width, len1)
    w1.Size = sz
    local sp = Instance.new("SpecialMesh", w1)
    sp.MeshType = "Wedge"
    sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
    w1:BreakJoints()
    w1.Anchored = true
    w1.Parent = workspace
    w1.Transparency = 0.7
    table.insert(Effects, {w1, "Disappear", 0.01})
    w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
    table.insert(list, w1)
  end
  do
    if len2 > 0.01 then
      local w2 = Instance.new("WedgePart", m)
      game:GetService("Debris"):AddItem(w2, 5)
      w2.Material = "SmoothPlastic"
      w2.FormFactor = "Custom"
      w2.BrickColor = BrickColor.new(TrailColor)
      w2.Transparency = 0
      w2.Reflectance = 0
      w2.Material = "SmoothPlastic"
      w2.CanCollide = false
      NoOutline(w2)
      local sz = Vector3.new(0.2, width, len2)
      w2.Size = sz
      local sp = Instance.new("SpecialMesh", w2)
      sp.MeshType = "Wedge"
      sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
      w2:BreakJoints()
      w2.Anchored = true
      w2.Parent = workspace
      w2.Transparency = 0.7
      table.insert(Effects, {w2, "Disappear", 0.01})
      w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
      table.insert(list, w2)
    end
    do
      return unpack(list)
    end
  end
end

so = function(id, par, vol, pit)
  coroutine.resume(coroutine.create(function()
    local sou = Instance.new("Sound", par or workspace)
    sou.Volume = vol
    sou.Pitch = pit or 1
    sou.SoundId = id
    swait()
    sou:play()
    game:GetService("Debris"):AddItem(sou, 6)
  end
))
end


function clerp(a, b, t)
	return a:lerp(b, t)
end


rayCast = function(Pos, Dir, Max, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

Damagefunc = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
  if hit.Parent == nil then
    return 
  end
  h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
    h = hit.Parent.Parent:FindFirstChild("Humanoid")
  end
  if hit.Parent.className == "Hat" then
    hit = hit.Parent.Parent:findFirstChild("Head")
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
    Damage = math.random(minim, maxim)
    blocked = false
    block = hit.Parent:findFirstChild("Block")
    if block ~= nil then
      print(block.className)
      if block.className == "NumberValue" and block.Value > 0 then
        blocked = true
        if decreaseblock == nil then
          block.Value = block.Value - 1
        end
      end
      if block.className == "IntValue" and block.Value > 0 then
        blocked = true
        if decreaseblock ~= nil then
          block.Value = block.Value - 1
        end
      end
    end
    if blocked == false then
      HitHealth = h.Health
      h.Health = h.Health - Damage
      if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 and h.Parent.Name ~= "Lost Soul" then
        print("gained spree")
        game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value = game.Players.LocalPlayer.leaderstats.Spree.Value + 1
      end
      showDamage(hit.Parent, Damage, 0.5, BrickColor.new("Dark grey"))
    else
      h.Health = h.Health - Damage / 2
      showDamage(hit.Parent, Damage / 2, 0.5, BrickColor.new("Brown"))
    end
    if Type == "Knockdown" then
      hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end
), hum)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Instance.new("BodyVelocity")
      bodvol.velocity = angle * knockback
      bodvol.P = 5000
      bodvol.maxForce = Vector3.new(8000, 8000, 8000)
      bodvol.Parent = hit
      rl = Instance.new("BodyAngularVelocity")
      rl.P = 3000
      rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
      rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
      rl.Parent = hit
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    else
      do
        if Type == "Normal" then
          vp = Instance.new("BodyVelocity")
          vp.P = 500
          vp.maxForce = Vector3.new(math.huge, 0, math.huge)
          if KnockbackType == 1 then
            vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
          else
            if KnockbackType == 2 then
              vp.velocity = Property.CFrame.lookVector * knockback
            end
          end
          if knockback > 0 then
            vp.Parent = hit.Parent.Torso
          end
          game:GetService("Debris"):AddItem(vp, 0.5)
        else
          if Type == "Up" then
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.velocity = vt(0, 60, 0)
            bodyVelocity.P = 5000
            bodyVelocity.maxForce = Vector3.new(8000, 8000, 8000)
            bodyVelocity.Parent = hit
            game:GetService("Debris"):AddItem(bodyVelocity, 1)
            rl = Instance.new("BodyAngularVelocity")
            rl.P = 3000
            rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
            rl.angularvelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
            rl.Parent = hit
            game:GetService("Debris"):AddItem(rl, 0.5)
          else
            do
              if Type == "Snare" then
                bp = Instance.new("BodyPosition")
                bp.P = 2000
                bp.D = 100
                bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                bp.position = hit.Parent.Torso.Position
                bp.Parent = hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp, 1)
              else
                if Type == "Target" and Targetting == false then
                  ZTarget = hit.Parent.Torso
                  coroutine.resume(coroutine.create(function(Part)
    so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
    swait(5)
    so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
  end
), ZTarget)
                  TargHum = ZTarget.Parent:findFirstChild("Humanoid")
                  targetgui = Instance.new("BillboardGui")
                  targetgui.Parent = ZTarget
                  targetgui.Size = UDim2.new(10, 100, 10, 100)
                  targ = Instance.new("ImageLabel")
                  targ.Parent = targetgui
                  targ.BackgroundTransparency = 1
                  targ.Image = "rbxassetid://4834067"
                  targ.Size = UDim2.new(1, 0, 1, 0)
                  cam.CameraType = "Scriptable"
                  cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                  dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
                  workspace.CurrentCamera.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                  Targetting = true
                  RocketTarget = ZTarget
                  for i = 1, Property do
                    if Humanoid.Health > 0 and Character.Parent ~= nil and TargHum.Health > 0 and TargHum.Parent ~= nil and Targetting == true then
                      swait()
                    end
                    cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                    dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
                    cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position) * cf(0, 5, 10) * euler(-0.3, 0, 0)
                  end
                  Targetting = false
                  RocketTarget = nil
                  targetgui.Parent = nil
                  cam.CameraType = "Custom"
                end
              end
              debounce = Instance.new("BoolValue")
              debounce.Name = "DebounceHit"
              debounce.Parent = hit.Parent
              debounce.Value = true
              game:GetService("Debris"):AddItem(debounce, Delay)
              c = Instance.new("ObjectValue")
              c.Name = "creator"
              c.Value = Player
              c.Parent = h
              game:GetService("Debris"):AddItem(c, 0.5)
              CRIT = false
              hitDeb = true
              AttackPos = 6
            end
          end
        end
      end
    end
  end
end

showDamage = function(Char, Dealt, du, Color)
  g = Instance.new("Model")
  g.Name = tostring(Dealt)
  h = Instance.new("Humanoid")
  h.Health = 0
  h.MaxHealth = 0
  h.Parent = g
  c = Instance.new("Part")
  c.Transparency = 0
  c.BrickColor = Color
  c.Name = "Head"
  c.TopSurface = 0
  c.BottomSurface = 0
  c.formFactor = "Plate"
  c.Size = Vector3.new(1, 0.4, 1)
  ms = Instance.new("CylinderMesh")
  ms.Scale = Vector3.new(0.8, 0.8, 0.8)
  if CRIT == true then
    ms.Scale = Vector3.new(1, 1.25, 1)
  end
  ms.Parent = c
  c.Reflectance = 0
  Instance.new("BodyGyro").Parent = c
  c.Parent = g
  if Char:findFirstChild("Head") ~= nil then
    c.CFrame = CFrame.new(Char.Head.CFrame.p + Vector3.new(0, 1.5, 0))
  else
    if Char.Parent:findFirstChild("Head") ~= nil then
      c.CFrame = CFrame.new(Char.Parent.Head.CFrame.p + Vector3.new(0, 1.5, 0))
    end
  end
  f = Instance.new("BodyPosition")
  f.P = 2000
  f.D = 100
  f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  f.position = c.Position + Vector3.new(0, 3, 0)
  f.Parent = c
  game:GetService("Debris"):AddItem(g, 0.5 + du)
  c.CanCollide = false
  g.Parent = workspace
  c.CanCollide = false
end

handle = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Handle", Vector3.new(1.00000012, 0.200000003, 0.600000024))
handleweld = weld(m, Character["Left Arm"], handle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.00497817993, 1.09852839, -0.00498199463, -1.00772247e-025, 2.44568227e-013, 1, 2.26874075e-013, 0.999999881, 2.44568255e-013, -1, -2.26874048e-013, 1.00166402e-025))
handle2 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Handle2", Vector3.new(3.200000024, 0.1005, 5.00000012))
handleweld2 = weld(m, Character["Right Arm"], handle2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.10497817993, 1.09852839, -1.5598199463, -1.00772247e-025, 2.44568227e-013, 1, 2.26874075e-013, 0.999999881, 2.44568255e-013, -1, -2.26874048e-013, 1.00166402e-025))
Hitbox = part(Enum.FormFactor.Custom, m, Enum.Material.WoodPlanks, 0, 1, "Mid gray", "Hitbox", Vector3.new(0.400000036, 1.60000014, 0.600000024))
Hitboxweld = weld(m, handle, Hitbox, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699993134, -0.101213217, 0, 1, 2.45206633e-013, 2.23613988e-025, -2.45206633e-013, -1, 2.26374475e-013, -2.25900477e-025, 2.26374475e-013, -1))
mesh("SpecialMesh", Hitbox, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1778999", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 0.479999989, 0.300000012))
PBNeedle = part(Enum.FormFactor.Custom, m, Enum.Material.WoodPlanks, 0, 0, "Mid gray", "PBNeedle", Vector3.new(0.400000006, 0.400000006, 0.200000003))
PBNeedleweld = weld(m, handle, PBNeedle, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699993134, -0.501211882, 0, 1, 2.45206633e-013, 2.23613988e-025, -2.45206633e-013, -1, 2.26374475e-013, -2.25900477e-025, 2.26374475e-013, -1))
dra = mesh("SpecialMesh", handle2, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=22147051", Vector3.new(0, 0, 0), Vector3.new(2, 2, 2))
dra.TextureId = "http://www.roblox.com/asset/?id=22147026"
mesh("SpecialMesh", PBNeedle, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=1778999", Vector3.new(0, 0, 0), Vector3.new(0.300000012, 0.479999989, 0.300000012))
PBPart1 = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "PBPart1", Vector3.new(0.800000012, 0.399999946, 0.600000024))
PBPart1weld = weld(m, handle, PBPart1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699993134, -3.69963789, -7.15255737e-006, 1, 5.05664954e-013, -1.30451205e-015, 4.97449304e-013, 1, -4.5374815e-013, 1.30451205e-015, -4.5374815e-013, 1))
mesh("CylinderMesh", PBPart1, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
PBPart2 = part(Enum.FormFactor.Custom, m, Enum.Material.Plastic, 0, 0, "Dark stone grey", "PBPart2", Vector3.new(0.400000006, 0.600000024, 0.400000006))
PBPart2weld = weld(m, handle, PBPart2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.700050354, -7.00950623e-005, 3.49907684, -1, -1.60482286e-005, -1.59286301e-007, 1.58860502e-007, 2.65327035e-005, -1, 1.60482323e-005, -1, -2.65327017e-005))
mesh("SpecialMesh", PBPart2, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.299999982, 0.299999982, 2.22000003))
PBPole = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "PBPole", Vector3.new(0.400000006, 3.5999999, 0.600000024))
PBPoleweld = weld(m, handle, PBPole, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699993134, -1.69878912, 0, 1, 2.91981717e-013, 2.13405832e-025, 2.91981717e-013, 1, -2.97428748e-013, 2.22223004e-025, -2.40585329e-013, 1))
mesh("CylinderMesh", PBPole, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 2, 0.600000024))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599998474, -1.09998429, 0, 1, 2.45206633e-013, 2.23613988e-025, 2.45205765e-013, 0.999996424, -2.26373662e-013, 2.25900477e-025, -2.26374475e-013, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.400000006, 0.600000024))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.325069427, -0.366897583, 0, 0.707222462, -0.706991136, 1.60148153e-013, 0.706991136, 0.707222462, -1.60200642e-013, 2.25900477e-025, -2.26374475e-013, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.200000003, 2, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599998474, -1.09959769, -0.40000391, 1, 2.45206633e-013, 2.23613988e-025, 2.45206633e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.560000002))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.400000006, 0.600000024, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.699993134, 1.09672546e-005, 0.200021386, -0.999997139, -5.88281814e-008, 2.74286049e-005, -2.76967985e-005, -7.53964502e-010, -0.999998033, 5.88349671e-008, -0.999996901, -2.88369467e-011))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=3270017", Vector3.new(0, 0, 0), Vector3.new(0.420000017, 0.460000008, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599998474, 1.99907148, 0.400010586, 1, -2.3827215e-007, 4.58606735e-007, -2.38272577e-007, -1, -1.63917434e-007, 4.58606763e-007, 1.6391779e-007, -1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.200000003, 2, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599998474, -1.09944224, 0.399987221, 1, 2.45206633e-013, 2.23613988e-025, 2.45206633e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 0.560000002))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599994659, 1.99895847, -0.399979591, 1, -2.38257996e-007, 4.58606735e-007, -2.38258409e-007, -1, -1.63927155e-007, 4.58606763e-007, 1.63927496e-007, -1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599998474, 0.198883891, -0.399979591, 1, -2.38229688e-007, 4.58606735e-007, -2.38230101e-007, -1, -1.63946595e-007, 4.58606763e-007, 1.63946936e-007, -1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599998474, 0.198892951, 0.400010586, 1, -2.38208457e-007, 4.58606735e-007, -2.3820887e-007, -1, -1.63961175e-007, 4.58606763e-007, 1.63961516e-007, -1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.800000012))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599998474, -0.199686766, 0, 1, 2.49342214e-013, 2.23281582e-025, 2.41071052e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.5, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.200000003, 0.800000072))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.599998474, -1.99940848, 0, 1, 2.49342214e-013, 2.23281582e-025, 2.41071052e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("BlockMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(0.800000012, 0.5, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.800000012, 0.799999952, 0.600000024))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699993134, -1.09965634, -7.15255737e-006, 1, 2.53450039e-013, -1.30451205e-015, 2.36963227e-013, 1, -2.26374475e-013, 1.30451205e-015, -2.26374475e-013, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Plastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.700004578, -2.67028809e-005, 0.699332714, -1, -1.60535947e-005, -1.59286301e-007, 1.58860217e-007, 2.65416365e-005, -1, 1.60535983e-005, -1, -2.65416347e-005))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Plastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.700019836, -1.66893005e-005, 1.49919093, -1, -1.60516884e-005, -1.59286301e-007, 1.58860317e-007, 2.65384861e-005, -1, 1.6051692e-005, -1, -2.65384842e-005))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Plastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.400000006, 0.600000024, 0.400000006))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.700023651, -4.29153442e-005, 1.89885879, -1, -1.60487161e-005, -1.59286301e-007, 1.58860473e-007, 2.65335711e-005, -1, 1.60487198e-005, -1, -2.65335693e-005))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.699993134, -2.09877872, 0, 1, 2.63532252e-013, 2.20870009e-025, 2.26881014e-013, 1, -2.40585329e-013, 2.29174052e-025, -2.1216362e-013, 1))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.Plastic, 0, 0, "Light stone grey", "Part", Vector3.new(0.400000006, 0.600000024, 0.400000006))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.700031281, -3.81469727e-005, 2.29907608, -1, -1.60496675e-005, -1.59286301e-007, 1.58860416e-007, 2.65351464e-005, -1, 1.60497293e-005, -0.999996424, -2.65352392e-005))
mesh("SpecialMesh", Part, Enum.MeshType.FileMesh, "http://www.roblox.com/asset/?id=18430887", Vector3.new(0, 0, 0), Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.900005341, -2.09888887, 0.0100111961, 1, 2.6353919e-013, 2.20464535e-025, 2.26873208e-013, 0.999996424, -2.69013165e-013, 2.35117084e-025, -1.83734972e-013, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-2.09933496, 0.00994968414, -1.1000061, -7.43166083e-007, 0.999996424, 2.72369789e-007, 1.49011719e-008, -2.72368425e-007, 1, 1, 7.431629e-007, -1.49009649e-008))
mesh("CylinderMesh", Part, "", "", Vector3.new(0, 0, 0), Vector3.new(1, 1, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409999847, -0.404999018, -3.0040741e-005, 1, 1.05336483e-010, -5.11527077e-021, 1.05335976e-010, 1, -9.92765453e-011, -5.11568477e-021, -9.9276018e-011, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.409999847, -1.60497594, -3.0040741e-005, 1, 1.12981839e-010, -5.89094849e-021, -1.12491558e-010, 1, -1.06496659e-010, -6.08833769e-021, 1.0604289e-010, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409996033, -1.60497594, -3.0040741e-005, 1, 1.13225755e-010, -5.9168516e-021, -1.12735474e-010, 1, -1.06724032e-010, -6.11401341e-021, 1.06270263e-010, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.60497594, 0.40499115, 1, 7.82292217e-011, -2.80034948e-021, -7.77389403e-011, 1, -7.37259559e-011, -2.93059226e-021, 7.32721869e-011, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -1.60497594, -0.405024052, 1, 7.93888774e-011, -2.8813423e-021, -7.88986237e-011, 1, -7.48344303e-011, -3.02257208e-021, 7.43806614e-011, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.404999018, -0.405024052, 1, 7.9389488e-011, -2.88135442e-021, 7.93889815e-011, 1, -7.48338752e-011, -2.88212869e-021, -7.48333479e-011, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.409996033, -0.404999018, -3.0040741e-005, 1, 3.79056439e-011, -6.35164548e-022, 3.79058382e-011, 1, -3.57250896e-011, -6.35662047e-022, -3.57250896e-011, 1))
Part = part(Enum.FormFactor.Custom, m, Enum.Material.SmoothPlastic, 0, 0, "Dark stone grey", "Part", Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld = weld(m, handle, Part, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0, -0.404999018, 0.40499115, 1, 7.82298046e-011, -2.80033434e-021, 7.8229298e-011, 1, -7.37254285e-011, -2.80000274e-021, -7.37249012e-011, 1))
MagniDamage = function(Hit, Part, magni, mindam, maxdam, knock, Type)
  for _,c in pairs(workspace:children()) do
    local hum = c:findFirstChild("Humanoid")
    if hum ~= nil then
      local head = c:findFirstChild("Torso")
      if head ~= nil then
        local targ = head.Position - Part.Position
        local mag = targ.magnitude
        if mag <= magni and c.Name ~= Player.Name then
          Damagefunc2(Hit, head, mindam, maxdam, knock, Type, RootPart, 0.2, 1, 3)
        end
      end
    end
  end
end

Damagefunc2 = function(Part, hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, decreaseblock)
  if hit.Parent == nil then
    return 
  end
  local h = hit.Parent:FindFirstChild("Humanoid")
  for _,v in pairs(hit.Parent:children()) do
    if v:IsA("Humanoid") then
      h = v
    end
  end
  if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
    h = hit.Parent.Parent:FindFirstChild("Humanoid")
  end
  if hit.Parent.className == "Hat" then
    hit = hit.Parent.Parent:findFirstChild("Head")
  end
  if h ~= nil and hit.Parent.Name ~= Character.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
    if hit.Parent:findFirstChild("DebounceHit") ~= nil and hit.Parent.DebounceHit.Value == true then
      return 
    end
    local c = Instance.new("ObjectValue")
    c.Name = "creator"
    c.Value = game:service("Players").LocalPlayer
    c.Parent = h
    game:GetService("Debris"):AddItem(c, 0.5)
    local Damage = math.random(minim, maxim)
    local blocked = false
    local block = hit.Parent:findFirstChild("Block")
    if block ~= nil then
      print(block.className)
      if block.className == "NumberValue" and block.Value > 0 then
        blocked = true
        if decreaseblock == nil then
          block.Value = block.Value - 1
        end
      end
      if block.className == "IntValue" and block.Value > 0 then
        blocked = true
        if decreaseblock ~= nil then
          block.Value = block.Value - 1
        end
      end
    end
    if blocked == false then
      h.Health = h.Health - Damage
      HitHealth = h.Health
      if HitHealth ~= h.Health and HitHealth ~= 0 and h.Health <= 0 and h.Parent.Name ~= "Lost Soul" then
        print("gained spree")
        game.Players.LocalPlayer:FindFirstChild("leaderstats").Spree.Value = game.Players.LocalPlayer.leaderstats.Spree.Value + 1
      end
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, Part.BrickColor.Color)
    else
      h.Health = h.Health - Damage / 2
      ShowDamage(Part.CFrame * CFrame.new(0, 0, Part.Size.Z / 2).p + Vector3.new(0, 1.5, 0), -Damage, 1.5, BrickColor.new("Brown").Color)
    end
    if Type == "Knockdown" then
      local hum = hit.Parent.Humanoid
      hum.PlatformStand = true
      coroutine.resume(coroutine.create(function(HHumanoid)
    swait(1)
    HHumanoid.PlatformStand = false
  end
), hum)
      local angle = hit.Position - (Property.Position + Vector3.new(0, 0, 0)).unit
      local bodvol = Instance.new("BodyVelocity")
      bodvol.velocity = angle * knockback
      bodvol.P = 5000
      bodvol.maxForce = Vector3.new(8000, 8000, 8000)
      bodvol.Parent = hit
      local rl = Instance.new("BodyAngularVelocity")
      rl.P = 3000
      rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
      rl.angularvelocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
      rl.Parent = hit
      game:GetService("Debris"):AddItem(bodvol, 0.5)
      game:GetService("Debris"):AddItem(rl, 0.5)
    else
      do
        if Type == "Normal" then
          local vp = Instance.new("BodyVelocity")
          vp.P = 500
          vp.maxForce = Vector3.new(math.huge, 0, math.huge)
          if KnockbackType == 1 then
            vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
          else
            if KnockbackType == 2 then
              vp.velocity = Property.CFrame.lookVector * knockback
            end
          end
          if knockback > 0 then
            vp.Parent = hit.Parent.Torso
          end
          game:GetService("Debris"):AddItem(vp, 0.5)
        else
          do
            if Type == "Up" then
              local bodyVelocity = Instance.new("BodyVelocity")
              bodyVelocity.velocity = vt(0, 60, 0)
              bodyVelocity.P = 5000
              bodyVelocity.maxForce = Vector3.new(8000, 8000, 8000)
              bodyVelocity.Parent = hit
              game:GetService("Debris"):AddItem(bodyVelocity, 1)
              local rl = Instance.new("BodyAngularVelocity")
              rl.P = 3000
              rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
              rl.angularvelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
              rl.Parent = hit
              game:GetService("Debris"):AddItem(rl, 0.5)
            else
              do
                if Type == "Snare" then
                  local bp = Instance.new("BodyPosition")
                  bp.P = 2000
                  bp.D = 100
                  bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                  bp.position = hit.Parent.Torso.Position
                  bp.Parent = hit.Parent.Torso
                  game:GetService("Debris"):AddItem(bp, 1)
                else
                  do
                    if Type == "Target" then
                      local Targetting = false
                      if Targetting == false then
                        ZTarget = hit.Parent.Torso
                        coroutine.resume(coroutine.create(function(Part)
    so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
    swait(5)
    so("http://www.roblox.com/asset/?id=15666462", Part, 1, 1.5)
  end
), ZTarget)
                        local TargHum = ZTarget.Parent:findFirstChild("Humanoid")
                        local targetgui = Instance.new("BillboardGui")
                        targetgui.Parent = ZTarget
                        targetgui.Size = UDim2.new(10, 100, 10, 100)
                        local targ = Instance.new("ImageLabel")
                        targ.Parent = targetgui
                        targ.BackgroundTransparency = 1
                        targ.Image = "rbxassetid://4834067"
                        targ.Size = UDim2.new(1, 0, 1, 0)
                        cam.CameraType = "Scriptable"
                        cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                        local dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
                        workspace.CurrentCamera.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                        Targetting = true
                        RocketTarget = ZTarget
                        for i = 1, Property do
                          if Humanoid.Health > 0 and Character.Parent ~= nil and TargHum.Health > 0 and TargHum.Parent ~= nil and Targetting == true then
                            swait()
                          end
                          cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position)
                          dir = Vector3.new(cam.CoordinateFrame.lookVector.x, 0, cam.CoordinateFrame.lookVector.z)
                          cam.CoordinateFrame = CFrame.new(Head.CFrame.p, ZTarget.Position) * cf(0, 5, 10) * euler(-0.3, 0, 0)
                        end
                        Targetting = false
                        RocketTarget = nil
                        targetgui.Parent = nil
                        cam.CameraType = "Custom"
                      end
                    end
                    do
                      local debounce = Instance.new("BoolValue")
                      debounce.Name = "DebounceHit"
                      debounce.Parent = hit.Parent
                      debounce.Value = true
                      game:GetService("Debris"):AddItem(debounce, Delay)
                      c = Instance.new("ObjectValue")
                      c.Name = "creator"
                      c.Value = Player
                      c.Parent = h
                      game:GetService("Debris"):AddItem(c, 0.5)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

ShowDamage = function(Pos, Text, Time, Color)
  local Rate = 0.033333333333333
  if not Pos then
    local Pos = Vector3.new(0, 0, 0)
  end
  local Text = Text or ""
  local Time = Time or 2
  if not Color then
    local Color = Color3.new(1, 0, 0)
  end
  local EffectPart = part("Custom", workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", vt(0, 0, 0))
  EffectPart.Anchored = true
  local BillboardGui = Instance.new("BillboardGui")
  BillboardGui.Size = UDim2.new(3, 0, 3, 0)
  BillboardGui.Adornee = EffectPart
  local TextLabel = Instance.new("TextLabel")
  TextLabel.BackgroundTransparency = 1
  TextLabel.Size = UDim2.new(1, 0, 1, 0)
  TextLabel.Text = Text
  TextLabel.TextColor3 = Color
  TextLabel.TextScaled = true
  TextLabel.Font = Enum.Font.ArialBold
  TextLabel.Parent = BillboardGui
  BillboardGui.Parent = EffectPart
  game.Debris:AddItem(EffectPart, Time + 0.1)
  EffectPart.Parent = game:GetService("Workspace")
  Delay(0, function()
    local Frames = Time / Rate
    for Frame = 1, Frames do
      wait(Rate)
      local Percent = Frame / Frames
      EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
      TextLabel.TextTransparency = Percent
    end
    if EffectPart and EffectPart.Parent then
      EffectPart:Destroy()
    end
  end
)
end

attackone = function()
  attack = true
  local con = LeftLeg.Touched:connect(function(hit)
    Damagefunc(hit, 15, 20, math.random(5, 15), "Normal", RootPart, 0.2, 1)
  end
)
  so("http://roblox.com/asset/?id=200632211", LeftLeg, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-50), math.rad(0), math.rad(-90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(50), math.rad(0), math.rad(20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(20), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
  end
  attack = false
  con:disconnect()
end

digging = false
Dig = function()
  attack = true
  Humanoid.WalkSpeed = 0
  so("http://roblox.com/asset/?id=200632211", LeftLeg, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(20), math.rad(200)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-200)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    handleweld2.C0 = clerp(handleweld2.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
  end
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, 0, 0), 50, 100, 50, 0.5, 1, 0.5, 0.06)
  MagniDamage(Torso, Torso, 20, 5, 10, 0, "Normal", RootPart)
  so("http://www.roblox.com/asset/?id=161806439", Part, 1, 0.7)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 20, 200, 20, 0.5, 5, 0.5, 0.06)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 1, 100, 1, 0, 1, 0.06)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 1, 100, 2, 0, 2, 0.06)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(30), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-30), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    handleweld2.C0 = clerp(handleweld2.C0, cf(-1, -1, 0) * angles(math.rad(80), math.rad(0), math.rad(80)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(20), math.rad(200)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-200)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    handleweld2.C0 = clerp(handleweld2.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
  end
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 50, 100, 50, 0.5, 1, 0.5, 0.06)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 20, 200, 20, 0.5, 5, 0.5, 0.06)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 1, 100, 1, 0, 1, 0.06)
  MagniDamage(Torso, Torso, 20, 5, 10, 0, "Normal", RootPart)
  so("http://www.roblox.com/asset/?id=161806439", Part, 1, 0.8)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 1, 100, 2, 0, 2, 0.06)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(30), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-30), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    handleweld2.C0 = clerp(handleweld2.C0, cf(-1, -1, 0) * angles(math.rad(80), math.rad(0), math.rad(80)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(20), math.rad(200)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-200)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    handleweld2.C0 = clerp(handleweld2.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(80)), 0.3)
  end
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 50, 100, 50, 0.5, 1, 0.5, 0.06)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 20, 200, 20, 0.5, 5, 0.5, 0.06)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 1, 100, 1, 0, 1, 0.06)
  MagniDamage(Torso, Torso, 20, 5, 10, 0, "Normal", RootPart)
  so("http://www.roblox.com/asset/?id=161806439", Part, 1, 0.9)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 1, 100, 2, 0, 2, 0.06)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(30), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-30), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    handleweld2.C0 = clerp(handleweld2.C0, cf(-1, -1, 0) * angles(math.rad(80), math.rad(0), math.rad(80)), 0.3)
  end
  coroutine.resume(coroutine.create(function()
    for i,v in pairs(Character:children()) do
      if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
        v.Transparency = 1
      end
      if v:IsA("Hat") then
        v.Handle.Transparency = 1
      end
      Head.face.Transparency = 1
    end
    for i,v in pairs(m:children()) do
      if v:IsA("BasePart") then
        v.Transparency = 1
      end
    end
  end
))
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 50, 100, 50, 0.5, 1, 0.5, 0.03)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 20, 200, 20, 0.5, 5, 0.5, 0.03)
  MagniDamage(Torso, Torso, 20, 5, 10, 0, "Normal", RootPart)
  so("http://www.roblox.com/asset/?id=161806439", Part, 1, 1)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 1, 100, 1, 0, 1, 0.03)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 1, 100, 2, 0, 2, 0.03)
  digging = true
  Humanoid.WalkSpeed = 8
  attack = false
end

Digtimate = function()
  attack = true
  digging = true
  Humanoid.WalkSpeed = 0
  so("http://roblox.com/asset/?id=200632211", LeftLeg, 1, 1)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(20), math.rad(200)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(-200)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    handleweld2.C0 = clerp(handleweld2.C0, cf(-1, -1, 0) * angles(math.rad(80), math.rad(0), math.rad(80)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, -1) * angles(math.rad(30), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(30), math.rad(0)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-30), math.rad(0)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
  end
  coroutine.resume(coroutine.create(function()
    for i,v in pairs(Character:children()) do
      if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
        v.Transparency = 1
      end
      if v:IsA("Hat") then
        v.Handle.Transparency = 1
      end
      Head.face.Transparency = 1
    end
    for i,v in pairs(m:children()) do
      if v:IsA("BasePart") then
        v.Transparency = 1
      end
    end
  end
))
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 50, 100, 50, 0.5, 1, 0.5, 0.03)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 20, 200, 20, 0.5, 5, 0.5, 0.03)
  MagniDamage(Torso, Torso, 20, 5, 10, 0, "Normal", RootPart)
  so("http://www.roblox.com/asset/?id=161806439", Part, 1, 1)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 1, 100, 1, 0, 1, 0.03)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 1, 100, 2, 0, 2, 0.03)
  Humanoid.WalkSpeed = 16
  for i = 0, 1, 0.1 do
    swait()
    MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 0, 100, 0.5, 1, 0.5, 0.08)
    Torso.Velocity = RootPart.CFrame.lookVector * 50
  end
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 50, 100, 50, 0.5, 1, 0.5, 0.03)
  so("http://roblox.com/asset/?id=240429289", Hitbox, 1, 0.7)
  MagniDamage(RootPart, RootPart, 10, 10, 20, 0, "Normal", RootPart)
  for i = 0, 1, 0.1 do
    swait()
    MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 0, 100, 0.5, 1, 0.5, 0.08)
    Torso.Velocity = RootPart.CFrame.lookVector * 50
  end
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 50, 100, 50, 0.5, 1, 0.5, 0.03)
  MagniDamage(RootPart, RootPart, 10, 10, 20, 0, "Normal", RootPart)
  so("http://roblox.com/asset/?id=240429289", Hitbox, 1, 0.7)
  for i = 0, 1, 0.1 do
    swait()
    MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 0, 100, 0.5, 1, 0.5, 0.08)
    Torso.Velocity = RootPart.CFrame.lookVector * 50
  end
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 50, 100, 50, 0.5, 1, 0.5, 0.03)
  MagniDamage(RootPart, RootPart, 10, 10, 20, 0, "Normal", RootPart)
  so("http://roblox.com/asset/?id=240429289", Hitbox, 1, 0.7)
  for i = 0, 1, 0.1 do
    swait()
    MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 0, 100, 0.5, 1, 0.5, 0.08)
    Torso.Velocity = RootPart.CFrame.lookVector * 50
  end
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 50, 100, 50, 0.5, 1, 0.5, 0.03)
  MagniDamage(RootPart, RootPart, 10, 10, 20, 0, "Normal", RootPart)
  so("http://roblox.com/asset/?id=240429289", Hitbox, 1, 0.7)
  for i = 0, 1, 0.1 do
    swait()
    MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 0, 100, 0.5, 1, 0.5, 0.08)
    Torso.Velocity = RootPart.CFrame.lookVector * 50
  end
  coroutine.resume(coroutine.create(function()
    for i,v in pairs(Character:children()) do
      if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
        v.Transparency = 0
      end
      if v:IsA("Hat") then
        v.Handle.Transparency = 0
      end
      Head.face.Transparency = 0
    end
    for i,v in pairs(m:children()) do
      if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
        v.Transparency = 0
      end
    end
  end
))
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 50, 100, 50, 0.5, 1, 0.5, 0.06)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 20, 200, 20, 0.5, 5, 0.5, 0.06)
  so("http://roblox.com/asset/?id=240429289", Hitbox, 1, 0.5)
  MagniDamage(RootPart, RootPart, 20, 10, 20, 10, "Knockdown", RootPart)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 1, 100, 1, 0, 1, 0.06)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 1, 100, 2, 0, 2, 0.06)
  MagicRing(BrickColor.new("Brown"), RootPart.CFrame * angles(math.rad(95), math.rad(0), math.rad(0)) + vt(0, -3, 0), 15, 15, 12, 5, 5, 8, 0.07)
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 13) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(20), math.rad(-200)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(200)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    handleweld2.C0 = clerp(handleweld2.C0, cf(-1, -1, 0) * angles(math.rad(80), math.rad(0), math.rad(80)), 0.3)
  end
  digging = false
  attack = false
end

Surprise = function()
  attack = true
  so("http://roblox.com/asset/?id=200632211", LeftLeg, 1, 1)
  coroutine.resume(coroutine.create(function()
    for i,v in pairs(Character:children()) do
      if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
        v.Transparency = 0
      end
      if v:IsA("Hat") then
        v.Handle.Transparency = 0
      end
      Head.face.Transparency = 0
    end
    for i,v in pairs(m:children()) do
      if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
        v.Transparency = 0
      end
    end
  end
))
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 50, 100, 50, 0.5, 1, 0.5, 0.06)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 20, 200, 20, 0.5, 5, 0.5, 0.06)
  so("http://roblox.com/asset/?id=240429289", Hitbox, 1, 0.666)
  MagniDamage(Torso, Torso, 20, 20, 30, 50, "Knockdown", RootPart)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 1, 100, 1, 0, 1, 0.06)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 1, 100, 2, 0, 2, 0.06)
  MagicRing(BrickColor.new("Brown"), RootPart.CFrame * angles(math.rad(90), math.rad(0), math.rad(0)) + vt(0, -3, 0), 15, 15, 1, 5, 5, 0, 0.07)
  for i = 0, 1, 0.05 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 13) * angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(20), math.rad(-200)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(0), math.rad(200)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(0)) * angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
    handleweld2.C0 = clerp(handleweld2.C0, cf(-1, -1, 0) * angles(math.rad(80), math.rad(0), math.rad(80)), 0.3)
  end
  digging = false
  attack = false
  Humanoid.WalkSpeed = 16
end

attacktwo = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(-80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(70)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(140), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-50), math.rad(-5)), 0.3)
    handleweld2.C0 = clerp(handleweld2.C0, cf(-1, -1, 0) * angles(math.rad(70), math.rad(50), math.rad(100)), 0.3)
  end
  so("http://roblox.com/asset/?id=200632211", LeftArm, 1, 0.9)
  local con = handle2.Touched:connect(function(hit)
    Damagefunc(hit, 15, 20, math.random(5, 15), "Normal", RootPart, 0.2, 1)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-140), math.rad(-5)), 0.3)
  end
  attack = false
  con:disconnect()
end

attackthree = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(90)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(90)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(140), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-50), math.rad(-5)), 0.3)
    handleweld2.C0 = clerp(handleweld2.C0, cf(-1, -1, 0) * angles(math.rad(70), math.rad(50), math.rad(100)), 0.3)
  end
  so("http://roblox.com/asset/?id=200632211", LeftArm, 1, 0.9)
  local con = handle2.Touched:connect(function(hit)
    Damagefunc(hit, 15, 20, math.random(5, 15), "Normal", RootPart, 0.2, 1)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(-80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-140), math.rad(-5)), 0.3)
  end
  attack = false
  con:disconnect()
end

MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

MagicRing = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 2)
  coroutine.resume(coroutine.create(function(Part, Mesh, num)
    for i = 0, 1, delay do
      swait()
      Part.Transparency = i
      Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
    end
    Part.Parent = nil
  end
), prt, msh, (math.random(0, 1) + math.random()) / 5)
end

MagicCircle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, Character, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
  table.insert(Effects, {prt, "Cylinder", delay, x3, y3, z3, msh})
end

MagicBlock = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
  local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt())
  prt.Anchored = true
  prt.CFrame = cframe
  msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
  game:GetService("Debris"):AddItem(prt, 5)
  table.insert(Effects, {prt, "Block1", delay, x3, y3, z3})
end

Piledriver = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 1, 0) * angles(math.rad(-50), math.rad(30), math.rad(40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(80)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(-50), math.rad(140), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-50), math.rad(-50), math.rad(-5)), 0.3)
  end
  so("http://roblox.com/asset/?id=200632211", LeftArm, 1, 0.9)
  local con = handle2.Touched:connect(function(hit)
    Damagefunc(hit, 15, 20, math.random(5, 15), "Normal", RootPart, 0.2, 1)
  end
)
  for i = 0, 1, 0.2 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.5, 0) * angles(math.rad(50), math.rad(-30), math.rad(-40)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(70), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(50), math.rad(-100), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(50), math.rad(50), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(50), math.rad(-140), math.rad(-5)), 0.3)
  end
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, -0.8, 0) * angles(math.rad(80), math.rad(-30), math.rad(-80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(70), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(80), math.rad(50), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(80), math.rad(-140), math.rad(-5)), 0.3)
  end
  MagicRing(BrickColor.new("Brown"), RootPart.CFrame * angles(math.rad(90), math.rad(0), math.rad(0)) + vt(0, -3, 0), 15, 15, 1, 5, 5, 0, 0.07)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 50, 100, 50, 0.5, 1, 0.5, 0.06)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 20, 200, 20, 0.5, 5, 0.5, 0.06)
  so("http://roblox.com/asset/?id=240429891", Hitbox, 1, 0.7)
  so("http://roblox.com/asset/?id=240429289", Hitbox, 1, 0.6)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 1, 100, 1, 0, 1, 0.06)
  MagniDamage(Torso, Torso, 20, 10, 20, 30, "Normal", RootPart)
  MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 100, 1, 100, 2, 0, 2, 0.06)
  attack = false
  con:disconnect()
end

JumpSpin = function()
  attack = true
  for i = 0, 1, 0.06 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(-50)), 0.1)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(-5), math.rad(50)), 0.1)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(70), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(0.3, 0.5, -1) * angles(math.rad(0), math.rad(-10), math.rad(100)), 0.1)
    handleweld2.C0 = clerp(handleweld2.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(120)), 0.1)
  end
  con1 = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 10, 30, math.random(10, 20), "Knockdown", RootPart, 0.2, 1)
  end
)
  for i = 0, 1, 0.5 do
    so("http://www.roblox.com/asset/?id=203691447", Hitbox, 1, 1)
    swait()
    for i = 0, 2, 0.1 do
      swait()
      Torso.Velocity = RootPart.CFrame.lookVector * 20
      RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 4) * euler(0, 1.2, math.rad(0 + 360 * i)), 0.2)
    end
  end
  attack = false
  con1:disconnect()
end

attackfour = function()
  attack = true
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(70), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -0.5) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(140), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-50), math.rad(-5)), 0.3)
  end
  so("http://roblox.com/asset/?id=240429891", Hitbox, 1, 0.9)
  so("http://roblox.com/asset/?id=240429289", Hitbox, 1, 0.8)
  local con = Hitbox.Touched:connect(function(hit)
    Damagefunc(hit, 25, 40, math.random(10, 15), "Normal", RootPart, 0.2, 1)
  end
)
  for i = 0, 1, 0.1 do
    swait()
    RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(-80)), 0.3)
    Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
    RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(70), math.rad(20)), 0.3)
    LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(-90)), 0.3)
    RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(50), math.rad(-10)), 0.3)
    LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-140), math.rad(-5)), 0.3)
    PBNeedleweld.C0 = clerp(PBNeedleweld.C0, cf(0, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
    PBPoleweld.C0 = clerp(PBPoleweld.C0, cf(0, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
    PBPart1weld.C0 = clerp(PBPart1weld.C0, cf(0, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
    PBPart2weld.C0 = clerp(PBPart2weld.C0, cf(0, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
    Hitboxweld.C0 = clerp(Hitboxweld.C0, cf(0, -1, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
  end
  attack = false
  con:disconnect()
end

ob1u = function()
end

ob1d = function()
  if attack == false and attacktype == 1 and digging == false then
    attacktype = 2
    attackone()
  else
    if attack == false and attacktype == 2 and digging == false then
      attacktype = 3
      attacktwo()
    else
      if attack == false and attacktype == 3 and digging == false then
        attacktype = 4
        attackthree()
      else
        if attack == false and attacktype == 4 and digging == false then
          attacktype = 1
          attackfour()
        end
      end
    end
  end
end

moving = false
keyup = function(k)
  k = k:lower()
  if k == "w" and digging == true then
    moving = false
  else
    if k == "a" and digging == true then
      moving = false
    else
      if k == "s" and digging == true then
        moving = false
      else
        if k == "d" and digging == true then
          moving = false
        end
      end
    end
  end
end

key = function(k)
  k = k:lower()
  if k == "w" and digging == true then
    moving = true
  else
    if k == "a" and digging == true then
      moving = true
    else
      if k == "s" and digging == true then
        moving = true
      else
        if k == "d" and digging == true then
          moving = true
        end
      end
    end
  end
  if k == "z" and attack == false and digging == false and mana >= 10 then
    mana = mana - 10
    JumpSpin()
  else
    if k == "x" and attack == false and digging == false and mana >= 25 then
      Piledriver()
      mana = mana - 25
    else
      if k == "c" and attack == false and digging == false and mana >= 30 then
        Dig()
        mana = mana - 30
      else
        if k == "c" and attack == false and digging == true and mana >= 5 then
          Surprise()
          mana = mana - 5
        else
          if k == "v" and attack == false and digging == false and mana >= 50 then
            Digtimate()
            mana = mana - 50
          end
        end
      end
    end
  end
end

Bin = Instance.new("HopperBin", Player.Backpack)
ds = function(mouse)
end

s = function(mouse)
  print("Black Magic Haven!!!")
  mouse.Button1Down:connect(function()
    ob1d(mouse)
  end
)
  mouse.Button1Up:connect(function()
    ob1u(mouse)
  end
)
  mouse.KeyDown:connect(key)
  mouse.KeyUp:connect(keyup)
end

Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
local sine = 0
local change = 1
local val = 0
local mananum = 0
while 1 do
  pwait()
  sine = sine + change
  local torvel = RootPart.Velocity * Vector3.new(1, 0, 1).magnitude
  local velderp = RootPart.Velocity.y
  hitfloor = rayCast(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 4, Character)
  if equipped == true or equipped == false then
    if attack == false then
      idle = idle + 1
    else
      idle = 0
    end
    if ((500 <= idle and attack ~= false) or 1 < RootPart.Velocity.y) and hitfloor == nil then
      Anim = "Jump"
      if attack == false then
        RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(-5), math.rad(0), math.rad(0)), 0.3)
        Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(5), math.rad(0), math.rad(0)), 0.3)
        RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
        LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
        RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(10), math.rad(90), math.rad(0)), 0.3)
        LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-15), math.rad(-90), math.rad(0)), 0.3)
        PBNeedleweld.C0 = clerp(PBNeedleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
        PBPoleweld.C0 = clerp(PBPoleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
        PBPart1weld.C0 = clerp(PBPart1weld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
        PBPart2weld.C0 = clerp(PBPart2weld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
        Hitboxweld.C0 = clerp(Hitboxweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
      end
    else
      if RootPart.Velocity.y < -1 and hitfloor == nil then
        Anim = "Fall"
        if attack == false then
          RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
          Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(20), math.rad(0), math.rad(0)), 0.3)
          RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
          LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
          RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(20), math.rad(90), math.rad(0)), 0.3)
          LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(-20), math.rad(-90), math.rad(0)), 0.3)
          PBNeedleweld.C0 = clerp(PBNeedleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
          PBPoleweld.C0 = clerp(PBPoleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
          PBPart1weld.C0 = clerp(PBPart1weld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
          PBPart2weld.C0 = clerp(PBPart2weld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
          Hitboxweld.C0 = clerp(Hitboxweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
        end
      else
        if hitfloor ~= nil then
          Anim = "Idle"
          if digging == true and moving == true then
            MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 50, 1, 50, 0.5, 0.5, 0.5, 0.1)
          end
          if attack == false then
            RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(5), math.rad(0), math.rad(-20)), 0.3)
            Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(20)), 0.3)
            RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(70), math.rad(20)), 0.3)
            LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
            RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-10)), 0.3)
            LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-70), math.rad(-5)), 0.3)
            PBNeedleweld.C0 = clerp(PBNeedleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
            PBPoleweld.C0 = clerp(PBPoleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
            handleweld2.C0 = clerp(PBPoleweld.C0, cf(0, 0, 0) * angles(math.rad(80), math.rad(0), math.rad(-180)), 0.2)
            PBPart1weld.C0 = clerp(PBPart1weld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
            PBPart2weld.C0 = clerp(PBPart2weld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
            Hitboxweld.C0 = clerp(Hitboxweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
          end
        else
          if 2 < torvel and hitfloor ~= nil then
            Anim = "Walk"
            if digging == true then
              MagicCircle(BrickColor.new("Brown"), RootPart.CFrame + vt(0, -3, 0), 50, 1, 50, 0.5, 0, 0.5, 0.06)
            end
            if attack == false then
              change = 3
              RootJoint.C0 = clerp(RootJoint.C0, RootCF * cf(0, 0, 0) * angles(math.rad(10), math.rad(0), math.rad(0)), 0.3)
              Torso.Neck.C0 = clerp(Torso.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
              RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(50), math.rad(70), math.rad(20)), 0.3)
              LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
              RH.C0 = clerp(RH.C0, cf(1, -1, 0) * angles(math.rad(0), math.rad(90), math.rad(-15)), 0.3)
              LH.C0 = clerp(LH.C0, cf(-1, -1, 0) * angles(math.rad(0), math.rad(-90), math.rad(-15)), 0.3)
              PBNeedleweld.C0 = clerp(PBNeedleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
              PBPoleweld.C0 = clerp(PBPoleweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
              PBPart1weld.C0 = clerp(PBPart1weld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
              PBPart2weld.C0 = clerp(PBPart2weld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
              Hitboxweld.C0 = clerp(Hitboxweld.C0, cf(0, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
            end
          end
        end
      end
    end
  end
  if 0 < #Effects then
    for e = 1, #Effects do
      if Effects[e] ~= nil then
        local Thing = Effects[e]
        if Thing ~= nil then
          local Part = Thing[1]
          local Mode = Thing[2]
          local Delay = Thing[3]
          local IncX = Thing[4]
          local IncY = Thing[5]
          local IncZ = Thing[6]
          if Thing[1].Transparency <= 1 then
            if Thing[2] == "Block1" then
              Thing[1].CFrame = Thing[1].CFrame * euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
              Mesh = Thing[1].Mesh
              Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
              Thing[1].Transparency = Thing[1].Transparency + Thing[3]
            else
              if Thing[2] == "Cylinder" then
                Mesh = Thing[1].Mesh
                Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              else
                if Thing[2] == "Blood" then
                  Mesh = Thing[7]
                  Thing[1].CFrame = Thing[1].CFrame * cf(0, 0.5, 0)
                  Mesh.Scale = Mesh.Scale + vt(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Elec" then
                    Mesh = Thing[1].Mesh
                    Mesh.Scale = Mesh.Scale + vt(Thing[7], Thing[8], Thing[9])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  else
                    if Thing[2] == "Disappear" then
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    end
                  end
                end
              end
            end
          else
            Part.Parent = nil
            table.remove(Effects, e)
          end
        end
      end
    end
  end
  do
    do
      fenbarmana2:TweenSize((UDim2.new(4 * mana / 100, 0, 0.2, 0)), nil, 1, 0.4, true)
      fenbarmana4.Text = "[Strength]  <{[  " .. mana .. "  ]}> [Strength]"
      if 100 <= mana then
        mana = 100
      else
        if attack == false then
          if mananum <= 8 then
            mananum = mananum + 1
          else
            mananum = 0
            mana = mana + 1
          end
        end
      end
      if digging ~= false or Torso.Transparency == 1 then
        coroutine.resume(coroutine.create(function()
  for i,v in pairs(Character:children()) do
    if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
      v.Transparency = 0
    end
    if v:IsA("Hat") then
      v.Handle.Transparency = 0
    end
    Head.face.Transparency = 0
  end
  for i,v in pairs(m:children()) do
    if v:IsA("BasePart") then
      v.Transparency = 0
    end
  end
end
))
      end
      -- DECOMPILER ERROR at PC4835: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
end

