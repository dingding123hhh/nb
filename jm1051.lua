
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/LOL/main/Orion.lua", true))()
local Window = OrionLib:MakeWindow({Name = 'YFHUB', HidePremium = false, SaveConfig = true, ConfigFolder = 'OrionTest', IntroText = 'YFHUB BY YF'})
OrionLib:MakeNotification({
    Name = '尊敬的用户：',
    Content = '感谢您支持YF！',
    Image = 'rbxassetid://4483345998',
    Time = 5
})

local Fram = Window:MakeTab({
    Name = '资源类',
    Icon = 'rbxassetid://7733771891',
    PremiumOnly = false
})
local Cheat = Window:MakeTab({
    Name = '修改类',
    Icon = 'rbxassetid://7733771891',
    PremiumOnly = false
})
Fram:AddDropdown({
    Name = '瞬移',
    Default = '',
    Options = {'银行','珠宝店','沙滩','武器店（撬锁）','武士刀','射线枪','加特林','锯掉','沙漠之鹰','警察局（M4A1）','AUG','军事基地（军甲）'},
    Callback = function(Value)
    local epoh2 = game:GetService('Players')
    local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
    if Value == '银行' then
        local epoh1 = CFrame.new(1055.94153, 15.11950874, -344.58374)
        epoh3.CFrame = epoh1
    elseif Value == '珠宝店' then
        local epoh1 = CFrame.new(1719.02637, 14.2831011, -714.293091)
        epoh3.CFrame = epoh1
    elseif Value == '沙滩' then
        local epoh1 = CFrame.new(998.4656372070312, 15, 395.9789733886719)
        epoh3.CFrame = epoh1
    elseif Value == '武器店（撬锁）' then
        local epoh1 = CFrame.new(660.5284423828125, 6.4081127643585205, -716.489990234375)
        epoh3.CFrame = epoh1
    elseif Value == '武士刀' then
        local epoh1 = CFrame.new(175.191, 13.937, -132.69)
        epoh3.CFrame = epoh1
    elseif Value == '射线枪' then
        local epoh1 = CFrame.new(148.685471, -90, -529.280945)
        epoh3.CFrame = epoh1
    elseif Value == '加特林' then
        local epoh1 = CFrame.new(364.97076416015625, 0.764974117279053, -1447.3302001953125)
        epoh3.CFrame = epoh1
    elseif Value == '锯掉' then
        local epoh1 = CFrame.new(1179.98523,40,-436.812683)
        epoh3.CFrame = epoh1
    elseif Value == '沙漠之鹰' then
        local epoh1 = CFrame.new(363.341461, 26.0798492, -259.681396)
        epoh3.CFrame = epoh1
    elseif Value == '警察局（M4A1）' then
        local epoh1 = CFrame.new(603.4676513671875,25.662811279296875,-922.0442504882812)
        epoh3.CFrame = epoh1
    elseif Value == 'AUG' then
        local epoh1 = CFrame.new(1170.500244140625,48.37138366699219,-772.55859375)
        epoh3.CFrame = epoh1
    elseif Value == '军事基地（军甲）' then
        local epoh1 = CFrame.new(563.4422607421875,28.502071380615234,-1472.780517578125)
        epoh3.CFrame = epoh1
    end
    end
})
Fram:AddToggle({
    Name = '银行刷新提醒',
    Callback = function(Value)
    Bank1 = Value
        if Bank1 then
            Bank2()
        end
    end    
})
Bank2 = function()
    while Bank1 do
    wait(0.1)
    local Bank = game:GetService('Workspace').BankRobbery.BankCash.Cash:FindFirstChild('Bundle')
        if Bank then
            OrionLib:MakeNotification({
                Name = '提示：',
                Content = '银行已刷新！',
                Image = 'rbxassetid://4483345998',
                Time = 5
            })
            wait(30)
        end
    end
end
Fram:AddToggle({
    Name = '珠宝店刷新提醒',
    Callback = function(Value)
    Gem1 = Value
        if Gem1 then
            Gem2()
        end
    end    
})
Gem2 = function()
    while Gem1 do
    wait(0.1)
    local Ge = game:GetService('Workspace').GemRobbery:FindFirstChild('Rubble')
        if Ge then
            OrionLib:MakeNotification({
                Name = '提示：',
                Content = '珠宝店已刷新！',
                Image = 'rbxassetid://4483345998',
                Time = 5
            })
            wait(30)
        end
    end
