--webhook 2
	function SendFullMoon(vux)
		local Mystic = nil
		local FullMoon_X = nil
		if MysticIsland_S then
			Mystic = "✅ Mystic Island spawn.🌴"  
		else
			Mystic = "❌ Mystic Island not spawn."
		end
	
		if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
			FullMoon_X = tostring("5/5".." | ".."Full Moon 🌕 | "..tostring(game:GetService("Lighting").TimeOfDay))
		elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
			FullMoon_X = tostring("4/5".." | ".."75% | "..tostring(game:GetService("Lighting").TimeOfDay))
		elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
			FullMoon_X = tostring("3/5".." | ".."50% | "..tostring(game:GetService("Lighting").TimeOfDay))
		elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
			FullMoon_X = tostring("2/5".." | ".."25% | "..tostring(game:GetService("Lighting").TimeOfDay))
		elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
			FullMoon_X = tostring("1/5".." | ".."15% | "..tostring(game:GetService("Lighting").TimeOfDay))
		else
			FullMoon_X = tostring("0/5".." | ".."0% | "..tostring(game:GetService("Lighting").TimeOfDay))
		end
		local get_player_x = {}
		for i,v in pairs(game.Players:GetChildren()) do
			if not table.find(get_player_x,v.Name) then
				table.insert(get_player_x,v.Name)
			end
		end
		local url = vux
		local data = {
			["embeds"] = {
				{
					["color"] = tonumber(0x800080);
					["fields"] = {
						{
							["name"] = "Server Id";
							["value"] = "```yaml\n"..tostring(game.JobId).."\n```";
							["inline"] = false;
						}, {
							["name"] = "Full Moon";
							["value"] = "```yaml\n"..FullMoon_X.."\n```";
							["inline"] = true};
						{
							["name"] = "Player";
							["value"] = "```yaml\n"..tostring(#get_player_x).."/"..game:GetService("Players").MaxPlayers.."\n```";
							["inline"] = true;
						},
						{
							["name"] = "Mirage Island";
							["value"] = "```yaml\n"..tostring(Mystic).."\n```";
							["inline"] = false;
						}
					};
					["description"] = "**Join Script**\n```lua\n"..tostring('game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport","'..game.JobId..'")').."\n```";
					["author"] = {
						["name"] = "Teus Hub Finders";
						["icon_url"] = "https://cdn.discordapp.com/attachments/1257709517135679489/1304585572697903105/2024091815265416.jpg?ex=67518bbe&is=67503a3e&hm=4451df7141acc6c4ea9cb5b38207fb96a08062fefa38a6c0b523220727b06e83&";
					};
					["thumbnail"] = {
						["url"] = "https://media.discordapp.net/attachments/1258136405310181396/1308529443664560232/Captura_de_tela_2024-11-18_224241.png?ex=67516442&is=675012c2&hm=582852761a715350d574a73604fb40f1020a67e5575b571c331972ff3554cfa8&=&format=webp&quality=lossless&width=304&height=258";
					};
					["footer"] = {
						["text"] = "https://discord.gg/teuscommunity";
						["icon_url"] = "https://cdn.discordapp.com/attachments/1257709517135679489/1304585572697903105/2024091815265416.jpg?ex=67518bbe&is=67503a3e&hm=4451df7141acc6c4ea9cb5b38207fb96a08062fefa38a6c0b523220727b06e83&";
					};
					["timestamp"] = DateTime.now():ToIsoDate()
				}
			},
		}
		local newdata = game:GetService("HttpService"):JSONEncode(data)
	
		local headers = {
			["content-type"] = "application/json"
		}
		local request = http_request or request or HttpPost 
		local R = {Url = url, Body = newdata, Method = "POST", Headers = headers}
		request(R)
	end
	function SendBoss(vux,bossname)
		local get_player_x = {}
		for i,v in pairs(game.Players:GetChildren()) do
			if not table.find(get_player_x,v.Name) then
				table.insert(get_player_x,v.Name)
			end
		end
		local health_x = 100
		for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
			if v.Name == bossname then
				local health = v.Humanoid.Health
				local maxhealth = v.Humanoid.MaxHealth
				local percent = (health / maxhealth) * 100
				health_x = percent
			end
		end
		local xpt = bossname.." | "..tostring(game:GetService("Lighting").TimeOfDay)..' | '..health_x.."%"
		local url = vux
		local data = {
			["embeds"] = {
				{
					["color"] = tonumber(0x800080);
					["fields"] = {
						{
							["name"] = "Server Id";
							["value"] = "```yaml\n"..tostring(game.JobId).."\n```";
							["inline"] = false;
						}, {
							["name"] = "Boss";
							["value"] = "```yaml\n"..xpt.."\n```";
							["inline"] = true};
						{
							["name"] = "Player";
							["value"] = "```yaml\n"..tostring(#get_player_x).."/"..game:GetService("Players").MaxPlayers.."\n```";
							["inline"] = true;
						}
					};
					["description"] = "**Join Script**\n```lua\n"..tostring('game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport","'..game.JobId..'")').."\n```";
					["author"] = {
						["name"] = "Teus Hub Finders";
						["icon_url"] = "https://cdn.discordapp.com/attachments/1257709517135679489/1304585572697903105/2024091815265416.jpg?ex=67518bbe&is=67503a3e&hm=4451df7141acc6c4ea9cb5b38207fb96a08062fefa38a6c0b523220727b06e83&";
					};
					["thumbnail"] = {
						["url"] = "https://media.discordapp.net/attachments/1258136405310181396/1308529443664560232/Captura_de_tela_2024-11-18_224241.png?ex=67516442&is=675012c2&hm=582852761a715350d574a73604fb40f1020a67e5575b571c331972ff3554cfa8&=&format=webp&quality=lossless&width=304&height=258";
					};
					["footer"] = {
						["text"] = "https://discord.gg/teuscommunity";
						["icon_url"] = "https://cdn.discordapp.com/attachments/1257709517135679489/1304585572697903105/2024091815265416.jpg?ex=67518bbe&is=67503a3e&hm=4451df7141acc6c4ea9cb5b38207fb96a08062fefa38a6c0b523220727b06e83&";
					};
					["timestamp"] = DateTime.now():ToIsoDate()
				}
			},
		}
		local newdata = game:GetService("HttpService"):JSONEncode(data)
	
		local headers = {
			["content-type"] = "application/json"
		}
		local request = http_request or request or HttpPost 
		local R = {Url = url, Body = newdata, Method = "POST", Headers = headers}
		request(R)
	end
	if _G.Keep_Job == nil then
		_G.Keep_Job = {}
	end
	if _G.Keep_JobX == nil then
		_G.Keep_JobX = {}
	end
	if Three_World then
		spawn(function()
			while wait(1) do
				pcall(function()
					if Three_World then
						MysticIsland_S = false
						if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
							MysticIsland_S = true
						end
						FullMoon_S = false
						if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" and #game.Players:GetChildren() <= 7 then
							FullMoon_S = true
						end
						if game.Workspace.Enemies:FindFirstChild('rip_indra True Form') or game.ReplicatedStorage:FindFirstChild('rip_indra True Form') then
							if #game.Players:GetChildren() <= 9 and not table.find(_G.Keep_JobX,tostring(game.JobId)) then
								table.insert(_G.Keep_JobX,tostring(game.JobId))
								SendBoss('https://discord.com/api/webhooks/1313591233964281947/pw3lSeHxC_G0gkKXuC0gYj0PrSJudz5O6449UTZ0_t1EQMSX7a7zbbVKiBQ5SMr2jiIO','rip_indra True Form')
							end
						end
						if #game.Players:GetChildren() <= 3 then
							SendFullMoon('https://discord.com/api/webhooks/1313592429169082490/oIMn-VR68PxXaYIL1DLJmczrAi2Smxl6QwhGjLgQX5wi8heDzeSMtJtk0-a1tn_-3ZNH')
						end
						if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" and #game.Players:GetChildren() <= 9 then
							local result = {}
							local x = tostring(game:GetService("Lighting").TimeOfDay)
							local regex = ("([^%s]+)"):format(":")
							for each in x:gmatch(regex) do
								table.insert(result, each)
							end
							if tonumber(result[1]) >= 0 and tonumber(result[1]) < 12 then
								SendFullMoon('https://discord.com/api/webhooks/1313593212820131911/MOX0CN4pWrkl7up9HV_7OezMDwbthc6NExorOjpHx37pAnU7dYTVn3JMHqoYYJVJh6RY')
							end
						end
						if FullMoon_S and MysticIsland_S and not table.find(_G.Keep_Job,tostring(game.JobId)) and game:GetService("Lighting").LightingLayers.Night.Intensity.Value == 1 then
							table.insert(_G.Keep_Job,tostring(game.JobId))
							SendFullMoon('https://discord.com/api/webhooks/1313596484821844018/4NuDze4uu6XU-AndoEtfWPrb-Z9TKUNp6H4qzALdqTNnIOC-15XbXiAS4JIEj9T_ooeM')
							return
						elseif FullMoon_S and not table.find(_G.Keep_Job,tostring(game.JobId)) and game:GetService("Lighting").LightingLayers.Night.Intensity.Value == 1 then
							table.insert(_G.Keep_Job,tostring(game.JobId))
							SendFullMoon('https://discord.com/api/webhooks/1313595074348843090/MxgjOINiDSd7S8WdvWkT6CrbMbhGQMHWfvFOHHy_2x3BttvWqWLFPHPk5qs5HfYtXC_f')
							return
						elseif MysticIsland_S and not table.find(_G.Keep_Job,tostring(game.JobId)) then
							table.insert(_G.Keep_Job,tostring(game.JobId))
							SendFullMoon('https://discord.com/api/webhooks/1313596484821844018/4NuDze4uu6XU-AndoEtfWPrb-Z9TKUNp6H4qzALdqTNnIOC-15XbXiAS4JIEj9T_ooeM')
							return
						end	
						wait(10)
					end
				end)
			end
		end)
	elseif New_World then
		spawn(function()
			while wait(1) do
				pcall(function()
					if game.Workspace.Enemies:FindFirstChild('Cursed Captain') or game.ReplicatedStorage:FindFirstChild('Cursed Captain') then
						if #game.Players:GetChildren() <= 10 and not table.find(_G.Keep_JobX,tostring(game.JobId)) then
							table.insert(_G.Keep_JobX,tostring(game.JobId))
							SendBoss('https://discord.com/api/webhooks/1313591233964281947/pw3lSeHxC_G0gkKXuC0gYj0PrSJudz5O6449UTZ0_t1EQMSX7a7zbbVKiBQ5SMr2jiIO','Cursed Captain')
						end
					end
					if game.Workspace.Enemies:FindFirstChild('Darkbeard') or game.ReplicatedStorage:FindFirstChild('Darkbeard') then
						if #game.Players:GetChildren() <= 10 and not table.find(_G.Keep_JobX,tostring(game.JobId)) then
							table.insert(_G.Keep_JobX,tostring(game.JobId))
							SendBoss('https://discord.com/api/webhooks/1313591233964281947/pw3lSeHxC_G0gkKXuC0gYj0PrSJudz5O6449UTZ0_t1EQMSX7a7zbbVKiBQ5SMr2jiIO','Darkbeard')
						end
					end
				end)
			end
		end)
	end

end

