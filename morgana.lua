--CHAMPION
myHero.charName ~= "Morgana" then return end --Character



--MIXLIB
if FileExist(COMMON_PATH.."MixLib.lua") then --MIXLIB
 require('MixLib')
else
 PrintChat("MixLib not found. Please wait for download.")
 DownloadFileAsync("https://raw.githubusercontent.com/VTNEETS/NEET-Scripts/master/MixLib.lua", COMMON_PATH.."MixLib.lua", function() PrintChat("Downloaded MixLib. Please 2x F6!") return end)
end 

--OPENPREDICT
require('OpenPredict')

--MENU
local MorgMenu = Menu("Morgana", "Morgana")						--Create a Menu and called MorgMenu (Users sees "Morgana")
MorgMenu:SubMenu("Combo", "Combo")							    --Create a New SubMenu and call it Combo
MorgMenu.Combo:Boolean("Q", "Use Q", true)						--Add a button to toggle the usage of Q
MorgMenu.Combo:Boolean("W", "Use W", true)						--Add a button to toggle the usage of W
MorgMenu.Combo:Boolean("R", "Use R", true)						--Add a button to toggle the usage of R
MorgMenu.Combo:Boolean("KSW", "Killsteal with W", true)		    --Add a button to killsteal with W

local MorgQ = {delay = 0.2, range = 1175, radius = 65, speed = 1200}	--Table for Morg Q
local MorgW = {delay = 0.5, range = 900, radius = 225, speed = 2200}	--TABLE for Morg W

OnTick(function(myHero)
	local target = GetCurrentTarget()

	if Mix:Mode() == "Combo"