end
Fram:AddToggle({
    Name = '自动银行',
    Callback = function(Value)
    AutoBank1 = Value
        if AutoBank1 then
            AutoBank2()
        end
    end    
})
AutoBank2 = function()
    while AutoBank1 do
        wait()
        local BankDoor = game:GetService("Workspace").BankRobbery.VaultDoor
        local BankCashs = game:GetService("Workspace").BankRobbery.BankCash
        local epoh2 = game:GetService('Players')
        local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
        if BankDoor.Door.Attachment.ProximityPrompt.Enabled == true then
            BankDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
            BankDoor.Door.Attachment.ProximityPrompt.MaxActivationDistance = 16
            local epoh1 = CFrame.new(1071.955810546875, 9, -343.80816650390625)
            epoh3.CFrame = epoh1
           wait(1)
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldBegin()
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldEnd()
            BankDoor.Door.Attachment.ProximityPrompt.Enabled = false
        end
        if BankCashs.Cash.Bundle then
            local epoh1 = CFrame.new(1055.872802734375, 10, -344.6944580078125)
            epoh3.CFrame = epoh1
            BankCashs.Main.Attachment.ProximityPrompt.MaxActivationDistance = 16
            if BankCashs.Cash.Bundle then
            BankCashs.Main.Attachment.ProximityPrompt:InputHoldBegin()
            wait(45)
            BankCashs.Main.Attachment.ProximityPrompt:InputHoldEnd()
            local epoh1 = CFrame.new(240.52850341796875, -120, -620)
            epoh3.CFrame = epoh1
            end
        end   
        if not BankCashs.Cash.Bundle then
            local epoh1 = CFrame.new(240.52850341796875, -120, -620)
            epoh3.CFrame = epoh1
        end
    end
end
Fram:AddToggle({
    Name = '自动金保险',
    Callback = function(Value)
    AutoSafe1 = Value
        if AutoSafe1 then
            AutoSafe2()
        end
    end    
})
AutoSafe2 = function()
    while AutoSafe1 do
        wait()
        local BankDoor = game:GetService("Workspace").BankRobbery.VaultDoor
        local epoh2 = game:GetService('Players')
        local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
        if BankDoor.Door.Attachment.ProximityPrompt.Enabled == true then
            BankDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
            BankDoor.Door.Attachment.ProximityPrompt.MaxActivationDistance = 16
            local epoh1 = CFrame.new(1071.955810546875, 9, -343.80816650390625)
            epoh3.CFrame = epoh1
            wait(1)
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldBegin()
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldEnd()
            BankDoor.Door.Attachment.ProximityPrompt.Enabled = false
        end
        local GoldJewelSafes = game:GetService("Workspace").Game.Entities.GoldJewelSafe
        local foundModel = false
        for _, model in pairs(GoldJewelSafes:GetChildren()) do
            if model.ClassName == 'Model' then
                foundModel = true
                local epoh1 = model.WorldPivot
                epoh3.CFrame = epoh1
                wait(1)
                model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
                model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.MaxActivationDistance = 16
                if model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.Enabled == true then
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldBegin()
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldEnd()
                    wait(5)
                    model:Destroy()
                    break
                end
            end
        end
        if not foundModel then
            OrionLib:MakeNotification({
                Name = '提示：',
                Content = '金保险未刷新！',
                Image = 'rbxassetid://4483345998',
                Time = 5
            })
            wait(30)
        end
    end
