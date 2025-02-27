local cloneref = cloneref or function(...) return ... end;
local ESP = {};
ESP.Memory = {};
ESP.Protect = game:FindFirstChild('CoreGui') and cloneref(game:GetService('CoreGui')) or game:GetService('Players').LocalPlayer.PlayerGui;
ESP.ScreenGui = Instance.new('ScreenGui',ESP.Protect)
ESP.ScreenGui.ResetOnSpawn = false;
ESP.ScreenGui.IgnoreGuiInset = true;
ESP.Already = {};
ESP.DeletedFunction = {};

function ESP:GetSize(Instance : Model & BasePart) : UDim2
	if Instance:IsA('BasePart') then
		return UDim2.new(Instance.Size.X,10,Instance.Size.Y,10);
	elseif Instance:IsA('Model') then
		local world = Instance:GetModelSize();
		
		return UDim2.new(world.X,10,world.Y,10);
	end;
end;

function ESP:Smooth(Object,Properties) : ()
	game:GetService('TweenService'):Create(Object,TweenInfo.new(0.2),Properties):Play()
end;

function ESP:Create(Block :BasePart , Color :Color3 ,Title :string, Section :string, DeleteCallback : FunctionalTest) : BillboardGui
	if not Block then
		return;
	end;
	
	Color = Color or Color3.fromRGB(255, 255, 255);
	Title = Title or "Title";
	
	if Section then
		if not ESP[Section] then
			ESP[Section] = {};
		end;
	end;
	
    if DeleteCallback then
        ESP.DeletedFunction[Block] = DeleteCallback;
    end;

	local BillboardGui = Instance.new("BillboardGui")
	local Left = Instance.new("Frame")
	local Right = Instance.new("Frame")
	local Top = Instance.new("Frame")
	local Bottom = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")

	BillboardGui.Parent = ESP.ScreenGui
	BillboardGui.Active = true
	BillboardGui.Adornee = Block
	BillboardGui.AlwaysOnTop = true
	BillboardGui.LightInfluence = 1.000
	BillboardGui.Size = ESP:GetSize(Block)

	Left.Name = "Left"
	Left.Parent = BillboardGui
	Left.AnchorPoint = Vector2.new(0, 0.5)
	Left.BackgroundColor3 = Color
	Left.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Left.BorderSizePixel = 0
	Left.Position = UDim2.new(0, 0, 0.5, 0)
	Left.Size = UDim2.new(0, 0, 0, 0)
	Left.BackgroundTransparency = 1;
	
	ESP:Smooth(Left,{BackgroundTransparency = 0,Size = UDim2.new(0, 1, 1, 0)})
	
	Right.Name = "Right"
	Right.Parent = BillboardGui
	Right.AnchorPoint = Vector2.new(1, 0.5)
	Right.BackgroundColor3 = Color
	Right.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Right.BorderSizePixel = 0
	Right.Position = UDim2.new(1, 0, 0.5, 0)
	Right.Size = UDim2.new(0, 0, 0, 0)
	Right.BackgroundTransparency = 1;

	ESP:Smooth(Right,{BackgroundTransparency = 0,Size = UDim2.new(0, 1, 1, 0)})
	
	Top.Name = "Top"
	Top.Parent = BillboardGui
	Top.AnchorPoint = Vector2.new(0.5, 0)
	Top.BackgroundColor3 = Color
	Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Top.BorderSizePixel = 0
	Top.Position = UDim2.new(0.5, 0, 0, 0)
	Top.Size = UDim2.new(0, 0, 0, 0)
	Top.BackgroundTransparency = 1;
	
	ESP:Smooth(Top,{BackgroundTransparency = 0,Size = UDim2.new(1, 0, 0, 1)})
	
	Bottom.Name = "Bottom"
	Bottom.Parent = BillboardGui
	Bottom.AnchorPoint = Vector2.new(0.5, 1)
	Bottom.BackgroundColor3 = Color
	Bottom.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Bottom.BorderSizePixel = 0
	Bottom.Position = UDim2.new(0.5, 0, 1, 0)
	Bottom.Size = UDim2.new(0, 0, 0, 0)
	Bottom.BackgroundTransparency = 1;

	ESP:Smooth(Bottom,{BackgroundTransparency = 0,Size = UDim2.new(1, 0, 0, 1)})
	
	TextLabel.Parent = BillboardGui
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.5, 0, -0, 0)
	TextLabel.Size = UDim2.new(1, 0, 0, 20)
	TextLabel.Font = Enum.Font.Gotham
	TextLabel.Text = Title
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextStrokeTransparency = 1
	TextLabel.TextWrapped = true
	TextLabel.TextTransparency = 1;

	ESP:Smooth(TextLabel,{TextTransparency = 0,TextStrokeTransparency = 0.800})
	
    ESP.Already[Block] = BillboardGui;
	table.insert(ESP.Memory,BillboardGui);

	if Section then
		table.insert(ESP[Section],BillboardGui)	
	end;
	
	return BillboardGui;
end;

function ESP:ClearSection(section :string)
    if not ESP[section] then return; end;

	table.foreach(ESP[section],function(a,v)
        if v.Adornee then
            if ESP.DeletedFunction[v.Adornee] then
                pcall(ESP.DeletedFunction[v.Adornee]);
            end;

            ESP.Already[v.Adornee] = nil;
        end;

		v.Destroy(v);
	end)
	
	ESP[section] = {};
end;

function ESP:GetNilAdornee() : {BillboardGui}
	local Blocks = {};
	
	table.foreach(ESP.Memory,function(index , value)
		if not value.Adornee or not value.Adornee.Parent then
			Blocks[#Blocks + 1] = value;
		end;
	end);
	
	return Blocks;
end;

spawn(function() -- runtime
    while true do task.wait();
        
        for i,v in pairs(ESP.Memory) do task.wait()
            pcall(function()
                if not v.Adornee then
                    ESP.Already[v.Adornee] = nil;
                    v.Destroy(v);
                end;
            end);
        end;

        task.wait();
    end;
end);

return ESP;
