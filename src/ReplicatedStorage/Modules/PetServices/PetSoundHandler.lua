-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:45
-- Luau version 6, Types version 3
-- Time taken: 0.007156 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local tbl_upvr_2 = {
	Dog = {
		Idle = "rbxassetid://74516706583472";
		Walk = "rbxassetid://95883386499521";
		Dig = "rbxassetid://82347082239944";
	};
	["Golden Lab"] = {
		Idle = "rbxassetid://74516706583472";
		Walk = "rbxassetid://95883386499521";
		Dig = "rbxassetid://82347082239944";
	};
	Cat = {
		Walk = "rbxassetid://75691085685258";
		Nap = "rbxassetid://88617197262546";
	};
	["Orange Tabby"] = {
		Walk = "rbxassetid://75691085685258";
		Nap = "rbxassetid://136807561780379";
	};
	["Moon Cat"] = {
		Walk = "rbxassetid://75691085685258";
		Nap = "rbxassetid://136807561780379";
	};
	Bunny = {
		Idle = "rbxassetid://80830019163546";
		Walk = "rbxassetid://117228920028311";
		Chomp = "rbxassetid://91545917920155";
	};
	["Black Bunny"] = {
		Idle = "rbxassetid://80830019163546";
		Walk = "rbxassetid://117228920028311";
		Chomp = "rbxassetid://91545917920155";
	};
	Chicken = {
		Idle = "rbxassetid://98158160605550";
		Walk = "rbxassetid://139844945801226";
	};
	Rooster = {
		Idle = "rbxassetid://98158160605550";
		Walk = "rbxassetid://139844945801226";
	};
	Pig = {
		Idle = "rbxassetid://135865211196363";
		Walk = "rbxassetid://116135751746611";
		Frenzy = "rbxassetid://116342918915952";
	};
	Cow = {
		Idle = "rbxassetid://109628519201421";
		Walk = "rbxassetid://129633521888708";
	};
	Dragonfly = {
		Idle = "rbxassetid://77220774723390";
		Walk = "rbxassetid://88913485838830";
	};
	Monkey = {
		Idle = "rbxassetid://139413487045598";
		Walk = "rbxassetid://112777046526411";
		Steal = "rbxassetid://13772418142759";
	};
	["Silver Monkey"] = {
		Idle = "rbxassetid://139413487045598";
		Walk = "rbxassetid://112777046526411";
		Steal = "rbxassetid://13772418142759";
	};
	Snail = {
		Walk = "rbxassetid://84898089107661";
		Idle = "rbxassetid://123370432487085";
	};
	["Giant Ant"] = {
		Walk = "rbxassetid://85188904272858";
		Idle = "rbxassetid://139448026417736";
		Dance = "rbxassetid://104549164564414";
	};
	Turtle = {
		Idle = "rbxassetid://72972534645980";
		Walk = "rbxassetid://95903584684041";
	};
	Deer = {
		Idle = "rbxassetid://109504476401833";
		Walk = "rbxassetid://72482977771929";
		Stomp = "rbxassetid://110481608328857";
	};
	["Spotted Deer"] = {
		Idle = "rbxassetid://109504476401833";
		Walk = "rbxassetid://72482977771929";
		Stomp = "rbxassetid://110481608328857";
	};
	Caterpillar = {
		Walk = "rbxassetid://122412833570405";
		Idle = "rbxassetid://118926491137336";
	};
	["Praying Mantis"] = {
		Walk = "rbxassetid://84713477229850";
		Idle = "rbxassetid://97641683064349";
		Pray = "rbxassetid://73332209725156";
	};
	["Sea Otter"] = {
		Idle = "rbxassetid://98663428034599";
		Spray = "rbxassetid://132032269231520";
		Walk = "rbxassetid://111713760896073";
	};
	["Polar Bear"] = {
		Idle = "rbxassetid://100399217826845";
		Roar = "rbxassetid://100918889424478";
		Walk = "rbxassetid://100399217826845";
	};
	Panda = {
		Idle = "rbxassetid://85123076795821";
		Walk = "rbxassetid://126208503221327";
		Chomp = "rbxassetid://106994678664275";
	};
	Hedgehog = {
		Idle = "rbxassetid://99389171870232";
		Walk = "rbxassetid://79078872328055";
		Curl = "rbxassetid://109183921043480";
	};
	Kiwi = {
		Idle = "rbxassetid://70643795779986";
		Walk = "rbxassetid://113954129903942";
		Nurse = "rbxassetid://126248680195169";
	};
	Mole = {
		Idle = "rbxassetid://95599243108942";
		Walk = "rbxassetid://109159558883532";
		DigDown = "rbxassetid://122838135787975";
		DigUp = "rbxassetid://87901949070969";
	};
	Frog = {
		Idle = "rbxassetid://105829201448144";
		Walk = "rbxassetid://115669906209025";
		Croak = "rbxassetid://97143990552632";
	};
	["Echo Frog"] = {
		Idle = "rbxassetid://134398514718150";
		Walk = "rbxassetid://133255384275881";
		Croak = "rbxassetid://113309295117031";
	};
	Owl = {
		Idle = "rbxassetid://129074703805811";
		Walk = "rbxassetid://72938304206168";
		Fly = "rbxassetid://103608467045533";
		FlyDown = "rbxassetid://126267742639216";
		FlyUp = "rbxassetid://113660155265682";
	};
	["Night Owl"] = {
		Idle = "rbxassetid://129074703805811";
		Walk = "rbxassetid://72938304206168";
		Fly = "rbxassetid://103608467045533";
		FlyDown = "rbxassetid://126267742639216";
		FlyUp = "rbxassetid://113660155265682";
	};
	Raccoon = {
		Idle = "rbxassetid://134230704254748";
		Walk = "rbxassetid://72260807159974";
		Steal = "rbxassetid://98750147885192";
	};
	["Blood Kiwi"] = {
		Idle = "rbxassetid://70643795779986";
		Walk = "rbxassetid://113954129903942";
		Nurse = "rbxassetid://126248680195169";
	};
	["Blood Hedgehog"] = {
		Idle = "rbxassetid://99389171870232";
		Walk = "rbxassetid://79078872328055";
		Curl = "rbxassetid://109183921043480";
	};
	["Blood Owl"] = {
		Idle = "rbxassetid://129074703805811";
		Walk = "rbxassetid://72938304206168";
		Fly = "rbxassetid://103608467045533";
		FlyDown = "rbxassetid://126267742639216";
		FlyUp = "rbxassetid://113660155265682";
	};
	["Chicken Zombie"] = {
		Idle = "rbxassetid://81537385466343";
		Walk = "rbxassetid://77478760027344";
	};
	["Grey Mouse"] = {
		Idle = "rbxassetid://97778347635709";
		Walk = "rbxassetid://89252475842825";
	};
	Squirrel = {
		Idle = "rbxassetid://92747344416384";
		Walk = "rbxassetid://73793157974906";
	};
	["Brown Mouse"] = {
		Idle = "rbxassetid://97778347635709";
		Walk = "rbxassetid://89252475842825";
	};
	["Red Giant Ant"] = {
		Walk = "rbxassetid://76161666777473";
		Idle = "rbxassetid://131780886746478";
	};
	Fox = {
		Idle = "rbxassetid://130458837573687";
		Walk = "rbxassetid://129545821321602";
		Steal = "rbxassetid://98750147885192";
	};
	Bee = {
		Idle = "rbxassetid://100424552289454";
		Walk = "rbxassetid://100424552289454";
		Pollinate = "rbxassetid://99031845745055";
	};
	["Honey Bee"] = {
		Idle = "rbxassetid://100424552289454";
		Walk = "rbxassetid://100424552289454";
		Pollinate = "rbxassetid://99031845745055";
	};
	["Petal Bee"] = {
		Idle = "rbxassetid://100424552289454";
		Walk = "rbxassetid://100424552289454";
		Pollinate = "rbxassetid://99031845745055";
	};
	["Golden Bee"] = {
		Idle = "rbxassetid://100424552289454";
		Walk = "rbxassetid://100424552289454";
		Pollinate = "rbxassetid://99031845745055";
	};
	["Bear Bee"] = {
		Walk = "rbxassetid://107497023739294";
		Sit = "rbxassetid://129851107983906";
	};
	["Queen Bee"] = {
		Idle = "rbxassetid://122660592645582";
		Walk = "rbxassetid://122660592645582";
		Pollinate = "rbxassetid://99031845745055";
		Lead = "rbxassetid://132982275374665";
	};
	Wasp = {
		Idle = "rbxassetid://100424552289454";
		Walk = "rbxassetid://100424552289454";
		Pollinate = "rbxassetid://99031845745055";
		Sting = "rbxassetid://113403785478319";
	};
	Moth = {
		Idle = "rbxassetid://79800649815691";
		Walk = "rbxassetid://127482827344286";
		Sing = "rbxassetid://77071003679880";
	};
	["Tarantula Hawk"] = {
		Idle = "rbxassetid://100424552289454";
		Walk = "rbxassetid://100424552289454";
		Pollinate = "rbxassetid://99031845745055";
		Sting = "rbxassetid://113403785478319";
	};
	Butterfly = {
		Idle = "rbxassetid://128008676366287";
		Walk = "rbxassetid://84018547802237";
		Flutter = "rbxassetid://90463210469979";
	};
	["Disco Bee"] = {
		Idle = "rbxassetid://100424552289454";
		Walk = "rbxassetid://100424552289454";
		Dance = "rbxassetid://135576658936030";
	};
	["Cooked Owl"] = {
		Walk = "rbxassetid://125335397900823";
		Fly = "rbxassetid://71375374141307";
		FlyDown = "rbxassetid://73376480549975";
		FlyUp = "rbxassetid://135267194842326";
	};
	["Pack Bee"] = {
		Idle = "rbxassetid://100424552289454";
		Walk = "rbxassetid://100424552289454";
		Pollinate = "rbxassetid://99031845745055";
	};
	Starfish = {
		Walk = "rbxassetid://124497229124515";
	};
	Crab = {
		Walk = "rbxassetid://137490397885881";
		Pinch = "rbxassetid://101619248230134";
	};
	Seagull = {
		Walk = "rbxassetid://134519211827778";
		Fly = "rbxassetid://120628386657802";
		FlyDown = "rbxassetid://95783055449423";
		FlyUp = "rbxassetid://132476910449834";
	};
	Toucan = {
		Walk = "rbxassetid://71775411958781";
		Fly = "rbxassetid://120628386657802";
		FlyDown = "rbxassetid://95783055449423";
		FlyUp = "rbxassetid://132476910449834";
	};
	Flamingo = {
		Walk = "rbxassetid://124497229124515";
	};
	["Sea Turtle"] = {
		Walk = "rbxassetid://81508998365618";
		Spin = "rbxassetid://72987965730701";
	};
	Seal = {
		Walk = "rbxassetid://78222935005087`";
	};
	Orangutan = {
		Walk = "rbxassetid://72043737830269";
	};
	Peacock = {
		Walk = "rbxassetid://101301427298854";
		Fan = "rbxassetid://73915703683838";
	};
	Capybara = {
		Walk = "rbxassetid://78422835877662";
	};
	Ostrich = {
		Walk = "rbxassetid://113301091663888";
	};
	["Scarlet Macaw"] = {
		Walk = "rbxassetid://110356736658981";
		Fly = "rbxassetid://120628386657802";
		FlyDown = "rbxassetid://95783055449423";
		FlyUp = "rbxassetid://132476910449834";
	};
	["Mimic Octopus"] = {
		Walk = "rbxassetid://86410817334548";
		Mimicry = "rbxassetid://119828032068847";
	};
	Meerkat = {
		Idle = "rbxassetid://124033074230661";
		Walk = "rbxassetid://138011594997254";
		Stand = "rbxassetid://135190045066509";
	};
	["Sand Snake"] = {
		Idle = "rbxassetid://75501211177631";
		Walk = "rbxassetid://106280386832026";
	};
	Axolotl = {
		Idle = "rbxassetid://122454346600382";
		Walk = "rbxassetid://132310882154118";
	};
	["Hyacinth Macaw"] = {
		Walk = "rbxassetid://110356736658981";
		Fly = "rbxassetid://120628386657802";
		FlyDown = "rbxassetid://95783055449423";
		FlyUp = "rbxassetid://132476910449834";
	};
	["Fennec Fox"] = {
		Idle = "rbxassetid://139673820881397";
		Walk = "rbxassetid://98864434206228";
		Steal = "rbxassetid://109928151227010";
	};
	Hamster = {
		Idle = "rbxassetid://92568979802155";
		Walk = "rbxassetid://78896000844765";
		Run = "rbxassetid://76926723835853";
	};
	["Bald Eagle"] = {
		Idle = "rbxassetid://89177456565600";
		Walk = "rbxassetid://102768068611613";
		Fly = "rbxassetid://83021412338858";
		FlyDown = "rbxassetid://95783055449423";
		FlyUp = "rbxassetid://132476910449834";
		Spin = "rbxassetid://110526461833717";
	};
	Triceratops = {
		Idle = "rbxassetid://119419781485000";
		Walk = "rbxassetid://72419862408286";
		Run = "rbxassetid://82039485525048";
		Ram = "rbxassetid://112557982594164";
	};
	Stegosaurus = {
		Idle = "rbxassetid://113388221747054";
		Walk = "rbxassetid://71323752540040";
	};
	Raptor = {
		Idle = "rbxassetid://124797301068961";
		Walk = "rbxassetid://96516235550356";
	};
	Brontosaurus = {
		Idle = "rbxassetid://122784337595448";
		Walk = "rbxassetid://135731865962788";
	};
	Pterodactyl = {
		Idle = "rbxassetid://129770489140344";
		Walk = "rbxassetid://111746291935975";
		Flap = "rbxassetid://91250728499728";
		Fly = "rbxassetid://122209192875342";
		FlyDown = "rbxassetid://80605077775457";
		FlyUp = "rbxassetid://100667707044787";
	};
	["T-Rex"] = {
		Idle = "rbxassetid://92304805767989";
		Walk = "rbxassetid://80676652531002";
		Eat = "rbxassetid://139962613806128";
		Roar = "rbxassetid://95858307486950";
	};
	Ankylosaurus = {
		Idle = "rbxassetid://99141802677334";
		Walk = "rbxassetid://125011954184495";
	};
	Dilophosaurus = {
		Idle = "rbxassetid://114610341541845";
		Walk = "rbxassetid://104694858364201";
		Frill = "rbxassetid://109335879280084";
	};
	Pachycephalosaurus = {
		Idle = "rbxassetid://84343634698599";
		Walk = "rbxassetid://140449840918939";
	};
	Parasaurolophus = {
		Idle = "rbxassetid://78199269149372";
		Walk = "rbxassetid://133162096998870";
		Crowbar = "rbxassetid://117364823639825";
	};
	Spinosaurus = {
		Idle = "rbxassetid://98524735324136";
		Walk = "rbxassetid://114968103668706";
		Eat = "rbxassetid://75118152376278";
		Roar = "rbxassetid://129398782040528";
	};
	Iguanodon = {
		Idle = "rbxassetid://79910895122131";
		Walk = "rbxassetid://127303042386736";
	};
	["Rainbow Ankylosaurus"] = {
		Idle = "rbxassetid://99141802677334";
		Walk = "rbxassetid://125011954184495";
	};
	["Rainbow Dilophosaurus"] = {
		Idle = "rbxassetid://114610341541845";
		Walk = "rbxassetid://104694858364201";
		Frill = "rbxassetid://109335879280084";
	};
	["Rainbow Pachycephalosaurus"] = {
		Idle = "rbxassetid://84343634698599";
		Walk = "rbxassetid://140449840918939";
	};
	["Rainbow Parasaurolophus"] = {
		Idle = "rbxassetid://78199269149372";
		Walk = "rbxassetid://133162096998870";
		Crowbar = "rbxassetid://117364823639825";
	};
	["Rainbow Spinosaurus"] = {
		Idle = "rbxassetid://98524735324136";
		Walk = "rbxassetid://114968103668706";
		Eat = "rbxassetid://75118152376278";
		Roar = "rbxassetid://129398782040528";
	};
	["Rainbow Iguanodon"] = {
		Idle = "rbxassetid://79910895122131";
		Walk = "rbxassetid://127303042386736";
	};
	["Shiba Inu"] = {
		Idle = "rbxassetid://71888519556410";
		Walk = "rbxassetid://116213352206058";
		Dig = "rbxassetid://84201564054458";
		Play = "rbxassetid://103807916779989";
	};
	Nihonzaru = {
		Idle = "rbxassetid://135317821048418";
		Walk = "rbxassetid://73545348188686";
		Bathe = "rbxassetid://96750632910499";
	};
	Tanuki = {
		Idle = "rbxassetid://134914408771060";
		Walk = "rbxassetid://120043490928927";
		Mischief = "rbxassetid://134914408771060";
	};
	Tanchozuru = {
		Idle = "rbxassetid://132276763392696";
		Walk = "rbxassetid://92777857718180";
		Wings = "rbxassetid://113467819982653";
	};
	Kappa = {
		Idle = "rbxassetid://95999268909469";
		Walk = "rbxassetid://99913630324299";
		Magic = "rbxassetid://107408167945595";
	};
	Kitsune = {
		Idle = "rbxassetid://87102906222964";
		Walk = "rbxassetid://104049108847490";
		Spin = "rbxassetid://89501989901805";
	};
	Koi = {
		Idle = "rbxassetid://108805706480890";
		Walk = "rbxassetid://88429870622041";
		Jump = "rbxassetid://74202384322672";
	};
}
function module_upvr.new(arg1, arg2, arg3) -- Line 529
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.PetType = arg1
	setmetatable_result1.PetModel = arg2
	setmetatable_result1.UUID = arg3
	setmetatable_result1.currentSound = nil
	return setmetatable_result1