end
Fram:AddToggle({
    Name = '自动黑保险',
    Callback = function(Value)
    AutoSafe3 = Value
        if AutoSafe3 then
            AutoSafe4()
        end
    end    
})
AutoSafe4 = function()
    while AutoSafe3 do
        wait()
        local BankDoor = game:GetService("Workspace").BankRobbery.VaultDoor
        local epoh2 = game:GetService('Players')
        local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
        if BankDoor.Door.Attachment.ProximityPrompt.Enabled == true then
            BankDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
            BankDoor.Door.Attachment.ProximityPrompt.MaxActivationDistance = 16
            local epoh1 = CFrame.new(1071.955810546875, 9, -343.80816650390625)
            epoh3.CFrame = epoh1
            wait(1)
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldBegin()
            BankDoor.Door.Attachment.ProximityPrompt:InputHoldEnd()
            BankDoor.Door.Attachment.ProximityPrompt.Enabled = false
        end
        local JewelSafes = game:GetService("Workspace").Game.Entities.JewelSafe
        local foundModel = false
        for _, model in pairs(JewelSafes:GetChildren()) do
            if model.ClassName == 'Model' then
                foundModel = true
                local epoh1 = model.WorldPivot
                epoh3.CFrame = epoh1
                wait(1)
                model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
                model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.MaxActivationDistance = 16
                if model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.Enabled == true then
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldBegin()
                    model.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt:InputHoldEnd()
                    wait(5)
                    model:Destroy()
                end
            end
        end
        if not foundModel then
            OrionLib:MakeNotification({
                Name = '提示：',
                Content = '黑保险未刷新！',
                Image = 'rbxassetid://4483345998',
                Time = 5
            })
            wait(30)
        end
    end
end
Fram:AddToggle({
    Name = '自动小宝箱',
    Default = false,
    Callback = function(Value)
    SmallChest1 = Value
        if SmallChest1 then
            SmallChest2()
        end
    end    
})
SmallChest2 = function()
    while SmallChest1 do
    wait()
    local SmallChes = game:GetService('Workspace').Game.Entities.SmallChest
        local foundModel = false
        for _, model in pairs(SmallChes:GetChildren()) do
            if model.ClassName == 'Model' then
                foundModel = true
                local epoh1 = model.WorldPivot
                local epoh2 = game:GetService('Players')
                local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
                epoh3.CFrame = epoh1
                wait(0.3)
                model.Lock["Meshes/untitled_chest.002_Material.009 (4)"].Attachment.ProximityPrompt:InputHoldBegin()
                model.Lock["Meshes/untitled_chest.002_Material.009 (4)"].Attachment.ProximityPrompt:InputHoldEnd()
                wait(0.3)
                local epoh1 = CFrame.new(240.52850341796875, -120, -620)
                epoh3.CFrame = epoh1
                break
            end
        end
        if not foundModel then
            OrionLib:MakeNotification({
                Name = '提示：',
                Content = '小宝箱未刷新！',
                Image = 'rbxassetid://4483345998',
                Time = 5
            })
            wait(30)
        end
    end
end
Fram:AddToggle({
    Name = '瞬移大宝箱',
    Default = false,
    Callback = function(Value)
    LargeChest1 = Value
        if LargeChest1 then
            LargeChest2()
        end
    end    
})
LargeChest2 = function()
    while LargeChest1 do
    wait()
    local LargeChes = game:GetService('Workspace').Game.Entities.LargeChest
        local foundModel = false
        for _, model in pairs(LargeChes:GetChildren()) do
            if model.ClassName == 'Model' then
                foundModel = true
                local epoh1 = model.WorldPivot
                local epoh2 = game:GetService('Players')
                local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
                epoh3.CFrame = epoh1
                wait(0.3)
                model.Door["Meshes/LargeSafe1_Cube.002_Cube.003_None (3)"].Attachment.ProximityPrompt:InputHoldBegin()
                model.Door["Meshes/LargeSafe1_Cube.002_Cube.003_None (3)"].Attachment.ProximityPrompt:InputHoldEnd()
                wait(0.3)
                local epoh1 = CFrame.new(240.52850341796875, -120, -620)
                epoh3.CFrame = epoh1
                break
            end
        end
        if not foundModel then
            OrionLib:MakeNotification({
                Name = '提示：',
                Content = '大宝箱未刷新！',
                Image = 'rbxassetid://4483345998',
                Time = 5
            })
            wait(30)
        end
    end
end

