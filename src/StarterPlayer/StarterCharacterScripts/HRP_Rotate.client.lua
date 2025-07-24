-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-23 23:33:13
-- Luau version 6, Types version 3
-- Time taken: 0.001936 seconds

local LocalPlayer = game.Players.LocalPlayer
local Character_upvr = LocalPlayer.Character
if not Character_upvr then
	Character_upvr = LocalPlayer.CharacterAdded:Wait()
end
local HumanoidRootPart_upvr = Character_upvr:WaitForChild("HumanoidRootPart")
local UserInputService_upvr = game:GetService("UserInputService")
local var5_upvw
local var6_upvw
local Player_Orientation_References = game.Workspace:FindFirstChild("Player_Orientation_References")
if not Player_Orientation_References then
	Player_Orientation_References = Instance.new("Folder", game.Workspace)
end
Player_Orientation_References.Name = "Player_Orientation_References"
local clone_upvr = game.ReplicatedStorage.REF:Clone()
clone_upvr.Parent = Player_Orientation_References
clone_upvr.Anchored = true
clone_upvr.CanCollide = false
clone_upvr.Name = LocalPlayer.Name
clone_upvr.Transparency = 1
local AlignOrientation_upvr = Instance.new("AlignOrientation", clone_upvr)
AlignOrientation_upvr.Attachment0 = Instance.new("Attachment", HumanoidRootPart_upvr)
AlignOrientation_upvr.Attachment1 = Instance.new("Attachment", clone_upvr)
AlignOrientation_upvr.MaxAngularVelocity = 3000000000
AlignOrientation_upvr.MaxTorque = 3000000000
AlignOrientation_upvr.Enabled = false
if not UserInputService_upvr.TouchEnabled then
	game:GetService("RunService").RenderStepped:Connect(function() -- Line 31
		--[[ Upvalues[5]:
			[1]: var5_upvw (read and write)
			[2]: UserInputService_upvr (readonly)
			[3]: HumanoidRootPart_upvr (readonly)
			[4]: AlignOrientation_upvr (readonly)
			[5]: clone_upvr (readonly)
		]]
		if var5_upvw == true then
			local any_GetMouseLocation_result1 = UserInputService_upvr:GetMouseLocation()
			local any_ViewportPointToRay_result1 = workspace.CurrentCamera:ViewportPointToRay(any_GetMouseLocation_result1.X, any_GetMouseLocation_result1.Y)
			local Origin = any_ViewportPointToRay_result1.Origin
			local Direction = any_ViewportPointToRay_result1.Direction
			local Position = HumanoidRootPart_upvr.Position
			AlignOrientation_upvr.Enabled = true
			clone_upvr.Position = Position
			clone_upvr.CFrame = CFrame.new(Position, Position + (Origin + (Direction) * ((HumanoidRootPart_upvr.Position.Y - Origin.Y) / Direction.Y) - Position).Unit)
		end
	end)
	Character_upvr.ChildAdded:Connect(function(arg1) -- Line 54
		if not arg1:IsA("Tool") or not string.find(arg1.Name, "Watering") then
		end
	end)
	Character_upvr.ChildRemoved:Connect(function(arg1) -- Line 60
		--[[ Upvalues[3]:
			[1]: Character_upvr (readonly)
			[2]: var5_upvw (read and write)
			[3]: AlignOrientation_upvr (readonly)
		]]
		if Character_upvr:FindFirstChildWhichIsA("Tool") == nil then
			var5_upvw = false
			AlignOrientation_upvr.Enabled = false
		end
	end)
	UserInputService_upvr.InputBegan:Connect(function(arg1) -- Line 67
		--[[ Upvalues[1]:
			[1]: var6_upvw (read and write)
		]]
		if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
			var6_upvw = true
		end
	end)
	UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 73
		--[[ Upvalues[2]:
			[1]: var6_upvw (read and write)
			[2]: AlignOrientation_upvr (readonly)
		]]
		if arg1.UserInputType == Enum.UserInputType.MouseButton1 then
			var6_upvw = false
			AlignOrientation_upvr.Enabled = false
		end
	end)
end