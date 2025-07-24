-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:31:13
-- Luau version 6, Types version 3
-- Time taken: 0.000735 seconds

local module = {
	Name = "thru";
	Aliases = {'t', "through"};
	Description = "Teleports you through whatever your mouse is hovering over, placing you equidistantly from the wall.";
	Group = "DefaultDebug";
	Args = {{
		Type = "number";
		Name = "Extra distance";
		Description = "Go through the wall an additional X studs.";
		Default = 0;
	}};
}
function module.ClientRun(arg1, arg2) -- Line 15
	local Character = arg1.Executor.Character
	if not Character or not Character:FindFirstChild("HumanoidRootPart") then
		return "You don't have a character."
	end
	local Position = Character.HumanoidRootPart.Position
	local var7 = arg1.Executor:GetMouse().Hit.p - Position
	Character:MoveTo(var7 * 2 + var7.unit * arg2 + Position)
	return "Blinked!"
end
return module