Fram:AddToggle({
    Name = '瞬移小保险+秒开',
    Default = false,
    Callback = function(Value)
    SmallSafe1 = Value
        if SmallSafe1 then
            SmallSafe2()
        end
    end    
})
SmallSafe2 = function()
    while SmallSafe1 do
    wait(0.1)
    local SmallSaf = game:GetService('Workspace').Game.Entities.SmallSafe
        local foundModel = false
        for _, model in pairs(SmallSaf:GetChildren()) do
            if model.ClassName == 'Model' then
                foundModel = true 
                local epoh1 = model.WorldPivot
                local epoh2 = game:GetService('Players')
                local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
                SmallSaf.SmallSafe.Door['Meshes/Safe1_Cube.002_Cube.003_None (1)'].Attachment.ProximityPrompt.HoldDuration = 0
                epoh3.CFrame = epoh1
                break
            end
        end
        if not foundModel then
            OrionLib:MakeNotification({
                Name = '提示：',
                Content = '小保险未刷新！',
                Image = 'rbxassetid://4483345998',
                Time = 5
            })
            wait(30)
        end
    end
end
Fram:AddToggle({
    Name = '瞬移印钞机',
    Default = false,
    Callback = function(Value)
    MoneyPrint1 = Value
        if MoneyPrint1 then
            MoneyPrint2()
        end
    end    
})
MoneyPrint2 = function()
    while MoneyPrint1 do
    wait(0.1)
    while true do
            for i,l in pairs(game:GetService('Workspace').Game.Entities.ItemPickup:GetChildren()) do
                for i,v in pairs(l:GetChildren()) do
                    if v.ClassName == 'MeshPart' or 'Part' then
                        for i,e in pairs(v:GetChildren()) do
                            if e.ClassName == 'ProximityPrompt' then
                                if e.ObjectText == 'Money Printer' then
                                    local epoh1 = v.CFrame
                                    local epoh2 = game:GetService('Players')
                                    local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
                                    epoh3.CFrame = epoh1
                                else

                                end
                            end
        
                        end
        
                    end
        
        
                end
            end
        
            wait (0.1)
            for i,v in pairs (game:GetService('Workspace').Game.Entities.ItemPickup:GetChildren()) do
                for i,k in pairs(v:GetChildren()) do
                    for i,l in pairs(k:GetChildren()) do
                        if l.ClassName == 'BillboardGui' then
                            l:Remove()
                        end
                    end
                end
            end
        
        end
end
end
Fram:AddToggle({
    Name = '远程黑市',
    Default = false,
    Callback = function(Value)
    Dealer1 = Value
        if Dealer1 then
            Dealer2()
        end
    end    
})
Fram:AddButton({
    Name = '瞬移宝藏+秒挖',
    Default = false,
    Callback = function(Value)
    Debris1 = Value
        if Debris1 then
            Debris2()
        end
    end    
})
Debris2 = function()
    local Debri = game:GetService('Workspace').Game.Local.Debris
    if Debri.TreasureMarker then
    Debri.TreasureMarker.ProximityPrompt.HoldDuration = 0
    Debri.TreasureMarker.ProximityPrompt.MaxActivationDistance = 40
    local epoh1 = Debri.TreasureMarker.CFrame
    local epoh2 = game:GetService('Players')
    local epoh3 = epoh2.LocalPlayer.Character.HumanoidRootPart
    epoh3.CFrame = epoh1
    else
    OrionLib:MakeNotification({
        Name = '提示：',
        Content = '您未持有藏宝图！',
        Image = 'rbxassetid://4483345998',
        Time = 5
    })
    end
end

