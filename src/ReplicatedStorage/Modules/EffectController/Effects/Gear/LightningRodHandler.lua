-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:32:14
-- Luau version 6, Types version 3
-- Time taken: 0.002115 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local CollectionService_upvr = game:GetService("CollectionService")
return {
	Create = function(arg1) -- Line 11, Named "Create"
		--[[ Upvalues[2]:
			[1]: ReplicatedStorage_upvr (readonly)
			[2]: CollectionService_upvr (readonly)
		]]
		local ID_2 = arg1.Parameters.ID
		arg1.Cache[ID_2] = {}
		local LightningRodCFrame = arg1.Parameters.LightningRodCFrame
		local SOME = ReplicatedStorage_upvr.ObjectModels:FindFirstChild(arg1.Parameters.LightningRodType)
		if not SOME then
		else
			local clone = SOME:Clone()
			if not SOME then return end
			CollectionService_upvr:AddTag(clone, "LightningRod")
			clone:SetAttribute("ROD_ID", ID_2)
			for _, v in clone:GetDescendants() do
				if v:IsA("BasePart") then
					v.CanQuery = true
					v.CanCollide = true
				end
			end
			arg1.Cache[ID_2].Rod = clone
			local _, any_GetBoundingBox_result2 = clone:GetBoundingBox()
			local var15 = any_GetBoundingBox_result2.Y / 2 - 1
			clone.PrimaryPart.CFrame = LightningRodCFrame * CFrame.new(0, var15, 0)
			clone.Parent = workspace.Visuals
			arg1.Default:PlaySound(script.PlaceSFX, arg1.Default:CreateEffect({
				Object = script.PlaceEffect;
				Emit = true;
				Position = LightningRodCFrame;
				DebrisTime = 2;
			}))
			arg1.Libraries.BoatTween:Create(clone.PrimaryPart, {
				Time = 0.8;
				EasingStyle = "Smoother";
				EasingDirection = "In";
				StepType = "Heartbeat";
				Goal = {
					CFrame = LightningRodCFrame * CFrame.new(0, var15, 0);
				};
			}):Play()
			arg1.Cache[ID_2].Rod = clone
		end
	end;
	Destroy = function(arg1) -- Line 68, Named "Destroy"
		--[[ Upvalues[1]:
			[1]: CollectionService_upvr (readonly)
		]]
		local ID = arg1.Parameters.ID
		local var20_upvr = arg1.Cache[ID]
		if var20_upvr then
			var20_upvr = arg1.Cache[ID].Rod
		end
		if not var20_upvr then
		else
			CollectionService_upvr:RemoveTag(var20_upvr, "LightningRod")
			arg1.Libraries.BoatTween:Create(var20_upvr.PrimaryPart, {
				Time = 0.6;
				EasingStyle = "ExitExpressive";
				EasingDirection = "In";
				StepType = "Heartbeat";
				Goal = {
					CFrame = arg1.Parameters.LightningRodCFrame * CFrame.new(0, 3, 0);
				};
			}):Play()
			arg1.Default:PlaySound(script.DestroySFX, var20_upvr.PrimaryPart)
			task.delay(1.5, function() -- Line 86
				--[[ Upvalues[1]:
					[1]: var20_upvr (readonly)
				]]
				var20_upvr:Destroy()
			end)
		end
	end;
	Cancel = function(arg1) -- Line 92, Named "Cancel"
		arg1.Container:Clean()
		arg1.Cache = {}
	end;
}