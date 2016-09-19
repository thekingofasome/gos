--jhin
myHero.charName ~= "Jhin" then return end --Character

--MIXLIB
if FileExist(COMMON_PATH.."MixLib.lua") then --MIXLIB
 require('MixLib')
else
 PrintChat("MixLib not found. Please wait for download.")
 DownloadFileAsync("https://raw.githubusercontent.com/VTNEETS/NEET-Scripts/master/MixLib.lua", COMMON_PATH.."MixLib.lua", function() PrintChat("Downloaded MixLib. Please 2x F6!") return end)
end 

require("OpenPredict")										--Loads OpenPredict (opotional)

--MENU
local JMENU = Menu("Jhin", "Jhin")						-			-Create a Menu and called JMENU (Users sees "Jhin")

--COMBO
JMENU:SubMenu("Combo", "Combo")							    			--Create a New SubMenu and call it Combo
JMENU.Combo:Boolean("Q", "Use Q", true)									--Add a button to toggle the usage of Q
JMENU.Combo:Boolean("W", "Use W", true)									--Add a button to toggle the usage of W
JMENU.Combo:Boolean("R", "Use R", true)									--Add a button to toggle the usage of R

--KS
JMENU:SubMenu('KS', 'Kill Steal')
JMENU.KS:Boolean('KSQ', 'Killsteal with Q', true)
JMENU.KS:Boolean('KSE', 'Killsteal with E', true)
JMENU.KS:Boolean("KSI", "Killsteal with I", true)

--LANE CLEAR
JMENU:SubMenu('LC', 'Lane Clear')
JMENU.LC:Boolean('Q', 'Use Q', true)
JMENU.LC:Slider('ALHM', 'Minimun mana to auto last hit %', 60, 0, 100, 2)

JMENU:SubMenu('DR', 'Drawings')
JMenu.DR:Drawings:Boolean("DrawQ", "Draw Q's Range", true)
JMenu.DR:Drawings:Boolean("DrawW", "Draw W's Range", true)
JMenu.DR:Drawings:Boolean("DrawE", "Draw E's Range", true)
JMenu.DR:Drawings:Boolean("DrawR", "Draw R's Range", true)

OnDraw (function (myHero)
	local pos = GetOrigin(myHero)
	if JMenu.DR:Drawings.DrawQ:Value() then DrawCircle(pos,600,1,60,GoS.Red) end
	if JMenu.DR:Drawings.DrawW:Value() then DrawCircle(pos,2500,1,60,GoS.Yellow) end
	if JMenu.DR:Drawings.DrawE:Value() then DrawCircle(pos,750,1,60,GoS.Green) end
	if JMenu.DR:Drawings.DrawR:Value() then DrawCircle(pos,3500,1,60,GoS.Cyan) end
end)

PrintChat(string.format("<font color='#00FFFF'>simpole jhin:</font> <font color='#FFFFFF'> do good by tupac </font>"))
