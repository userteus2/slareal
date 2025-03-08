local player = game.Players.LocalPlayer
local playerCharacter = player.Character or player.CharacterAdded:Wait()

-- Função para definir transparência, ignorando o personagem do jogador
local function setTransparency(object)
    if not object:IsDescendantOf(playerCharacter) and object:IsA("BasePart") then
        pcall(function()
            object.Transparency = 1
        end)
    end
end

-- Aplica transparência a todos os objetos no workspace, exceto o personagem do jogador
for _, v in ipairs(workspace:GetDescendants()) do
    setTransparency(v)
end

-- Monitora objetos adicionados ao workspace e aplica a transparência, exceto ao personagem do jogador
workspace.DescendantAdded:Connect(function(v)
    setTransparency(v)
end)

-- Atualiza a referência do personagem quando o jogador reseta
player.CharacterAdded:Connect(function(newCharacter)
    playerCharacter = newCharacter -- Atualiza para o novo personagem do jogador
end)