end
local tbl_upvr = {}
local SoundService_upvr = game:GetService("SoundService")
function module_upvr.playSound(arg1, arg2) -- Line 540
	--[[ Upvalues[3]:
		[1]: tbl_upvr_2 (readonly)
		[2]: tbl_upvr (readonly)
		[3]: SoundService_upvr (readonly)
	]]
	arg1:stopSound()
	arg1.CurrentAnimationName = arg2
	local var105 = tbl_upvr_2[arg1.PetType]
	if not var105 then
	else
		local var106 = var105[arg2]
		if not var106 then return end
		if not tbl_upvr[var106] then
			local Sound = Instance.new("Sound")
			Sound.SoundGroup = SoundService_upvr.Music.SFX
			Sound.SoundId = var106
			Sound.Volume = 1
			Sound.RollOffMode = Enum.RollOffMode.Inverse
			Sound.RollOffMaxDistance = 100
			Sound.RollOffMinDistance = 5
			Sound.EmitterSize = 10
			tbl_upvr[var106] = Sound
		end
		local clone_upvr = tbl_upvr[var106]:Clone()
		clone_upvr.SoundGroup = SoundService_upvr.Music.SFX
		local PrimaryPart = arg1.PetModel.PrimaryPart
		if not PrimaryPart then
			PrimaryPart = arg1.PetModel
		end
		clone_upvr.Parent = PrimaryPart
		if arg2 == "Walk" then
			clone_upvr.Looped = true
			clone_upvr.Loaded:Connect(function() -- Line 568
				--[[ Upvalues[1]:
					[1]: clone_upvr (readonly)
				]]
				if clone_upvr.IsLoaded and 2 < clone_upvr.TimeLength then
					clone_upvr.TimePosition = math.random() * (clone_upvr.TimeLength - 1)
				end
			end)
		end
		clone_upvr:Play()
		arg1.currentSound = clone_upvr
	end
end
function module_upvr.stopSound(arg1) -- Line 580
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1.currentSound then
		local currentSound_upvr = arg1.currentSound
		arg1.currentSound = nil
		for i_upvr = 1, 10 do
			local Volume_upvr = currentSound_upvr.Volume
			task.delay((i_upvr - 1) * 0.1, function() -- Line 589
				--[[ Upvalues[3]:
					[1]: currentSound_upvr (readonly)
					[2]: Volume_upvr (readonly)
					[3]: i_upvr (readonly)
				]]
				if currentSound_upvr then
					currentSound_upvr.Volume = Volume_upvr * (1 - i_upvr / 10)
				end
			end)
			local var118_upvr
		end
		task.delay(1, function() -- Line 596
			--[[ Upvalues[1]:
				[1]: var118_upvr (readonly)
			]]
			if var118_upvr then
				var118_upvr:Stop()
				var118_upvr:Destroy()
			end
		end)
	end
end
function module_upvr.destroy(arg1) -- Line 605
	arg1:stopSound()
end
return module_upvr