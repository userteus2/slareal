getgenv().Cf = {
    ["Team"] = "Marines",
    ["Fps"] = "120",
    ["Buy Item"] = true,
    ["Start Hunt"] = true,
    ["Auto V3"] = true,
    ["Auto V4"] = true,
    ["Auto Buso"] = true,
    ["Auto Ken"] = true,
    ["Low Health"] = "3500",
    ["Max Health"] = "7000",
    ["Fps Counter"] = true,
    ["Chat When Hunt"] = "Lùa Hub On Top",
    ["White Screen"] = false,
    ["Black Screen"] = false,
    ["Remove Terrain"] = true,
    ["Melee"] = {
        ["Time"] = 1,
        ["Enabled"] = false,
        ["Z"] = {["Enabled"] = true, ["HoldTime"] = 1},
        ["X"] = {["Enabled"] = true, ["HoldTime"] = 1},
        ["C"] = {["Enabled"] = true, ["HoldTime"] = 1}
    },
    ["Sword"] = {
        ["Time"] = 1,
        ["Enabled"] = false,
        ["Z"] = {["Enabled"] = true, ["HoldTime"] = 1},
        ["X"] = {["Enabled"] = true, ["HoldTime"] = 1}
    },
    ["Gun"] = {
        ["Time"] = 1,
        ["Enabled"] = false,
        ["Z"] = {["Enabled"] = true, ["HoldTime"] = 1},
        ["X"] = {["Enabled"] = true, ["HoldTime"] = 1}
    },
    ["Fruit"] = {
        ["Time"] = 1,
        ["Enabled"] = false,
        ["Z"] = {["Enabled"] = true, ["HoldTime"] = 1},
        ["X"] = {["Enabled"] = true, ["HoldTime"] = 1},
        ["C"] = {["Enabled"] = true, ["HoldTime"] = 1},
        ["V"] = {["Enabled"] = true, ["HoldTime"] = 1},
        ["F"] = {["Enabled"] = true, ["HoldTime"] = 1}
    }
}
game:GetService("RunService"):Set3dRenderingEnabled( not getgenv().Cf["White Screen"] )
local function changeteam(team)
    game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("SetTeam", team)
    local makeVisible = {"RaceEnergy","Compass","Energy","AlliesButton","Code",
    "CrewButton","HomeButton","Mute","Settings","MenuButton","Beli","Fragments",
    "Level",
    --"Radar",
    "HP"}
    if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
        game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam"):Destroy()
    end
    for i,v in pairs(makeVisible) do
        if v == "RaceEnergy" then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Awakening") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Awakening") then
                game:GetService("Players").LocalPlayer.PlayerGui.Main[v].Visible = true
            end
        else
            game:GetService("Players").LocalPlayer.PlayerGui.Main[v].Visible = true
        end
    end
    game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
    game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
    game:GetService("Workspace").CurrentCamera.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
end
changeteam(getgenv().Cf["Team"])
require(game.ReplicatedStorage:WaitForChild("Notification")).new("<Color=Yellow>Exploit You Are Using Is: <Color=/> "..identifyexecutor()):Display()
-- Set Fps Minifer
spawn(function()while wait()do pcall(function()setfpscap(getgenv().Cf["Fps"])end)end end)
spawn(function()while wait(30)do require(game.ReplicatedStorage:WaitForChild("Notification")).new(" <Color=Yellow>Report Bugs Or Suggests Dms<Color=/> "):Display()require(game.ReplicatedStorage:WaitForChild("Notification")).new(" <Color=Yellow>Discord: trumfut | .tranvanbao <Color=/> "):Display()require(game.ReplicatedStorage:WaitForChild("Notification")).new(" <Color=Yellow>Link Server: https://discord.gg/XBrkrrWFSn<Color=/> "):Display()require(game.ReplicatedStorage:WaitForChild("Notification")).new(" <Color=Yellow>ID Discord: 1151466936513863742<Color=/> "):Display()require(game.ReplicatedStorage:WaitForChild("Notification")).new(" <Color=Yellow>Join Server Check Update<Color=/> "):Display()end end)
function EquipTool(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(0.4)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end
function EquipAllWeapon()
    pcall(function()
        for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") and (not (v.Name == "Summon Sea Beast" or v.Name == "Water Body" or v.Name == "Awakening")) then
                local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid)
                wait()
            end
        end
    end)
end
function Melee()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                EquipTool(v)
                task.wait()
                EquipAllWeapon()
            end
        end
    end
end
function Sword()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                EquipTool(v)
                task.wait()
                EquipAllWeapon()
            end
        end
    end
