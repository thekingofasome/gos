--CHAMPION
if myHero.charName ~= "Morgana" then return end

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
local MorgMenu = Menu("Morgana", "Morgana")						-			-Create a Menu and called MorgMenu (Users sees "Morgana")
MorgMenu:SubMenu("Combo", "Combo")							    			--Create a New SubMenu and call it Combo
MorgMenu.Combo:Boolean("Q", "Use Q", true)									--Add a button to toggle the usage of Q
MorgMenu.Combo:Boolean("W", "Use W", true)									--Add a button to toggle the usage of W
MorgMenu.Combo:Boolean("R", "Use R", true)									--Add a button to toggle the usage of R
MorgMenu.Combo:Boolean("KSW", "Killsteal with W", true)		    			--Add a button to killsteal with W

local MorgQ = {delay = 0.25, range = 1175, radius = 65, speed = 1200}		--Table for Morg Q
local MorgW = {delay = 0.25, range = 900, radius = 225, speed = math.huge}	--TABLE for Morg W

OnTick(function(myHero)
	local target = GetCurrentTarget()

	if Mix:Mode() == "Combo" then

		--Q LOGIC
		if MorgMenu.Combo.Q:Value() and Ready(_Q) and ValidTarget(target, 1175) then
		--[[
				MorgMenu.Combo.Q:Value() returns true if the menu has been ticked
				Ready(_Q) returns true if we are able to cast Q now
				ValidTarget(target, 1175) returns true if the target can be attacked and is in a range of 1175 (Morg Q range)
			]]		
		if QPred.hitchance >= 0.6 
                                   CastSkillShot(_Q, predQ.castPos)
		end 	--Ends the W logic
 
		--W LOGIC
		if MorgMenu.Combo.W:Value() and Ready(_W) and ValidTarget(target, 900) then
			--[[
				MorgMenu.Combo.W:Value() returns true if the menu has been ticked
				Ready(_W) returns true if we are able to cast W now
				ValidTarget(target, 900) returns true if the target can be attacked and is in a range of 900 (Morg W range)
			]]
			local targetPos = GetOrigin(target)		--saves the XYZ coordinates of the target to the variable
			CastSkillShot(_W , targetPos)			--Since the W is a skillshot (select area), we have to cast it at a point on the ground (targetPos)
		end		--Ends the W logic

		--R LOGIC
		if MorgMenu.Combo.R:Value() and Ready(_R) and ValidTarget(target, 200) then		--Same check as Q/W
					CastSpell(_R , targetPos)
				end
			end
		end	--Ends the R logic
	end		--Ends the Combo Mode


		--ks part
			for _, enemy in pairs(GetEnemyHeroes()) do 		--This will cycle 5 times and pass one hero to enemy each cycle
		if MorgMenu.Combo.Q:Value() and MorgMenu.Combo.KSQ:Value() and Ready(_Q) and ValidTarget(enemy, 1175) then
			--[[
				Q Dmg Calc
				MAGIC DAMAGE: 80 / 135 / 190 / 245 / 300
				Level 0: 45
				Level 1: 80
				Level 2: 115 ...
				Formula 45 + 35 * CastLevel of Q + AP *0.8
				CalcDamage(startUnit, targetUnit, normalDamage, magicDamage)
			--]]
						if GetCurrentHP(enemy) < CalcDamage(myHero, enemy, 0, 45 + 55 * GetCastLevel(myHero,_Q) + GetBonusAP(myHero) * 0.9) then
				local QPred = GetLinearAOEPrediction(target, MorgQ, sourcePos)
				if QPred.hitchance >= 0.6 
				CastSkillShot(_Q, predQ.castPos)
			end										--End dmg check for Q
		end				--end basic check for Q
	end			--end KS
end)		--End script

print("Morgana loaded")	--Little message to show that the script has injected without breaking