Fram:AddButton({
    Name = '远程保险（Z）',
    Value = false,
    Callback = function(Value)
    game:GetService('Players').LocalPlayer.PlayerGui.Backpack.Holder.Locker.Visible = true
    end    
})
Fram:AddButton({
    Name = '秒拿珠宝店',
    Callback = function()
    local rocks = game:GetService('Workspace').GemRobbery.JewelryCases.HighYieldSpawns
    for _, obj in pairs(rocks:GetChildren()) do
        if obj.ClassName == 'Model' then
            for _, innerObj in pairs(obj:GetChildren()) do
                if innerObj.ClassName == 'Model' then
                    if innerObj.Name == 'Case' then
                    elseif innerObj.Name == 'Emerald' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Sapphire' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Amethyst' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Topaz' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end                     
                    elseif innerObj.Name == 'Diamond' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Gold Bar' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Ruby' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    else
                        if innerObj:FindFirstChild('Box') and innerObj.Box:FindFirstChild('ProximityPrompt') then
                            innerObj.Box.ProximityPrompt.HoldDuration = 0
                        end
                    end
                end
            end
        end
    end
    local rocks2 = game:GetService('Workspace').GemRobbery.JewelryCases.LowYieldSpawns
    for _, obj in pairs(rocks2:GetChildren()) do
        if obj.ClassName == 'Model' then
            for _, innerObj in pairs(obj:GetChildren()) do
                if innerObj.ClassName == 'Model' then
                    if innerObj.Name == 'Case' then
                    elseif innerObj.Name == 'Emerald' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Sapphire' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Amethyst' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Topaz' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Diamond' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Gold Bar' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    elseif innerObj.Name == 'Ruby' then
                        if innerObj:FindFirstChild('Handle') and innerObj.Handle:FindFirstChild('ProximityPrompt') then
                            innerObj.Handle.ProximityPrompt.HoldDuration = 0
                        end
                    else
                        if innerObj:FindFirstChild('Box') and innerObj.Box:FindFirstChild('ProximityPrompt') then
                            innerObj.Box.ProximityPrompt.HoldDuration = 0
                        end
                    end
                end
            end
        end
    end
    end    
})
Dealer2 = function()
    while Dealer1 do
    wait(0.1)
    game:GetService('Workspace').BlackMarket.Dealer.Dealer.ProximityPrompt.MaxActivationDistance = 100000
    end
    while not Dealer1 do
    wait(0.1)
    game:GetService('Workspace').BlackMarket.Dealer.Dealer.ProximityPrompt.MaxActivationDistance = 16
    end
end
Fram:AddButton({
    Name = '空投秒拿(Q)',
    Callback = function()
        wait(0.1)
        game:GetService('Workspace').Game.Airdrops.Airdrop.Airdrop.ProximityPrompt.HoldDuration = 0
    end    
})
Fram:AddButton({
    Name = '秒开银行+微距离(E)',
    Callback = function()
    game:GetService('Workspace').BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
    game:GetService('Workspace').BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.MaxActivationDistance = 16
    game:GetService('Workspasce').BankRobbery.BankCash.Main.Attachment.ProximityPrompt.MaxActivationDistance = 16
    end    
})
Fram:AddButton({
    Name = '秒开金保险(R)',
    Callback = function()
    while true do
        wait(0.1)
        local safe = game:GetService('Workspace').Game.Entities.GoldJewelSafe.GoldJewelSafe
        safe.Door['Meshes/LargeSafe_Cube.002_Cube.003_None (1)'].Attachment.ProximityPrompt.HoldDuration = 0
        safe.Name = 'safeopen'
    end
    end    
})
Fram:AddButton({
    Name = '秒开黑保险(T)',
    Callback = function()
    while true do
        wait(0.1)
        local safe2 = game:GetService('Workspace').Game.Entities.JewelSafe.JewelSafe
        safe2.Door['Meshes/LargeSafe_Cube.002_Cube.003_None (1)'].Attachment.ProximityPrompt.HoldDuration = 0
        safe2.Name = 'safeopen' 
    end
    end    
})
Cheat:AddTextbox({
    Name = '范围',
    Default = '',
    TextDisappear = true,
    Callback = function(Value)
        _G.HeadSize = Value
        _G.Disabled = true
        game:GetService('RunService').RenderStepped:connect(function()
        if _G.Disabled then
            for i,v in next, game:GetService('Players'):GetPlayers() do
                if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                pcall(function()
                    v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                    v.Character.HumanoidRootPart.Transparency = 0.7
                    v.Character.HumanoidRootPart.CanCollide = false
                    end)
                    end
                end
            end
        end)
    end   
})
Cheat:AddToggle({
    Name = '残血自动逃逸',
    Value = false,
    Callback = function(Value)
    paolu1 = Value
        if paolu1 then
            paolu2()
        end
    end    
})
paolu2 = function()
    while paolu1 do
    wait(0.1)
    if game:GetService('Players').LocalPlayer.Character.Humanoid.Health <= 35 then
        local og1 = CFrame.new(175.191, 13.937, -132.69)
        local og3 = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
        og3.CFrame = og1
        wait(20)
    end
    end