end
function Gun()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                EquipTool(v)
                task.wait()
                EquipAllWeapon()
            end
        end
    end
end
function Fruit()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                EquipTool(v)
                task.wait()
                EquipAllWeapon()
            end
        end
    end
end
function Click()
    local Module = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
    local CombatFramework = debug.getupvalues(Module)[2]
    local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
    task.spawn(function()
        while task.wait() do 
            CombatFramework.activeController.timeToNextAttack = 0
            task.wait()
            CombatFramework.activeController.timeToNextAttack = -(math.huge)
        end
        if CombatFramework.activeController:attack() then
            CombatFramework.activeController:attack()
        end
        CombatFramework.activeController.attacking = false
        CombatFramework.activeController.hitboxMagnitude = 2480
    end)
    if not _G.FastAttack then
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end
    CamShake:Stop()
end
function Use(hold, use)
    if not game.Players.LocalPlayer.Character:FindFirstChild"HumanoidRootPart" then return end
    game:GetService("VirtualInputManager"):SendKeyEvent(
        true,
        use,
        false,
        game.Players.LocalPlayer.Character.HumanoidRootPart
    )
    task.wait(hold)
    game:GetService("VirtualInputManager"):SendKeyEvent(
        false,
        use,
        false,
        game.Players.LocalPlayer.Character.HumanoidRootPart
    )
end
function Tween(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance <= 100 then
        Speed = 100
    elseif Distance >= 100 then
        Speed = 340
    end
    if getgenv().Cf["Start Hunt"] then
        game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        ):Play()
    else
        game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        ):Cancel()
    end
end
spawn(function()
    while task.wait() do
        pcall(function()
            if getgenv().Cf["Start Hunt"] then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
                local Highlight = Instance.new("Highlight")
                Highlight.FillColor = Color3.new(0, 255, 0)
                Highlight.OutlineColor = Color3.new(0, 255, 0)
                Highlight.Parent = game.Players.LocalPlayer.Character
            else
                game:GetService("Players").LocalPlayer.Character:FindFirstChild("Highlight"):Destroy()
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
        end)
    end
end)
function HOP()
local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                -- delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(.1)
                end
            end
        end
    end
    function Teleport() 
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end
spawn(function()
    pcall(function()
        while task.wait()do 
            for a,b in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren())do 
                if b:IsA("Tool")then 
                    if b:FindFirstChild("RemoteFunctionShoot")then 
                        CurrentEquipGun = b.Name 
                    end 
                end 
            end 
        end 
    end)
