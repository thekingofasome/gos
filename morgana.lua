--Morgana
if GetObjectName(GetMyHero()) ~= "Alistar" then return end

if FileExist(COMMON_PATH.."MixLib.lua") then
 require('MixLib')
else
 PrintChat("MixLib not found. Please wait for download.")
 DownloadFileAsync("https://raw.githubusercontent.com/VTNEETS/NEET-Scripts/master/MixLib.lua", COMMON_PATH.."MixLib.lua", function() PrintChat("Downloaded MixLib. Please 2x F6!") return end)
end 

require('OpenPredict')

local MorgMenu = Menu("Morgana", "Morgana")
MorgMenu:SubMenu("Combo", "Combo")		
MorgMenu.Combo:Boolean("Q", "Use Q", true)				
MorgMenu.Combo:Boolean("W", "Use W", true)	
MorgMenu.Combo:Boolean("E", "USE E", true)
MorgMenu.Combo:Boolean("R", "USE R", true)

MorgMenu:SubMenu("LC", "Lane Clear")
MorgMenu.LC:Boolean("W", "Use W", true)
MorgMenu.LC:Slider("MM", "Minimum mana to cast lane clear", 60, 100, 2)

MorgMenu:SubMenu("HC", "Hit chance of spell")
MorgMenu.HC:Slider("QHC", "Hit chance of Q", 60, 0, 100, 2)
MorgMenu.HC:Slider("WHC", "Hit chance of W", 60, 0, 100, 2)

MorgMenu:SubMenu("DW", "Drawings")
MorgMenu.DW:Boolean("Q", "Draw Q Range", true)
MorgMenu.DW:Boolean("W", "Draw W Range", true)
MorgMenu.DW:Boolean("E", "Draw e Range", true)
MorgMenu.DW:Boolean("R", "Draw R Range", true)
MorgMenu.DW:Boolean("DWR", "Draw When Skills are ready", true)

local MorgQ = {delay = 0.25, range = 1175, radius = 65, speed = 1200}
local MorgW = {delay = 0.25, range = 900, radius = 225, speed = math.huge}	

OnDraw(function()
	if MorgMenu.DW.DWR:Value() then

		if Ready(_Q) and MorgMenu.DW.Q:Value() then
			DrawCircle(myHero,GetCastRange(myHero,_Q),1,25,GoS.Blue)
		end

		if Ready(_W) and MorgMenu.DW.W:Value() then
			DrawCircle(myHero,GetCastRange(myHero,_W),1,25,GoS.Pink)
		end

		if Ready(_E) and MorgMenu.DW.E:Value() then
			DrawCircle(myHero,GetCastRange(myHero,_E),1,25,GoS.Green)
		end

		if Ready(_R) and MorgMenu.DW.R:Value() then
			DrawCircle(myHero,GetCastRange(myHero,_R),1,25,GoS.Yellow)
		end

	else

		if MorgMenu.DW.Q:Value() then
			DrawCircle(myHero,GetCastRange(myHero,_Q),1,25,GoS.Blue)
		end

		if MorgMenu.DW.W:Value() then
			DrawCircle(myHero,GetCastRange(myHero,_W),1,25,GoS.Pink)
		end

		if MorgMenu.DW.E:Value() then
			DrawCircle(myHero,GetCastRange(myHero,_E),1,25,GoS.Green)
		end

		if MorgMenu.DW.R:Value() then
			DrawCircle(myHero,GetCastRange(myHero,_R),1,25,GoS.Yellow)
		end
	end
end)

