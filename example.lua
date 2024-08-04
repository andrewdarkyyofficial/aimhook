local library = loadstring(request({
    Url = 'https://raw.githubusercontent.com/andrewdarkyyofficial/aimhook/main/main.lua',
    Method = 'GET'
}).Body)()

local window = library:CreateWindow({
	Title = 'Aimhook',
	SubTitle = 'by andrewdarkyy',
	SaveConfig = true,
	MinimizeKey = Enum.KeyCode.LeftAlt
})

local flags = library.Flags

local tabs = {
	Combat = window:CreateTab({
		Title = 'Combat',
		Icon = 'rbxassetid://7733799901'
	}),
	Player = window:CreateTab({
		Title = 'Player',
		Icon = 'rbxassetid://7743875962'
	}),
	Credits = window:CreateTab({
		Title = 'Credits',
		Icon = 'rbxassetid://7733746980'
	}),
	NoIcon = window:CreateTab({
		Title = 'NoIcon'
	})
}

do
	tabs.Combat:CreateToggle({
		Title = 'Kill All',
        Flag = 'KillAll',
		Function = function(value)
			print(value)
		end
	}):Set(true)

	print(flags.KillAll.Value)

	flags.KillAll:Set(false)

	print(flags.KillAll.Value)

	tabs.Combat:CreateToggle({
		Title = 'Ragebot',
        Flag = 'Ragebot',
		Default = true,
		Function = function(value)
			print(value)
		end
	})
end

do
	tabs.Player:CreateButton({
		Title = 'Godmode',
		Function = function()
			print('Called')
		end
	})

	tabs.Player:CreateButton({
		Title = 'Custom Button Icon',
		Icon = 'rbxassetid://7733765398',
		Function = function()
			print('Called')
		end
	})

	local slider = tabs.Player:CreateSlider({
		Title = 'WalkSpeed',
        Flag = 'WalkSpeed',
		Maximum = 500,
		Minimum = 16,
		Default = 16,
		Rounding = 2, --// 2 Decimals
		Function = function(value)
			print(value)
		end
	})

	print(flags.WalkSpeed.Value)

	flags.WalkSpeed:Set(30)

	print(flags.WalkSpeed.Value)

	slider:Set(100)

	print(flags.WalkSpeed.Value)
end

do
	tabs.Credits:CreateLabel({
		Title = 'discord.gg/K8gdWHthVw'
	})
end

window:LoadConfig()