end)
spawn(function()
    while wait() do
        pcall(function()
            if getgenv().Cf["Start Hunt"] then
                for i, v in pairs(game.Players:GetPlayers()) do 
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        if v.Humanoid.Health > 0 then
                            plyselecthunthelpold = v.Humanoid.Health
                            repeat task.wait()
                                NameTarget = v.Name
                                while wait() do
                                    a = math.random(5,10)
                                    b = 3
                                    c = math.random(5,10)
                                    NormalPos = Cframe.new(a,b,c)
                                    SafePos = Cframe.new(0,500,0)
                                end
                                local MyHealth = game.Players.LocalPlayer.Character.Humanoid.Health
                                if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
                                    if MyHealth <= getgenv().Cf["Low Health"] then
                                        Tween(v.HumanoidRootPart.CFrame * SafePos)
                                    elseif MyHealth >= getgenv().Cf["Max Health"] then
                                        Tween(v.HumanoidRootPart.CFrame * NormalPos)
                                    end
                                elseif tostring(game.Players.LocalPlayer.Team) == "Marines" then
                                    if game.Players[NameTarget].Team ~= game.Players.LocalPlayer.Team then
                                        if MyHealth <= getgenv().Cf["Low Health"] then
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(10,1000,10))
                                        elseif MyHealth >= getgenv().Cf["Max Health"] then
                                            Tween(v.HumanoidRootPart.CFrame * NormalPos)
                                        end
                                    end
                                end
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                                    spawn(function()
                                        StartCheckTarget = true
                                        while wait() do
                                            if getgenv().Cf["Melee"]["Enabled"] then
                                                Melee()
                                                if getgenv().Cf["Melee"]["Z"]["Enabled"] then
                                                    Use(getgenv().Cf["Melee"]["Z"]["HoldTime"],Z)
                                                end
                                                if getgenv().Cf["Melee"]["X"]["Enabled"] then
                                                    Use(getgenv().Cf["Melee"]["Z"]["HoldTime"],X)
                                                end
                                                if getgenv().Cf["Melee"]["C"]["Enabled"] then
                                                    Use(getgenv().Cf["Melee"]["C"]["HoldTime"],C)
                                                end
                                            end
                                            task.wait(getgenv().Cf["Melee"]["Time"])
                                            if getgenv().Cf["Sword"]["Enabled"] then
                                                Sword()
                                                if getgenv().Cf["Sword"]["Z"]["Enabled"] then
                                                    Use(getgenv().Cf["Sword"]["Z"]["HoldTime"],Z)
                                                end
                                                if getgenv().Cf["Sword"]["X"]["Enabled"] then
                                                    Use(getgenv().Cf["Sword"]["Z"]["HoldTime"],X)
                                                end
                                            end
                                            task.wait(getgenv().Cf["Sword"]["Time"])
                                            if getgenv().Cf["Gun"]["Enabled"] then
                                                Gun()
                                                game:GetService("Players").LocalPlayer.Character[CurrentEquipGun].RemoteFunctionShoot:InvokeServer(v.HumanoidRootPart.Position,v.HumanoidRootPart)
                                                if getgenv().Cf["Gun"]["Z"]["Enabled"] then
                                                    Use(getgenv().Cf["Gun"]["Z"]["HoldTime"],Z)
                                                end
                                                if getgenv().Cf["Gun"]["X"]["Enabled"] then
                                                    Use(getgenv().Cf["Gun"]["Z"]["HoldTime"],X)
                                                end
                                            end
                                            task.wait(getgenv().Cf["Gun"]["Time"])
                                            if getgenv().Cf["Fruit"]["Enabled"] then
                                                Fruit()
                                                if getgenv().Cf["Fruit"]["Z"]["Enabled"] then
                                                    Use(getgenv().Cf["Fruit"]["Z"]["HoldTime"],Z)
                                                end
                                                if getgenv().Cf["Fruit"]["X"]["Enabled"] then
                                                    Use(getgenv().Cf["Fruit"]["Z"]["HoldTime"],X)
                                                end
                                                if getgenv().Cf["Fruit"]["C"]["Enabled"] then
                                                    Use(getgenv().Cf["Fruit"]["C"]["HoldTime"],C)
                                                end
                                                if getgenv().Cf["Fruit"]["V"]["Enabled"] then
                                                    Use(getgenv().Cf["Fruit"]["V"]["HoldTime"],V)
                                                end
                                                if getgenv().Cf["Fruit"]["F"]["Enabled"] then
                                                    Use(getgenv().Cf["Fruit"]["F"]["HoldTime"],F)
                                                end
                                            end
                                            task.wait(getgenv().Cf["Fruit"]["Time"])
                                            if getgenv().Cf["Auto V3"] then
                                                while wait() do
                                                    game:GetService("VirtualInputManager"):SendKeyEvent(true,T,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                    game:GetService("VirtualInputManager"):SendKeyEvent(false,T,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                end
                                            end
                                            if getgenv().Cf["Auto V4"] then
                                                while wait() do
                                                game:GetService("VirtualInputManager"):SendKeyEvent(true,Y,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                game:GetService("VirtualInputManager"):SendKeyEvent(false,Y,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                                                end
                                            end
                                        end
                                    end)
                                end
                                if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") and getgenv().Cf["Auto Buso"] then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                end
                                if getgenv().Cf["Auto Ken"] then 
                                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
                                end
                                if v.Humanoid.Health ~= 0 then
                                    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):FindFirstChild("SayMessageRequest"):FireServer(getgenv().Cf["Chat When Hunt"], "All")
                                end
                                if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                                end
                                while true do
                                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then 
                                        task.wait(99)
                                        HOP()
                                    end
                                end
                                Click()
                                v.HumanoidRootPart.CanCollide = false
                                TargetSelectHunt = v.Humanoid
                                until getgenv().Cf["Start Hunt"] == false or v.Humanoid.Health == 0 or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or not v.Parent or NextplySelect == true
                                TargetPlayerAim = v.Humanoid.Head
                                NextplySelect = false
                                StartCheckTarget = false
                            end
                        end
                    end
                end
            end)
        end
    end)
spawn(function()
    pcall(function()
        while wait() do
            if getgenv().Cf["Start Hunt"] then
                if TargetSelectHunt ~= nil then
                    if StartCheckTarget then
                        wait(7)
                        if TargetSelectHunt.Health == TargetSelectHunt.MaxHealth or TargetSelectHunt.Health >= plyselecthunthelpold then
                            NextplySelect = true
                            TargetSelectHunt = nil
                        end
                    end
                end
            end
        end
    end)
end)
spawn(function()
    pcall(function()
        game:GetService("RunService").RenderStepped:connect(function()
            while task.wait() do
                if getgenv().Cf["Start Hunt"] and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                    local args = {
                        [1] = game:GetService("Players"):FindFirstChild(TargetPlayerAim).Character.HumanoidRootPart.Position
                    }
                    game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                end
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name == NameTarget then
                        PlayersPosition = v.Character.HumanoidRootPart.Position
                    end
                end
                local args = {
                    [0] = PlayersPosition,
                    [1] = game:GetService("Players"):FindFirstChild(NameTarget).Character.HumanoidRootPart
                  }
                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteFunctionShoot:InvokeServer(unpack(args))
            end
        end)
    end)
end)
spawn(function()
    while wait() do
        if getgenv().Cf["Buy Item"] then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
        end
    end
end)
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if Playersaimbot ~= nil then
                        args[2] = PlayersPosition
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if getgenv().Cf["Start Hunt"] then
                        if  game.Players:FindFirstChild(NameTarget) then
                            args[2] = PlayersPosition
                            return old(unpack(args))
                        end
                    end
                end
            end
        end
        return old(...)
    end)
end)
if getgenv().Cf["Remove Terrain"] then
    loadstring(Game:HttpGet("https://raw.githubusercontent.com/JewhisKids/NewFreeScript/main/Misc/SuperFpsBoost.lua"))()