end
Cheat:AddToggle({
    Name = '最大视野',
    Callback = function(Value)
    Cam1 = Value
        if Cam1 then
            Cam2()
        end
    end    
})
Cam2 = function()
    while Cam1 do
    wait(0.1)
    game:GetService('Players').LocalPlayer.CameraMaxZoomDistance = 1000
    end
    while not Cam1 do
    wait(0.1)
    game:GetService('Players').LocalPlayer.CameraMaxZoomDistance = 32
    end
end
Cheat:AddButton({
    Name = '显示聊天框',
    Callback = function()
    ChatSee()
    end
})
ChatSee = function()
    game:GetService('Players').LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
    game:GetService('Players').LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position = UDim2.new(0, 0, 0, 40)
end
Cheat:AddButton({
    Name = '移除障碍',
    Callback = function()
    game:GetService('Workspace').InviteSigns:Destroy()
    game:GetService('Workspace').Game.Props['Trash Bag']:Destroy()
    game:GetService('Workspace').Game.Props.Dumpster:Destroy()
    game:GetService('Workspace').Game.Props['Traffic Cone']:Destroy()
    game:GetService('Workspace').Game.Props['Wire Fence']:Destroy()
    game:GetService('Workspace').Game.Props['Wood Crate']:Destroy()
    game:GetService('Workspace').Game.Props.Hydrant:Destroy()
    game:GetService('Workspace').Game.Props['Street Light']:Destroy()
    game:GetService('Workspace').Game.Props['Power Line Pole']:Destroy()
    game:GetService('Workspace').Game.Props['Wood Fence']:Destroy()
    game:GetService('Workspace').Game.Props.BusStop:Destroy()
    game:GetService('Workspace').Game.Props.Roadblock:Destroy()
    game:GetService('Workspace').Game.Props.Bollard:Destroy()
    game:GetService('Workspace').Game.Props.Light:Destroy()
    game:GetService('Workspace').Game.Props.Roadblock:Destroy()
    game:GetService('Workspace').Game.Props.Glass:Destroy()
    game:GetService('Workspace').Game.Props.Bench:Destroy()
    game:GetService('Workspace').Game.Props["Trash Bin"]:Destroy()
    game:GetService('Workspace').Game.Props.Bollard:Destroy()
    game:GetService('Workspace').Game.Props["Office Chair"]:Destroy()
    game:GetService('Workspace').Game.Props.Table:Destroy()
    game:GetService("Workspace").BankRobbery.BankWalls:Destroy()
    game:GetService("Workspace").BankRobbery.AlarmLightModel:Destroy()
    game:GetService("Workspace").BankRobbery.AlarmLights:Destroy()
    end
})
Cheat:AddButton({
    Name = '无皮肤枪械无后+微射速+左键连发',
    Callback = function()
    while true do
    wait(1)
    if game.ReplicatedStorage.Models.Items:FindFirstChild('Raygun') then
    if  game.ReplicatedStorage.Models.Items.Raygun.Handle.Muzzle:FindFirstChild('PointLight') then
        game.ReplicatedStorage.Models.Items.Raygun.Handle.Muzzle.PointLight.Name = 'PointLight1'
    end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('M1911') then
        if  game.ReplicatedStorage.Models.Items.M1911.Handle.Muzzle:FindFirstChild('PointLight') then
            game.ReplicatedStorage.Models.Items.M1911.Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('Scar L') then
        if  game.ReplicatedStorage.Models.Items['Scar L'].Handle.Muzzle:FindFirstChild('PointLight') then
            game.ReplicatedStorage.Models.Items['Scar L'].Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('Glock') then
        if  game.ReplicatedStorage.Models.Items.Glock.Handle.Muzzle:FindFirstChild('PointLight') then
        game.ReplicatedStorage.Models.Items.Glock.Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('Mossberg') then
        if  game.ReplicatedStorage.Models.Items.Mossberg.Handle.Muzzle:FindFirstChild('PointLight') then
            game.ReplicatedStorage.Models.Items.Mossberg.Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('RPG') then
        if  game.ReplicatedStorage.Models.Items.RPG.Handle.Muzzle:FindFirstChild('PointLight') then
            game.ReplicatedStorage.Models.Items.RPG.Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('USP 45') then
        if  game.ReplicatedStorage.Models.Items['USP 45'].Handle.Muzzle:FindFirstChild('PointLight') then
            game.ReplicatedStorage.Models.Items['USP 45'].Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('Sawn Off') then
        if  game.ReplicatedStorage.Models.Items['Sawn Off'].Handle.Muzzle:FindFirstChild('PointLight') then
            game.ReplicatedStorage.Models.Items['Sawn Off'].Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('Minigun') then
        if  game.ReplicatedStorage.Models.Items.Minigun.Handle.Muzzle:FindFirstChild('PointLight') then
            game.ReplicatedStorage.Models.Items.Minigun.Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('Stagecoach') then
        if  game.ReplicatedStorage.Models.Items.Stagecoach.Handle.Muzzle:FindFirstChild('PointLight') then
            game.ReplicatedStorage.Models.Items.Stagecoach.Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('Deagle') then
        if  game.ReplicatedStorage.Models.Items.Deagle.Handle.Muzzle:FindFirstChild('PointLight') then
            game.ReplicatedStorage.Models.Items.Deagle.Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('RPK') then
        if  game.ReplicatedStorage.Models.Items.RPK.Handle.Muzzle:FindFirstChild('PointLight') then
            game.ReplicatedStorage.Models.Items.RPK.Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('Glock 18') then
        if  game.ReplicatedStorage.Models.Items['Glock 18'].Handle.Muzzle:FindFirstChild('PointLight') then
            game.ReplicatedStorage.Models.Items['Glock 18'].Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('AK-47') then
        if  game.ReplicatedStorage.Models.Items['AK-47'].Handle.Muzzle:FindFirstChild('PointLight') then
            game.ReplicatedStorage.Models.Items['AK-47'].Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('Tommy Gun') then
        if  game.ReplicatedStorage.Models.Items['Tommy Gun'].Handle.Muzzle:FindFirstChild('PointLight') then
            game.ReplicatedStorage.Models.Items['Tommy Gun'].Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('M4A1') then
        if  game.ReplicatedStorage.Models.Items.M4A1.Handle.Muzzle:FindFirstChild('PointLight') then
            game.ReplicatedStorage.Models.Items.M4A1.Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('Uzi') then
        if  game.ReplicatedStorage.Models.Items.Uzi.Handle.Muzzle:FindFirstChild('PointLight') then
            game.ReplicatedStorage.Models.Items.Uzi.Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('MP7') then
        if  game.ReplicatedStorage.Models.Items.MP7.Handle.Muzzle:FindFirstChild('PointLight') then
        game.ReplicatedStorage.Models.Items.MP7.Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('AUG') then
        if  game.ReplicatedStorage.Models.Items.AUG.Handle.Muzzle:FindFirstChild('PointLight') then
        game.ReplicatedStorage.Models.Items.AUG.Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    if game.ReplicatedStorage.Models.Items:FindFirstChild('Python') then
        if  game.ReplicatedStorage.Models.Items.Python.Handle.Muzzle:FindFirstChild('PointLight') then
            game.ReplicatedStorage.Models.Items.Python.Handle.Muzzle.PointLight.Name = 'PointLight1'
        end
    end
    end
    end    
})
Cheat:AddButton({
    Name = '透视物品',
    Callback = function()
        while true do
            for i,l in pairs(game:GetService('Workspace').Game.Entities.ItemPickup:GetChildren()) do
                for i,v in pairs(l:GetChildren()) do
                    if v.ClassName == 'MeshPart' or 'Part' then
                        for i,e in pairs(v:GetChildren()) do
                            if e.ClassName == 'ProximityPrompt' then
                                if e.ObjectText == 'Military Armory Keycard' or e.ObjectText == 'Sawn Off' or e.ObjectText == 'Scar L' or e.ObjectText == 'Military Vest' or e.ObjectText == 'Raygun' or e.ObjectText == 'UPS 45' or e.ObjectText == 'Medium Vest' or e.ObjectText == 'Deagle' or e.ObjectText == 'Glock 18' or e.ObjectText == 'Heavy Vest' or e.ObjectText == 'Diamond Ring' or e.ObjectText == 'AS Val' or e.ObjectText == 'Money Printer' or e.ObjectText == 'Aug' or e.ObjectText == 'M4A1' or e.ObjectText == 'C4' or e.ObjectText == 'Stagecoach' or e.ObjectText == 'Diamond' or e.ObjectText == 'Void Gem' or e.ObjectText == 'Dark Matter Gem' or e.ObjectText == 'Gold AK-47' or e.ObjectText == 'Barrett M107' or e.ObjectText == 'Gold Deagle' or e.ObjectText == 'Double Barrel' or e.ObjectText == 'Dragunov' or e.ObjectText == 'RPK'  or e.ObjectText == 'M249 SAW' or e.ObjectText == 'Flamethrower' or e.ObjectText == 'Police Armory Keycard' or e.ObjectText == 'RPG' or e.ObjectText == 'Saiga 12' or e.ObjectText == 'Ammo Box' then
                                    xd = Instance.new('BillboardGui')
                                    xd.Parent = v
                                    xd.AlwaysOnTop = true
                                    xd.Size = UDim2.new(0, 100, 0, 25)
                                    Frame = Instance.new('Frame')
                                    Frame.Parent = xd
                                    Frame.BackgroundColor3 = Color3.new(1, 1, 1)
                                    Frame.Size = UDim2.new(1, 0, 1, 0)
                                    Frame.BackgroundTransparency = 1
                                    text = Instance.new('TextLabel')
                                    text.TextScaled = true
                                    text.BackgroundColor3 = Color3.new(255, 0, 0)
                                    text.Parent = Frame
                                    text.Text = e.ObjectText
                                    text.Size = UDim2.new(1, 0, 1, 0)
                                    text.BackgroundTransparency = 1
                                    text.TextColor3 = Color3.new(1, 1, 1)
                                else

                                end
                            end
        
                        end
        
                    end
        
        
                end
            end
            wait()
            for i,v in pairs (game:GetService('Workspace').Game.Entities.ItemPickup:GetChildren()) do
                for i,k in pairs(v:GetChildren()) do
                    for i,l in pairs(k:GetChildren()) do
                        if l.ClassName == 'BillboardGui' then
                            l:Remove()
                        end
                    end
                end
            end
        
        end
    end    
})
Cheat:AddButton({
    Name = '绘制零件',
    Callback = function()
        while true do
            for i,l in pairs(game:GetService('Workspace').Game.Entities.ItemPickup:GetChildren()) do
                for i,v in pairs(l:GetChildren()) do
                    if v.ClassName == 'MeshPart' or 'Part' then
                        for i,e in pairs(v:GetChildren()) do
                            if e.ClassName == 'ProximityPrompt' then
                                if e.ObjectText == 'Medical Supplies' or e.ObjectText == 'Weapon components' or e.ObjectText == 'Explosives' or e.ObjectText == 'Weapon Parts' or e.ObjectText == 'Scrap' then
                                    xd = Instance.new('BillboardGui')
                                    xd.Parent = v
                                    xd.AlwaysOnTop = true
                                    xd.Size = UDim2.new(0, 100, 0, 25)
                                    Frame = Instance.new('Frame')
                                    Frame.Parent = xd
                                    Frame.BackgroundColor3 = Color3.new(1, 1, 1)
                                    Frame.Size = UDim2.new(1, 0, 1, 0)
                                    Frame.BackgroundTransparency = 1
                                    text = Instance.new('TextLabel')
                                    text.TextScaled = true
                                    text.BackgroundColor3 = Color3.new(255, 0, 0)
                                    text.Parent = Frame
                                    text.Text = e.ObjectText
                                    text.Size = UDim2.new(1, 0, 1, 0)
                                    text.BackgroundTransparency = 1
                                    text.TextColor3 = Color3.new(1, 1, 1)
                                else

                                end
                            end
        
                        end
        
                    end
        
        
                end
            end
            wait()
            for i,v in pairs (game:GetService('Workspace').Game.Entities.ItemPickup:GetChildren()) do
                for i,k in pairs(v:GetChildren()) do
                    for i,l in pairs(k:GetChildren()) do
                        if l.ClassName == 'BillboardGui' then
                            l:Remove()
                        end
                    end
                end
            end
        
        end
    end    
})
Cheat:AddButton({
    Name = '秒填弹药箱',
    Callback = function()
    for i = 1 , 50 do
    local ammobx = game:GetService('Workspace').Game.Local.droppables['Ammo Box']
    ammobx.Handle.ProximityPrompt.HoldDuration = 0
    ammobx.Name = 'ammoopen'
    end
    end    
})
    