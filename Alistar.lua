--Alistar
if GetObjectName(GetMyHero()) ~= "Alistar" then return end

if FileExist(COMMON_PATH.."MixLib.lua") then
 require('MixLib')
else
 PrintChat("MixLib not found. Please wait for download.")
 DownloadFileAsync("https://raw.githubusercontent.com/VTNEETS/NEET-Scripts/master/MixLib.lua", COMMON_PATH.."MixLib.lua", function() PrintChat("Downloaded MixLib. Please 2x F6!") return end)
end 

local AM = Menu("Ali", "Alistar")
AM:SubMenu("Combo", "Combo")
AM.Combo:Boolean("Q", "Use Q", true)
AM.Combo:Boolean("W", "Use W", true)
AM.Combo:Boolean("E", "Use E", true)
AM.Combo:Boolean("R", "Use R", true)

AM:SubMenu("DW", "Drawings")
AM.DW:Boolean("DQ", "Draw Q Range", true)
AM.DW:Boolean("DW", "Draw W Range", true)
AM.DW:Boolean("DE", "Draw E Range", true)
AM.DW:Boolean("DR", "Draw R Range", true)
AM.DW:Boolean("DWR", "Draw WHen Skills Are Ready", true)

OnDraw(function()
	if AM.DW.DWR:Value() then

		if Ready(_Q) and AM.DW.Q:Value() then
			DrawCircle(myHero,GetCastRange(myHero,_Q),1,25,GoS.Blue)
		end

		if Ready(_W) and AM.DW.W:Value() then
			DrawCircle(myHero,GetCastRange(myHero,_W),1,25,GoS.Pink)
		end

		if Ready(_E) and AM.DW.E:Value() then
			DrawCircle(myHero,GetCastRange(myHero,_E),1,25,GoS.Green)
		end

		if Ready(_R) and AM.DW.R:Value() then
			DrawCircle(myHero,GetCastRange(myHero,_R),1,25,GoS.Yellow)
		end

	else

		if AM.DW.Q:Value() then
			DrawCircle(myHero,GetCastRange(myHero,_Q),1,25,GoS.Blue)
		end

		if AM.DW.W:Value() then
			DrawCircle(myHero,GetCastRange(myHero,_W),1,25,GoS.Pink)
		end

		if AM.DW.E:Value() then
			DrawCircle(myHero,GetCastRange(myHero,_E),1,25,GoS.Green)
		end

		if AM.DW.R:Value() then
			DrawCircle(myHero,GetCastRange(myHero,_R),1,25,GoS.Yellow)
		end
	end
end)

OnTick(function (myHero)
	
	local target = GetCurrentTarget()
		
	if MixLib:Mode() == "Combo" then
		if AM.Combo.W:Value() and Ready(_W) and ValidTarget(target, 650) then
			CastTargetSpell(target , _Q .. _W)
		end
	end
end