end
if getgenv().Cf["Black Screen"] then
    BlackScreen = game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen
    DefaultSize = BlackScreen.Size
    NewSize = UDim2.new(500, 0, 500, 500)
    BlackScreen.Size = NewSize
elseif not getgenv().Cf["Black Screen"] then
    BlackScreen.Size = UDim2.new(DefaultSize)
end 
-- ui 
local HubName = "Lùa Hub | Auto Bounty"
local LogoImage = "http://www.roblox.com/asset/?id=15297431935"
local ColorTheme = Color3.fromRGB(0,0,255)
local BountyWhenStart = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function dragify(Frame, object)
    dragToggle = nil
    dragSpeed = .25
    dragInput = nil
    dragStart = nil
    dragPos = nil
    function updateInput(input)
        Delta = input.Position - dragStart
        Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        game:GetService("TweenService"):Create(object, TweenInfo.new(dragSpeed), {Position = Position}):Play()
    end
    Frame.InputBegan:Connect(
        function(input)
            if
                (input.UserInputType == Enum.UserInputType.MouseButton1 or
                    input.UserInputType == Enum.UserInputType.Touch)
            then
                dragToggle = true
                dragStart = input.Position
                startPos = object.Position
                input.Changed:Connect(
                    function()
                        if (input.UserInputState == Enum.UserInputState.End) then
                            dragToggle = false
                        end
                    end
                )
            end
        end
    )
    Frame.InputChanged:Connect(
        function(input)
            if
                (input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch)
            then
                dragInput = input
            end
        end
    )
    game:GetService("UserInputService").InputChanged:Connect(
    function(input)
        if (input == dragInput and dragToggle) then
            updateInput(input)
        end
    end
    )
