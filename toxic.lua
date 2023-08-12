local function onPlayerDied(victim)
    local playerName = game.Players.LocalPlayer.Name
    
    local killMessage = "Killed " .. victim .. " - Rest in peace!"
    local customMessage = "L " .. victim .. " - Gone but not forgotten!"
    local customMessage2 = "Lost " .. victim .. " - skillissue"

    -- Say messages in chat
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
        killMessage, "All"
    )
    
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
        customMessage, "All"
    )
  
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
        customMessage2, "All"
    )
end

local player = game.Players.LocalPlayer
player.Character:WaitForChild("Humanoid").Died:Connect(function()
    onPlayerDied(player.Name)
end)
