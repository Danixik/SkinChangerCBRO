--credits : unknown
local LocalPlayer = game:GetService("Players").LocalPlayer
local Client = getsenv(game.Players.LocalPlayer.PlayerGui.Client)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StarterGui = game:GetService('StarterGui')

StarterGui:SetCore('SendNotification', {
	Title = 'Unlock All',
	Text = 'Unlocked all skins',
	Duration = 5,
    Icon = "rbxthumb://type=Asset&id=8056423386&w=150&h=150"
})
wait(0.5)
local allSkins = {

	-- AK47
	{'AK47_Ace'},
	{'AK47_Toxic Nitro'},
	{'AK47_Bloodboom'},
	{'AK47_Clown'},
	{'AK47_Code Orange'},
	{'AK47_Eve'},
	{'AK47_Gifted'},
	{'AK47_Glo'},
	{'AK47_Godess'},
	{'AK47_Hallows'},
	{'AK47_Halo'},
	{'AK47_Hypersonic'},
	{'AK47_Inversion'},
	{'AK47_Jester'},
	{'AK47_Maker'},
	{'AK47_Mean Green'},
	{'AK47_Outlaws'},
	{'AK47_Outrunner'},
	{'AK47_Patch'},
	{'AK47_Plated'},
	{'AK47_Precision'},
	{'AK47_Quantum'},
	{'AK47_Quicktime'},
	{'AK47_Scapter'},
	{'AK47_Secret Santa'},
	{'AK47_Shooting Star'},
	{'AK47_Skin Committee'},
	{'AK47_Survivor'},
	{'AK47_Ugly Sweater'},
	{'AK47_VAV'},
	{'AK47_Variant Camo'},
	{'AK47_Yltude'},
	{'AK47_Scythe'},
	{'AK47_Galaxy Corpse'},
	{'AK47_Neonline'},

	-- AUG
	{'AUG_Chilly Night'},
	{'AUG_Mystique'},
	{'AUG_Dream Hound'},
	{'AUG_Enlisted'},
	{'AUG_Graffiti'},
	{'AUG_Homestead'},
	{'AUG_Maker'},
	{'AUG_NightHawk'},
	{'AUG_Phoenix'},
	{'AUG_Sunsthetic'},
	{'AUG_Soldier'},

	-- AWP
	{'AWP_Abaddon'},
	{'AWP_Autumness'},
	{'AWP_Blastech'},
	{'AWP_Bloodborne'},
	{'AWP_Coffin Biter'},
	{'AWP_Desert Camo'},
	{'AWP_Difference'},
	{'AWP_Dragon'},
	{'AWP_Forever'},
	{'AWP_Grepkin'},
	{'AWP_Hika'},
	{'AWP_Illusion'},
	{'AWP_Instinct'},
	{'AWP_JTF2'},
	{'AWP_Lunar'},
	{'AWP_Nerf'},
	{'AWP_Northern Lights'},
	{'AWP_Pear Tree'},
	{'AWP_Pink Vision'},
	{'AWP_Toxic Nitro'},
	{'AWP_Pinkie'},
	{'AWP_Quicktime'},
	{'AWP_Racer'},
	{'AWP_Regina'},
	{'AWP_Retroactive'},
	{'AWP_Scapter'},
	{'AWP_Silence'},
	{'AWP_Venomus'},
	{'AWP_Weeb'},
	{'AWP_Darkness'},
	{'AWP_Grim'},
	{'AWP_Oriental'},

	-- Bizon
	{'Bizon_Autumic'},
	{'Bizon_Festive'},
	{'Bizon_Oblivion'},
	{'Bizon_Saint Nick'},
	{'Bizon_Sergeant'},
	{'Bizon_Shattered'},

	-- CZ75-Auto
	{'CZ_Designed'},
	{'CZ_Festive'},
	{'CZ_Holidays'},
	{'CZ_Lightning'},
	{'CZ_Orange Web'},
	{'CZ_Spectre'},

	-- Meme Knives
	{'Banana_Stock'},
	{'Dildo_stock'},

	-- Bayonet
	{'Bayonet_Decor'},
	{'Bayonet_Aequalis'},
	{'Bayonet_Banner'},
	{'Bayonet_Candy Cane'},
	{'Bayonet_Consumed'},
	{'Bayonet_Cosmos'},
	{'Bayonet_Crimson Tiger'},
	{'Bayonet_Crow'},
	{'Bayonet_Delinquent'},
	{'Bayonet_Digital'},
	{'Bayonet_Easy-Bake'},
	{'Bayonet_Egg Shell'},
	{'Bayonet_Festive'},
	{'Bayonet_Frozen Dream'},
	{'Bayonet_Geo Blade'},
	{'Bayonet_Ghastly'},
	{'Bayonet_Goo'},
	{'Bayonet_Intertwine'},
	{'Bayonet_Marbleized'},
	{'Bayonet_Mariposa'},
	{'Bayonet_Naval'},
	{'Bayonet_Neonic'},
	{'Bayonet_RSL'},
	{'Bayonet_Racer'},
	{'Bayonet_Sapphire'},
	{'Bayonet_Silent Night'},
	{'Bayonet_Splattered'},
	{'Bayonet_Stock'},
	{'Bayonet_Topaz'},
	{'Bayonet_Tropical'},
	{'Bayonet_Twitch'},
	{'Bayonet_UFO'},
	{'Bayonet_Wetland'},
	{'Bayonet_Worn'},
	{'Bayonet_Wrapped'},
	{'Bayonet_Hallows'},

	-- Bearded Axe
	{'Bearded Axe_Beast'},
	{'Bearded Axe_Splattered'},

	-- Cleaver
	{'Cleaver_Spider'},
	{'Cleaver_Splattered'},

	-- Desert Eagle
	{'DesertEagle_Cold Truth'},
	{'DesertEagle_TC'},
	{'DesertEagle_Cool Blue'},
	{'DesertEagle_DropX'},
	{'DesertEagle_Glittery'},
	{'DesertEagle_Grim'},
	{'DesertEagle_Heat'},
	{'DesertEagle_Honor-bound'},
	{'DesertEagle_Independence'},
	{'DesertEagle_Krystallos'},
	{'DesertEagle_Pumpkin Buster'},
	{'DesertEagle_ROLVe'},
	{'DesertEagle_Racer'},
	{'DesertEagle_Scapter'},
	{'DesertEagle_Skin Committee'},
	{'DesertEagle_Survivor'},
	{'DesertEagle_Weeb'},
	{'DesertEagle_Xmas'},
	{'DesertEagle_Cringe'},
	{'DesertEagle_Blue Fur'},
	{'DesertEagle_Crystal'},

	-- Dual Berettas
	{'DualBerettas_Carbonized'},
	{'DualBerettas_Dusty Manor'},
	{'DualBerettas_Floral'},
	{'DualBerettas_Hexline'},
	{'DualBerettas_Neon web'},
	{'DualBerettas_Old Fashioned'},
	{'DualBerettas_Xmas'},

	-- FAMAS
	{'Famas_Abstract'},
	{'Famas_Centipede'},
	{'Famas_Cogged'},
	{'Famas_Goliath'},
	{'Famas_Haunted Forest'},
	{'Famas_KugaX'},
	{'Famas_MK11'},
	{'Famas_Medic'},
	{'Famas_Redux'},
	{'Famas_Shocker'},
	{'Famas_Toxic Rain'},

	-- Five Seven
	{'FiveSeven_Autumn Fade'},
	{'FiveSeven_Danjo'},
	{'FiveSeven_Fluid'},
	{'FiveSeven_Gifted'},
	{'FiveSeven_Midnight Ride'},
	{'FiveSeven_Mr. Anatomy'},
	{'FiveSeven_Stigma'},
	{'FiveSeven_Sub Zero'},
	{'FiveSeven_Summer'},

	-- G3SG1
	{'G3SG1_Amethyst'},
	{'G3SG1_Autumn'},
	{'G3SG1_Foliage'},
	{'G3SG1_Hex'},
	{'G3SG1_Holly Bound'},
	{'G3SG1_Mahogany'},

	-- Galil SAR
	{'Galil_Frosted'},
	{'Galil_Hardware 2'},
	{'Galil_Hardware'},
	{'Galil_Toxicity'},
	{'Galil_Worn'},

	-- Glock-19
	{'Glock_Angler'},
	{'Glock_Anubis'},
	{'Glock_Biotrip'},
	{'Glock_Day Dreamer'},
	{'Glock_Desert Camo'},
	{'Glock_Gravestomper'},
	{'Glock_Midnight Tiger'},
	{'Glock_Money Maker'},
	{'Glock_RSL'},
	{'Glock_Rush'},
	{'Glock_Scapter'},
	{'Glock_Spacedust'},
	{'Glock_Tarnish'},
	{'Glock_Underwater'},
	{'Glock_Wetland'},
	{'Glock_White Sauce'},
	{'Glock_Hallows'},

	-- Flip 
	{'Flip Knife_Stock'},

	-- Butterfly
	{'Butterfly Knife_Snowfall'},
	{'Butterfly Knife_Aurora'},
	{'Butterfly Knife_Bloodwidow'},
	{'Butterfly Knife_Consumed'},
	{'Butterfly Knife_Cosmos'},
	{'Butterfly Knife_Crimson Tiger'},
	{'Butterfly Knife_Crippled Fade'},
	{'Butterfly Knife_Digital'},
	{'Butterfly Knife_Egg Shell'},
	{'Butterfly Knife_Freedom'},
	{'Butterfly Knife_Frozen Dream'},
	{'Butterfly Knife_Goo'},
	{'Butterfly Knife_Hallows'},
	{'Butterfly Knife_Icicle'},
	{'Butterfly Knife_Inversion'},
	{'Butterfly Knife_Jade Dream'},
	{'Butterfly Knife_Marbleized'},
	{'Butterfly Knife_Naval'},
	{'Butterfly Knife_Neonic'},
	{'Butterfly Knife_Reaper'},
	{'Butterfly Knife_Ruby'},
	{'Butterfly Knife_Scapter'},
	{'Butterfly Knife_Splattered'},
	{'Butterfly Knife_Stock'},
	{'Butterfly Knife_Topaz'},
	{'Butterfly Knife_Tropical'},
	{'Butterfly Knife_Twitch'},
	{'Butterfly Knife_Wetland'},
	{'Butterfly Knife_White Boss'},
	{'Butterfly Knife_Worn'},
	{'Butterfly Knife_Wrapped'},
	{'Butterfly Knife_Argus'},

	-- Falchoin
	{'Falchoin Knife_Cocoa'},
	{'Falchion Knife_Bloodwidow'},
	{'Falchion Knife_Chosen'},
	{'Falchion Knife_Coal'},
	{'Falchion Knife_Consumed'},
	{'Falchion Knife_Cosmos'},
	{'Falchion Knife_Crimson Tiger'},
	{'Falchion Knife_Crippled Fade'},
	{'Falchion Knife_Digital'},
	{'Falchion Knife_Egg Shell'},
	{'Falchion Knife_Festive'},
	{'Falchion Knife_Freedom'},
	{'Falchion Knife_Frozen Dream'},
	{'Falchion Knife_Goo'},
	{'Falchion Knife_Hallows'},
	{'Falchion Knife_Inversion'},
	{'Falchion Knife_Late Night'},
	{'Falchion Knife_Toxic Nitro'},
	{'Falchion Knife_Marbleized'},
	{'Falchion Knife_Naval'},
	{'Falchion Knife_Neonic'},
	{'Falchion Knife_Racer'},
	{'Falchion Knife_Ruby'},
	{'Falchion Knife_Splattered'},
	{'Falchion Knife_Stock'},
	{'Falchion Knife_Topaz'},
	{'Falchion Knife_Tropical'},
	{'Falchion Knife_Wetland'},
	{'Falchion Knife_Worn'},
	{'Falchion Knife_Wrapped'},
	{'Falchion Knife_Zombie'},
	{'Falchion Knife_Pumpkin'},

	-- Gut
	{'Gut Knife_Holly'},
	{'Gut Knife_Banner'},
	{'Gut Knife_Bloodwidow'},
	{'Gut Knife_Consumed'},
	{'Gut Knife_Cosmos'},
	{'Gut Knife_Crimson Tiger'},
	{'Gut Knife_Crippled Fade'},
	{'Gut Knife_Digital'},
	{'Gut Knife_Egg Shell'},
	{'Gut Knife_Frozen Dream'},
	{'Gut Knife_Geo Blade'},
	{'Gut Knife_Goo'},
	{'Gut Knife_Hallows'},
	{'Gut Knife_Lurker'},
	{'Gut Knife_Marbleized'},
	{'Gut Knife_Naval'},
	{'Gut Knife_Neonic'},
	{'Gut Knife_Present'},
	{'Gut Knife_Ruby'},
	{'Gut Knife_Rusty'},
	{'Gut Knife_Splattered'},
	{'Gut Knife_Topaz'},
	{'Gut Knife_Tropical'},
	{'Gut Knife_Wetland'},
	{'Gut Knife_Worn'},
	{'Gut Knife_Wrapped'},

	-- Huntsman
	{'Huntsman Knife_Spirit'},
	{'Huntsman Knife_Aurora'},
	{'Huntsman Knife_Drop-Out'},
	{'Huntsman Knife_Bloodwidow'},
	{'Huntsman Knife_Consumed'},
	{'Huntsman Knife_Cosmos'},
	{'Huntsman Knife_Cozy'},
	{'Huntsman Knife_Crimson Tiger'},
	{'Huntsman Knife_Crippled Fade'},
	{'Huntsman Knife_Digital'},
	{'Huntsman Knife_Egg Shell'},
	{'Huntsman Knife_Frozen Dream'},
	{'Huntsman Knife_Geo Blade'},
	{'Huntsman Knife_Goo'},
	{'Huntsman Knife_Hallows'},
	{'Huntsman Knife_Honor Fade'},
	{'Huntsman Knife_Marbleized'},
	{'Huntsman Knife_Monster'},
	{'Huntsman Knife_Naval'},
	{'Huntsman Knife_Ruby'},
	{'Huntsman Knife_Splattered'},
	{'Huntsman Knife_Stock'},
	{'Huntsman Knife_Tropical'},
	{'Huntsman Knife_Twitch'},
	{'Huntsman Knife_Wetland'},
	{'Huntsman Knife_Worn'},
	{'Huntsman Knife_Wrapped'},

	-- Karambit
	{'Karambit_Peppermint'},
	{'Karambit_Bloodwidow'},
	{'Karambit_Consumed'},
	{'Karambit_Cosmos'},
	{'Karambit_Crimson Tiger'},
	{'Karambit_Crippled Fade'},
	{'Karambit_Death Wish'},
	{'Karambit_Digital'},
	{'Karambit_Egg Shell'},
	{'Karambit_Festive'},
	{'Karambit_Frozen Dream'},
	{'Karambit_Glossed'},
	{'Karambit_Gold'},
	{'Karambit_Goo'},
	{'Karambit_Hallows'},
	{'Karambit_Jade Dream'},
	{'Karambit_Jester'},
	{'Karambit_Lantern'},
	{'Karambit_Liberty Camo'},
	{'Karambit_Marbleized'},
	{'Karambit_Naval'},
	{'Karambit_Neonic'},
	{'Karambit_Pizza'},
	{'Karambit_Quicktime'},
	{'Karambit_Racer'},
	{'Karambit_Ruby'},
	{'Karambit_Scapter'},
	{'Karambit_Splattered'},
	{'Karambit_Stock'},
	{'Karambit_Topaz'},
	{'Karambit_Tropical'},
	{'Karambit_Twitch'},
	{'Karambit_Wetland'},
	{'Karambit_Worn'},
	{'Karambit_Drop-Out'},

	-- Sickle
	{'Sickle_Stock'},
	{'Sickle_Mummy'},
	{'Sickle_Splattered'},

	-- M249
	{'M249_Aggressor'},
	{'M249_P2020'},
	{'M249_Spooky'},
	{'M249_Wolf'},
	{'M249_Halloween Treats'},

	-- M4A1-S
	{'M4A1_Animatic'},
	{'M4A1_Burning'},
	{'M4A1_Desert Camo'},
	{'M4A1_Heavens Gate'},
	{'M4A1_Impulse'},
	{'M4A1_Jester'},
	{'M4A1_Lunar'},
	{'M4A1_Necropolis'},
	{'M4A1_Tecnician'},
	{'M4A1_Toucan'},
	{'M4A1_Wastelander'},
	{'M4A1_Nightmare'},

	-- M4A4
	{'M4A4_BOT[S]'},
	{'M4A4_Candyskull'},
	{'M4A4_Delinquent'},
	{'M4A4_Desert Camo'},
	{'M4A4_Devil'},
	{'M4A4_Endline'},
	{'M4A4_Flashy Ride'},
	{'M4A4_Ice Cap'},
	{'M4A4_Jester'},
	{'M4A4_King'},
	{'M4A4_Mistletoe'},
	{'M4A4_Pinkie'},
	{'M4A4_Pinkvision'},
	{'M4A4_Pondside'},
	{'M4A4_Precision'},
	{'M4A4_Quicktime'},
	{'M4A4_Racer'},
	{'M4A4_RayTrack'},
	{'M4A4_Scapter'},
	{'M4A4_Stardust'},
	{'M4A4_Toy Soldier'},
	{'M4A4_Darkness'},

	-- MAC-10
	{'MAC10_Artists Intent'},
	{'MAC10_Blaze'},
	{'MAC10_Golden Rings'},
	{'MAC10_Pimpin'},
	{'MAC10_Skeleboney'},
	{'MAC10_Toxic'},
	{'MAC10_Turbo'},
	{'MAC10_Wetland'},
	{'MAC10_Devil'},

	-- MAG-7
	{'MAG7_Bombshell'},
	{'MAG7_C4UTION'},
	{'MAG7_Frosty'},
	{'MAG7_Molten'},
	{'MAG7_Outbreak'},
	{'MAG7_Striped'},

	-- MP7
	{'MP7_Calaxian'},
	{'MP7_Cogged'},
	{'MP7_Goo'},
	{'MP7_Holiday'},
	{'MP7_Industrial'},
	{'MP7_Reindeer'},
	{'MP7_Silent Ops'},
	{'MP7_Sunshot'},

	-- MP9
	{'MP9_Blueroyal'},
	{'MP9_Cob Web'},
	{'MP9_Cookie Man'},
	{'MP9_Decked Halls'},
	{'MP9_SnowTime'},
	{'MP9_Vaporwave'},
	{'MP9_Velvita'},
	{'MP9_Wilderness'},
	{'MP9_Control'},

	-- Negev
	{'Negev_Default'},
	{'Negev_Midnightbones'},
	{'Negev_Quazar'},
	{'Negev_Striped'},
	{'Negev_Wetland'},
	{'Negev_Winterfell'},

	-- Nova
	{'Nova_Black Ice'},
	{'Nova_Cookie'},
	{'Nova_Paradise'},
	{'Nova_Sharkesh'},
	{'Nova_Starry Night'},
	{'Nova_Terraformer'},
	{'Nova_Tiger'},
	{'Nova_Oath'},
	{'Nova_Defective'},

	-- P2000
	{'P2000_Apathy'},
	{'P2000_Camo Dipped'},
	{'P2000_Candycorn'},
	{'P2000_Comet'},
	{'P2000_Dark Beast'},
	{'P2000_Golden Age'},
	{'P2000_Lunar'},
	{'P2000_Pinkie'},
	{'P2000_Ruby'},
	{'P2000_Silence'},

	-- P250
	{'P250_Amber'},
	{'P250_Bomber'},
	{'P250_Equinox'},
	{'P250_Frosted'},
	{'P250_Goldish'},
	{'P250_Green Web'},
	{'P250_Shark'},
	{'P250_Solstice'},
	{'P250_TC250'},
	{'P250_Midnight'},

	-- P90
	{'P90_Demon Within'},
	{'P90_Elegant'},
	{'P90_Krampus'},
	{'P90_Northern Lights'},
	{'P90_P-Chan'},
	{'P90_Pine'},
	{'P90_Redcopy'},
	{'P90_Skulls'},
	{'P90_Curse'},

	-- R8 Revolver
	{'R8_Exquisite'},
	{'R8_Hunter'},
	{'R8_Spades'},
	{'R8_TG'},
	{'R8_Violet'},

	-- SG 553
	{'SG_DropX'},
	{'SG_Dummy'},
	{'SG_Drop-Out'},
	{'SG_Kitty Cat'},
	{'SG_Knighthood'},
	{'SG_Magma'},
	{'SG_Variant Camo'},
	{'SG_Yltude'},
	{'SG_Control'},

	-- Sawed Off
	{'SawedOff_Casino'},
	{'SawedOff_Colorboom'},
	{'SawedOff_Executioner'},
	{'SawedOff_Opal'},
	{'SawedOff_Spooky'},
	{'SawedOff_Sullys Blacklight'},

	-- Scout
	{'Scout_Coffin Biter'},
	{'Scout_Flowing Mists'},
	{'Scout_Hellborn'},
	{'Scout_Hot Cocoa'},
	{'Scout_Monstruo'},
	{'Scout_Neon Regulation'},
	{'Scout_Posh'},
	{'Scout_Pulse'},
	{'Scout_Railgun'},
	{'Scout_Theory'},
	{'Scout_Xmas'},
	{'Scout_Darkness'},

	-- TEC-9
	{'Tec9_Charger'},
	{'Tec9_Gift Wrapped'},
	{'Tec9_Ironline'},
	{'Tec9_Performer'},
	{'Tec9_Phol'},
	{'Tec9_Samurai'},
	{'Tec9_Skintech'},
	{'Tec9_Stocking Stuffer'},
	{'Tec9_Seasoned'},

	-- UMP-45
	{'UMP_Death Grip'},
	{'UMP_Gum Drop'},
	{'UMP_Magma'},
	{'UMP_Militia Camo'},
	{'UMP_Molten'},
	{'UMP_Redline'},

	-- USP-S
	{'USP_Crimson'},
	{'USP_Dizzy'},
	{'USP_Frostbite'},
	{'USP_Holiday'},
	{'USP_Jade Dream'},
	{'USP_Kraken'},
	{'USP_Nighttown'},
	{'USP_Paradise'},
	{'USP_Racing'},
	{'USP_Skull'},
	{'USP_Unseen'},
	{'USP_Worlds Away'},
	{'USP_Yellowbelly'},
	{'USP_Survivor'},

	-- XM1014
	{'XM_Artic'},
	{'XM_Atomic'},
	{'XM_Campfire'},
	{'XM_Endless Night'},
	{'XM_MK11'},
	{'XM_Predator'},
	{'XM_Red'},
	{'XM_Spectrum'},

	-- Fingerless
	{'Fingerless Glove_Crystal'},
	{'Fingerless Glove_Kimura'},
	{'Fingerless Glove_Spookiness'},
	{'Fingerless Glove_Scapter'},
	{'Fingerless Glove_Digital'},
	{'Fingerless Glove_Patch'},

	-- Strapped
	{'Strapped Glove_Molten'},
	{'Strapped Glove_Kringle'},
	{'Strapped Glove_Racer'},
	{'Strapped Glove_Grim'},
	{'Strapped Glove_Drop-Out'},
	{'Strapped Glove_Wisk'},
	{'Strapped Glove_Cob Web'},

	-- Sports
	{'Sports Glove_Weeb'},
	{'Sports Glove_CottonTail'},
	{'Sports Glove_RSL'},
	{'Sports Glove_Royal'},
	{'Sports Glove_Hazard'},
	{'Sports Glove_Skulls'},
	{'Sports Glove_Pumpkin'},
	{'Sports Glove_Hallows'},
	{'Sports Glove_Majesty'},
	{'Sports Glove_Dead Prey'},
	{'Sports Glove_Calamity'},

	-- Handwraps
	{'Handwraps_MMA'},
	{'Handwraps_Mummy'},
	{'Handwraps_Guts'},
	{'Handwraps_Microbes'},
	{'Handwraps_Toxic Nitro'},
	{'Handwraps_Wetland'},
	{'Handwraps_Wraps'},
	{'Handwraps_Ghoul Hex'},
	{'Handwraps_Phantom Hex'},
	{'Handwraps_Spector Hex'},
	{'Handwraps_Orange Hex'},
	{'Handwraps_Purple Hex'},
	{'Handwraps_Green Hex'},

}