end
local MINIGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Logo = Instance.new("ImageLabel")
local MainCorner = Instance.new("UICorner")
local Name = Instance.new("TextLabel")
local Text_1 = Instance.new("TextLabel")
local Text_2 = Instance.new("TextLabel")
local Text_3 = Instance.new("TextLabel")
local ProfileName = Instance.new("TextLabel")
local ProfileImage = Instance.new("ImageLabel")
MINIGui.Name = "MINIGui"
MINIGui.Parent = game.CoreGui
MINIGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MainFrame.Name = "MainFrame"
MainFrame.Parent = MINIGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.Position = UDim2.new(0.499723464, 0, 0.499925077, 0)
MainFrame.Size = UDim2.new(0, 502, 0, 263)
MainFrame.ZIndex = 0
MainCorner.Name = "MainCorner"
MainCorner.Parent = MainFrame
Logo.AnchorPoint = Vector2.new(0.5, 0.5)
Logo.Name = "Logo"
Logo.Parent = MainFrame
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.5, 0, 0.5, 0)
Logo.Size = UDim2.new(0, 300, 0, 300)
Logo.Image = LogoImage
Logo.ImageTransparency = 0.8
Name.Name = "Name"
Name.Parent = MainFrame
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.ClipsDescendants = true
Name.Position = UDim2.new(0.0520229861, 0, 0.0283840168, 0)
Name.Size = UDim2.new(0, 448, 0, 39)
Name.Font = Enum.Font.GothamBold
Name.Text = HubName
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextSize = 32.000
ProfileName.Name = "ProfileName"
ProfileName.Parent = MainFrame
ProfileName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ProfileName.BackgroundTransparency = 1.000
ProfileName.ClipsDescendants = true
ProfileName.Position = UDim2.new(0.38, 0, 0.28, 0)
ProfileName.Size = UDim2.new(0, 318, 0, 25)
ProfileName.Font = Enum.Font.Gotham
ProfileName.Text = "Target Name : "..game.Players.LocalPlayer.Name
ProfileName.TextColor3 = Color3.fromRGB(255, 255, 255)
ProfileName.TextSize = 22.000
ProfileName.TextXAlignment = Enum.TextXAlignment.Left
Text_1.Name = "Text_1"
Text_1.Parent = MainFrame
Text_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_1.BackgroundTransparency = 1.000
Text_1.ClipsDescendants = true
Text_1.Position = UDim2.new(0.38, 0, 0.40, 0)
Text_1.Size = UDim2.new(0, 318, 0, 25)
Text_1.Font = Enum.Font.Gotham
Text_1.Text = "Current Bounty : 10,000,000"
Text_1.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_1.TextSize = 22.000
Text_1.TextXAlignment = Enum.TextXAlignment.Left
Text_2.Name = "Text_2"
Text_2.Parent = MainFrame
Text_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_2.BackgroundTransparency = 1.000
Text_2.ClipsDescendants = true
Text_2.Position = UDim2.new(0.38, 0, 0.52, 0)
Text_2.Size = UDim2.new(0, 317, 0, 25)
Text_2.Font = Enum.Font.Gotham
Text_2.Text = "Earned Bounty : 10,000,000"
Text_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_2.TextSize = 22.000
Text_2.TextXAlignment = Enum.TextXAlignment.Left
Text_3.Name = "Text_3"
Text_3.Parent = MainFrame
Text_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text_3.BackgroundTransparency = 1.000
Text_3.ClipsDescendants = true
Text_3.Position = UDim2.new(0.38, 0, 0.64, 0)
Text_3.Size = UDim2.new(0, 317, 0, 25)
Text_3.Font = Enum.Font.Gotham
Text_3.Text = "Time Elapsed : 59 M - 59 S"
Text_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Text_3.TextSize = 22.000
Text_3.TextXAlignment = Enum.TextXAlignment.Left
ProfileImage.Parent = MainFrame
ProfileImage.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ProfileImage.BackgroundTransparency = 0
ProfileImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
ProfileImage.BorderSizePixel = 0
ProfileImage.Position = UDim2.new(0.0517928302, 0, 0.243346125, 0)
ProfileImage.Size = UDim2.new(0, 148, 0, 148)
ProfileImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.UserId .. "&width=420&height=420&format=png"
local UiToggle_UiStroke1 = Instance.new("UIStroke")
UiToggle_UiStroke1.Color = ColorTheme
UiToggle_UiStroke1.Thickness = 2
UiToggle_UiStroke1.Name = "UiToggle_UiStroke1"
UiToggle_UiStroke1.Parent = MainFrame
local Corner1 = Instance.new("UICorner")
Corner1.Name = "Corner"
Corner1.Parent = ProfileImage
Corner1.CornerRadius = UDim.new(0, 100)
local UiStroke1_1 = Instance.new("UIStroke")
UiStroke1_1.Color = ColorTheme
UiStroke1_1.Thickness = 2
UiStroke1_1.Name = "UiToggle_UiStroke1"
UiStroke1_1.Parent = ProfileImage
dragify(MainFrame, MainFrame)
local TimeElapsed = true
local TimeCount_S = 0
local TimeCount_M = 0
while TimeElapsed do
    wait(1)
    TimeCount_S = TimeCount_S + 1
    if TimeCount_S > 60 then
        TimeCount_S = 0
        TimeCount_M = TimeCount_M + 1
    end
    Text_3.Text = "Time Elapsed : "..TimeCount_M.." M - "..TimeCount_S.." S"
end
Text_1.Text = "Current Bounty : 9e9"
Text_2.Text = "Earned Bounty : 9e9"
spawn(function()
    while wait() do
		pcall(function()
            local BountyNow = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
            local gotBounty = BountyNow - BountyWhenStart
            Text_1.Text = "Earned Bounty : "..gotBounty
            Text_2.Text = "Current Bounty : "..BountyNow
            ProfileImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players[NameTarget].UserId.."&width=420&height=420&format=png"
            ProfileName.Text = "Target Name : "..game.Players[NameTarget].Name
		end)
    end
end)
