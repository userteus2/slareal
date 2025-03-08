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

local CoreGui = game:GetService("StarterGui")
CoreGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
CoreGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)

local mensagem = "Auto farm and free acc?
Check this out: dc/YsR6ymwND4"
local tempo = 100

local function enviarMensagem()
    local chatEvent = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
    if chatEvent then
        chatEvent:FireServer(mensagem, "All")
        print("Mensagem enviada: " .. mensagem)
    else
        warn("Evento de chat não encontrado.")
    end
end

while true do
    enviarMensagem()
    wait(tempo)
end

-- Max level, godhuman, cdk, sgt
script_key = "U3VLB2EKRGQJJCVX433PZM5HXGYA" -- premium only, u can leave it blank if ur not
getgenv().Shutdown = true -- Turn on if u are farming bulk accounts
getgenv().Configs = {
    ["Team"] = "Marines",
    ["FPS Boost"] = {
        ["Enable"] = true,
        ["FPS Cap"] = 70,
    },
    ["Farm Boss Drops"] = {
        ["Enable"] = false,
        ["When x2 Exp Expired"] = false
    },
    ["Hop"] = { -- premium only
        ["Enable"] = true,
        ["Hop Find Tushita"] = true,
        ["Hop Find Valkyrie Helm"] = false,
        ["Hop Find Mirror Fractal"] = false,
        ["Hop Find Darkbeard"] = true, -- For skull guitar
        ["Hop Find Soul Reaper"] = true, -- For CDK
        ["Hop Find Mirage"] = false, -- For pull lever
        ["Find Fruit"] = true, -- Will find 1m+ fruit to unlock swan door to access third sea
    },
    ["Farm Mastery"] = {
        ["Enable"] = false,
        ["Farm Mastery Weapons"] = {"Sword", "Gun", "Blox Fruit"}, -- Blox Fruit, Gun (left -> right: High -> Low Priority)
        ["Swords To Farm"] = {"Cursed Dual Katana"},
        ["Guns To Farm"] = {"Skull Guitar"},
        ["Mastery Health (%)"] = 40 -- For Blox Fruit, Gun
    },
    ["Farm Config"] = {
        ["First Farm At Sky"] = true,
        ["Farm Bone Get x2 Exp"] = true
    },
    ["Trackstat"] = {
        ["Enable"] = false,
        ["Key"] = "", -- Get from xerohub.click
        ["Device"] = "test" -- u can put any name here
    },
    ["Auto Spawn rip_indra"] = true,
    ["Auto Spawn Dough King"] = false,
    ["Auto Pull Lever"] = false,
    ["Auto Collect Berry"] = false,
    ["Auto Evo Race"] = false,
    ["Awaken Fruit"] = false,
    ["Rainbow Haki"] = false,
    ["Hop Player Near"] = true,
    ["Skull Guitar"] = false,
    ["Cursed Dual Katana"] = false,
    ["Switch Melee"] = true,
    ["Eat Fruit"] = "", -- leave blank for none, put the fruit name like this example: Smoke Fruit, T-Rex Fruit, ...
    ["Snipe Fruit"] = "", -- leave blank for none, put the fruit name like this example: Smoke Fruit, T-Rex Fruit, ...
    ["Lock Fragment"] = 0,
    ["Buy Stuffs"] = true -- buso, geppo, soru, ken haki, ...
}
repeat task.wait() pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/kaitun.lua"))() end) until getgenv().Check_Execute