local isUnlocked

local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
setreadonly(mt, false)

local isUnlocked

mt.__namecall = newcclosure(function(self, ...)
	local args = {...}
	if getnamecallmethod() == "InvokeServer" and tostring(self) == "Hugh" then
		return
	end
	if getnamecallmethod() == "FireServer" then
		if args[1] == LocalPlayer.UserId then
			return
		end
		if string.len(tostring(self)) == 38 then
			if not isUnlocked then
				isUnlocked = true
				for i,v in pairs(allSkins) do
					local doSkip
					for i2,v2 in pairs(args[1]) do
						if v[1] == v2[1] then
							doSkip = true
						end
					end
					if not doSkip then
						table.insert(args[1], v)
					end
				end
			end
			return
		end
		if tostring(self) == "DataEvent" and args[1][4] then
			local currentSkin = string.split(args[1][4][1], "_")[2]
			if args[1][2] == "Both" then
				LocalPlayer["SkinFolder"]["CTFolder"][args[1][3]].Value = currentSkin
				LocalPlayer["SkinFolder"]["TFolder"][args[1][3]].Value = currentSkin
			else
				LocalPlayer["SkinFolder"][args[1][2] .. "Folder"][args[1][3]].Value = currentSkin
			end
		end
	end
	return oldNamecall(self, ...)
end)

setreadonly(mt, true)

Client.CurrentInventory = allSkins

local TClone, CTClone = LocalPlayer.SkinFolder.TFolder:Clone(), game.Players.LocalPlayer.SkinFolder.CTFolder:Clone()
LocalPlayer.SkinFolder.TFolder:Destroy()
LocalPlayer.SkinFolder.CTFolder:Destroy()
TClone.Parent = LocalPlayer.SkinFolder
CTClone.Parent = LocalPlayer.SkinFolder
