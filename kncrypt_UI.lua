--[[
    		NEVERZEN INTERFACE

    Author: 4lpaca
    License: MIT
    GitHub: https://github.com/3345-c-a-t-s-u-s/NeverZen
--]]

cloneref = cloneref or function(...) return ... end;
cloenfunction = cloenfunction or function(...) return ... end;
hookfunction = hookfunction or function(a,b) return a end;

export type Services = {
	UserInputService : UserInputService,
	Players : Players,
	ContentProvider : ContentProvider,
	CoreGui : PlayerGui
};

local NeverZen = {
	Version = '1.0'	
};

NeverZen.Services = {
	UserInputService = cloneref(game:GetService('UserInputService')),
	Players = cloneref(game:GetService('Players')),
	ContentProvider = cloneref(game:GetService('ContentProvider')),
	CoreGui = cloneref(game:FindFirstChild('CoreGui')),
};

local TextService = game:GetService('TextService');
local TweenService = game:GetService('TweenService');
local CurrentCamera = workspace.CurrentCamera;
local RunService = game:GetService('RunService');

local LocalPlayer : Player = NeverZen.Services.Players.LocalPlayer;
local Mouse = LocalPlayer:GetMouse();

NeverZen.ProtectGui = protect_gui or protectgui or (syn and syn.protect_gui) or function() end;
NeverZen.Services.CoreGui = (gethui and gethui()) or NeverZen.Services.CoreGui or LocalPlayer.PlayerGui;

local Services : Services = NeverZen.Services;

function NeverZen:IsMouseOverFrame(Frame)
	local AbsPos, AbsSize = Frame.AbsolutePosition, Frame.AbsoluteSize;

	if Mouse.X >= AbsPos.X and Mouse.X <= AbsPos.X + AbsSize.X and Mouse.Y >= AbsPos.Y and Mouse.Y <= AbsPos.Y + AbsSize.Y then

		return true;
	end;
end;

function NeverZen:Hook()
	if hookfunc or hookfunction then
		local hooking = hookfunc or hookfunction or function() end;
		local newCclosure = newcclosure or function() end;

		hooking(game:GetService('ContentProvider').PreloadAsync,function()
			return 1;
		end);

		hooking(game:GetService('ContentProvider').Preload,function()
			return 2;
		end);
	end;
end;

function NeverZen:NewInput(frame : Frame , call) : TextButton
	local Bth = Instance.new('TextButton',frame);

	Bth.ZIndex = frame.ZIndex + 10;
	Bth.Size = UDim2.fromScale(1,1);
	Bth.BackgroundTransparency = 1;
	Bth.TextTransparency = 1;

	if call then
		Bth.MouseButton1Click:Connect(call)
	end
	
	return Bth;
end;

NeverZen.Lucide = {
	["lucide-accessibility"] = "rbxassetid://10709751939",
	["lucide-activity"] = "rbxassetid://10709752035",
	["lucide-air-vent"] = "rbxassetid://10709752131",
	["lucide-airplay"] = "rbxassetid://10709752254",
	["lucide-alarm-check"] = "rbxassetid://10709752405",
	["lucide-alarm-clock"] = "rbxassetid://10709752630",
	["lucide-alarm-clock-off"] = "rbxassetid://10709752508",
	["lucide-alarm-minus"] = "rbxassetid://10709752732",
	["lucide-alarm-plus"] = "rbxassetid://10709752825",
	["lucide-album"] = "rbxassetid://10709752906",
	["lucide-alert-circle"] = "rbxassetid://10709752996",
	["lucide-alert-octagon"] = "rbxassetid://10709753064",
	["lucide-alert-triangle"] = "rbxassetid://10709753149",
	["lucide-align-center"] = "rbxassetid://10709753570",
	["lucide-align-center-horizontal"] = "rbxassetid://10709753272",
	["lucide-align-center-vertical"] = "rbxassetid://10709753421",
	["lucide-align-end-horizontal"] = "rbxassetid://10709753692",
	["lucide-align-end-vertical"] = "rbxassetid://10709753808",
	["lucide-align-horizontal-distribute-center"] = "rbxassetid://10747779791",
	["lucide-align-horizontal-distribute-end"] = "rbxassetid://10747784534",
	["lucide-align-horizontal-distribute-start"] = "rbxassetid://10709754118",
	["lucide-align-horizontal-justify-center"] = "rbxassetid://10709754204",
	["lucide-align-horizontal-justify-end"] = "rbxassetid://10709754317",
	["lucide-align-horizontal-justify-start"] = "rbxassetid://10709754436",
	["lucide-align-horizontal-space-around"] = "rbxassetid://10709754590",
	["lucide-align-horizontal-space-between"] = "rbxassetid://10709754749",
	["lucide-align-justify"] = "rbxassetid://10709759610",
	["lucide-align-left"] = "rbxassetid://10709759764",
	["lucide-align-right"] = "rbxassetid://10709759895",
	["lucide-align-start-horizontal"] = "rbxassetid://10709760051",
	["lucide-align-start-vertical"] = "rbxassetid://10709760244",
	["lucide-align-vertical-distribute-center"] = "rbxassetid://10709760351",
	["lucide-align-vertical-distribute-end"] = "rbxassetid://10709760434",
	["lucide-align-vertical-distribute-start"] = "rbxassetid://10709760612",
	["lucide-align-vertical-justify-center"] = "rbxassetid://10709760814",
	["lucide-align-vertical-justify-end"] = "rbxassetid://10709761003",
	["lucide-align-vertical-justify-start"] = "rbxassetid://10709761176",
	["lucide-align-vertical-space-around"] = "rbxassetid://10709761324",
	["lucide-align-vertical-space-between"] = "rbxassetid://10709761434",
	["lucide-anchor"] = "rbxassetid://10709761530",
	["lucide-angry"] = "rbxassetid://10709761629",
	["lucide-annoyed"] = "rbxassetid://10709761722",
	["lucide-aperture"] = "rbxassetid://10709761813",
	["lucide-apple"] = "rbxassetid://10709761889",
	["lucide-archive"] = "rbxassetid://10709762233",
	["lucide-archive-restore"] = "rbxassetid://10709762058",
	["lucide-armchair"] = "rbxassetid://10709762327",
	["lucide-arrow-big-down"] = "rbxassetid://10747796644",
	["lucide-arrow-big-left"] = "rbxassetid://10709762574",
	["lucide-arrow-big-right"] = "rbxassetid://10709762727",
	["lucide-arrow-big-up"] = "rbxassetid://10709762879",
	["lucide-arrow-down"] = "rbxassetid://10709767827",
	["lucide-arrow-down-circle"] = "rbxassetid://10709763034",
	["lucide-arrow-down-left"] = "rbxassetid://10709767656",
	["lucide-arrow-down-right"] = "rbxassetid://10709767750",
	["lucide-arrow-left"] = "rbxassetid://10709768114",
	["lucide-arrow-left-circle"] = "rbxassetid://10709767936",
	["lucide-arrow-left-right"] = "rbxassetid://10709768019",
	["lucide-arrow-right"] = "rbxassetid://10709768347",
	["lucide-arrow-right-circle"] = "rbxassetid://10709768226",
	["lucide-arrow-up"] = "rbxassetid://10709768939",
	["lucide-arrow-up-circle"] = "rbxassetid://10709768432",
	["lucide-arrow-up-down"] = "rbxassetid://10709768538",
	["lucide-arrow-up-left"] = "rbxassetid://10709768661",
	["lucide-arrow-up-right"] = "rbxassetid://10709768787",
	["lucide-asterisk"] = "rbxassetid://10709769095",
	["lucide-at-sign"] = "rbxassetid://10709769286",
	["lucide-award"] = "rbxassetid://10709769406",
	["lucide-axe"] = "rbxassetid://10709769508",
	["lucide-axis-3d"] = "rbxassetid://10709769598",
	["lucide-baby"] = "rbxassetid://10709769732",
	["lucide-backpack"] = "rbxassetid://10709769841",
	["lucide-baggage-claim"] = "rbxassetid://10709769935",
	["lucide-banana"] = "rbxassetid://10709770005",
	["lucide-banknote"] = "rbxassetid://10709770178",
	["lucide-bar-chart"] = "rbxassetid://10709773755",
	["lucide-bar-chart-2"] = "rbxassetid://10709770317",
	["lucide-bar-chart-3"] = "rbxassetid://10709770431",
	["lucide-bar-chart-4"] = "rbxassetid://10709770560",
	["lucide-bar-chart-horizontal"] = "rbxassetid://10709773669",
	["lucide-barcode"] = "rbxassetid://10747360675",
	["lucide-baseline"] = "rbxassetid://10709773863",
	["lucide-bath"] = "rbxassetid://10709773963",
	["lucide-battery"] = "rbxassetid://10709774640",
	["lucide-battery-charging"] = "rbxassetid://10709774068",
	["lucide-battery-full"] = "rbxassetid://10709774206",
	["lucide-battery-low"] = "rbxassetid://10709774370",
	["lucide-battery-medium"] = "rbxassetid://10709774513",
	["lucide-beaker"] = "rbxassetid://10709774756",
	["lucide-bed"] = "rbxassetid://10709775036",
	["lucide-bed-double"] = "rbxassetid://10709774864",
	["lucide-bed-single"] = "rbxassetid://10709774968",
	["lucide-beer"] = "rbxassetid://10709775167",
	["lucide-bell"] = "rbxassetid://10709775704",
	["lucide-bell-minus"] = "rbxassetid://10709775241",
	["lucide-bell-off"] = "rbxassetid://10709775320",
	["lucide-bell-plus"] = "rbxassetid://10709775448",
	["lucide-bell-ring"] = "rbxassetid://10709775560",
	["lucide-bike"] = "rbxassetid://10709775894",
	["lucide-binary"] = "rbxassetid://10709776050",
	["lucide-bitcoin"] = "rbxassetid://10709776126",
	["lucide-bluetooth"] = "rbxassetid://10709776655",
	["lucide-bluetooth-connected"] = "rbxassetid://10709776240",
	["lucide-bluetooth-off"] = "rbxassetid://10709776344",
	["lucide-bluetooth-searching"] = "rbxassetid://10709776501",
	["lucide-bold"] = "rbxassetid://10747813908",
	["lucide-bomb"] = "rbxassetid://10709781460",
	["lucide-bone"] = "rbxassetid://10709781605",
	["lucide-book"] = "rbxassetid://10709781824",
	["lucide-book-open"] = "rbxassetid://10709781717",
	["lucide-bookmark"] = "rbxassetid://10709782154",
	["lucide-bookmark-minus"] = "rbxassetid://10709781919",
	["lucide-bookmark-plus"] = "rbxassetid://10709782044",
	["lucide-bot"] = "rbxassetid://10709782230",
	["lucide-box"] = "rbxassetid://10709782497",
	["lucide-box-select"] = "rbxassetid://10709782342",
	["lucide-boxes"] = "rbxassetid://10709782582",
	["lucide-briefcase"] = "rbxassetid://10709782662",
	["lucide-brush"] = "rbxassetid://10709782758",
	["lucide-bug"] = "rbxassetid://10709782845",
	["lucide-building"] = "rbxassetid://10709783051",
	["lucide-building-2"] = "rbxassetid://10709782939",
	["lucide-bus"] = "rbxassetid://10709783137",
	["lucide-cake"] = "rbxassetid://10709783217",
	["lucide-calculator"] = "rbxassetid://10709783311",
	["lucide-calendar"] = "rbxassetid://10709789505",
	["lucide-calendar-check"] = "rbxassetid://10709783474",
	["lucide-calendar-check-2"] = "rbxassetid://10709783392",
	["lucide-calendar-clock"] = "rbxassetid://10709783577",
	["lucide-calendar-days"] = "rbxassetid://10709783673",
	["lucide-calendar-heart"] = "rbxassetid://10709783835",
	["lucide-calendar-minus"] = "rbxassetid://10709783959",
	["lucide-calendar-off"] = "rbxassetid://10709788784",
	["lucide-calendar-plus"] = "rbxassetid://10709788937",
	["lucide-calendar-range"] = "rbxassetid://10709789053",
	["lucide-calendar-search"] = "rbxassetid://10709789200",
	["lucide-calendar-x"] = "rbxassetid://10709789407",
	["lucide-calendar-x-2"] = "rbxassetid://10709789329",
	["lucide-camera"] = "rbxassetid://10709789686",
	["lucide-camera-off"] = "rbxassetid://10747822677",
	["lucide-car"] = "rbxassetid://10709789810",
	["lucide-carrot"] = "rbxassetid://10709789960",
	["lucide-cast"] = "rbxassetid://10709790097",
	["lucide-charge"] = "rbxassetid://10709790202",
	["lucide-check"] = "rbxassetid://10709790644",
	["lucide-check-circle"] = "rbxassetid://10709790387",
	["lucide-check-circle-2"] = "rbxassetid://10709790298",
	["lucide-check-square"] = "rbxassetid://10709790537",
	["lucide-chef-hat"] = "rbxassetid://10709790757",
	["lucide-cherry"] = "rbxassetid://10709790875",
	["lucide-chevron-down"] = "rbxassetid://10709790948",
	["lucide-chevron-first"] = "rbxassetid://10709791015",
	["lucide-chevron-last"] = "rbxassetid://10709791130",
	["lucide-chevron-left"] = "rbxassetid://10709791281",
	["lucide-chevron-right"] = "rbxassetid://10709791437",
	["lucide-chevron-up"] = "rbxassetid://10709791523",
	["lucide-chevrons-down"] = "rbxassetid://10709796864",
	["lucide-chevrons-down-up"] = "rbxassetid://10709791632",
	["lucide-chevrons-left"] = "rbxassetid://10709797151",
	["lucide-chevrons-left-right"] = "rbxassetid://10709797006",
	["lucide-chevrons-right"] = "rbxassetid://10709797382",
	["lucide-chevrons-right-left"] = "rbxassetid://10709797274",
	["lucide-chevrons-up"] = "rbxassetid://10709797622",
	["lucide-chevrons-up-down"] = "rbxassetid://10709797508",
	["lucide-chrome"] = "rbxassetid://10709797725",
	["lucide-circle"] = "rbxassetid://10709798174",
	["lucide-circle-dot"] = "rbxassetid://10709797837",
	["lucide-circle-ellipsis"] = "rbxassetid://10709797985",
	["lucide-circle-slashed"] = "rbxassetid://10709798100",
	["lucide-citrus"] = "rbxassetid://10709798276",
	["lucide-clapperboard"] = "rbxassetid://10709798350",
	["lucide-clipboard"] = "rbxassetid://10709799288",
	["lucide-clipboard-check"] = "rbxassetid://10709798443",
	["lucide-clipboard-copy"] = "rbxassetid://10709798574",
	["lucide-clipboard-edit"] = "rbxassetid://10709798682",
	["lucide-clipboard-list"] = "rbxassetid://10709798792",
	["lucide-clipboard-signature"] = "rbxassetid://10709798890",
	["lucide-clipboard-type"] = "rbxassetid://10709798999",
	["lucide-clipboard-x"] = "rbxassetid://10709799124",
	["lucide-clock"] = "rbxassetid://10709805144",
	["lucide-clock-1"] = "rbxassetid://10709799535",
	["lucide-clock-10"] = "rbxassetid://10709799718",
	["lucide-clock-11"] = "rbxassetid://10709799818",
	["lucide-clock-12"] = "rbxassetid://10709799962",
	["lucide-clock-2"] = "rbxassetid://10709803876",
	["lucide-clock-3"] = "rbxassetid://10709803989",
	["lucide-clock-4"] = "rbxassetid://10709804164",
	["lucide-clock-5"] = "rbxassetid://10709804291",
	["lucide-clock-6"] = "rbxassetid://10709804435",
	["lucide-clock-7"] = "rbxassetid://10709804599",
	["lucide-clock-8"] = "rbxassetid://10709804784",
	["lucide-clock-9"] = "rbxassetid://10709804996",
	["lucide-cloud"] = "rbxassetid://10709806740",
	["lucide-cloud-cog"] = "rbxassetid://10709805262",
	["lucide-cloud-drizzle"] = "rbxassetid://10709805371",
	["lucide-cloud-fog"] = "rbxassetid://10709805477",
	["lucide-cloud-hail"] = "rbxassetid://10709805596",
	["lucide-cloud-lightning"] = "rbxassetid://10709805727",
	["lucide-cloud-moon"] = "rbxassetid://10709805942",
	["lucide-cloud-moon-rain"] = "rbxassetid://10709805838",
	["lucide-cloud-off"] = "rbxassetid://10709806060",
	["lucide-cloud-rain"] = "rbxassetid://10709806277",
	["lucide-cloud-rain-wind"] = "rbxassetid://10709806166",
	["lucide-cloud-snow"] = "rbxassetid://10709806374",
	["lucide-cloud-sun"] = "rbxassetid://10709806631",
	["lucide-cloud-sun-rain"] = "rbxassetid://10709806475",
	["lucide-cloudy"] = "rbxassetid://10709806859",
	["lucide-clover"] = "rbxassetid://10709806995",
	["lucide-code"] = "rbxassetid://10709810463",
	["lucide-code-2"] = "rbxassetid://10709807111",
	["lucide-codepen"] = "rbxassetid://10709810534",
	["lucide-codesandbox"] = "rbxassetid://10709810676",
	["lucide-coffee"] = "rbxassetid://10709810814",
	["lucide-cog"] = "rbxassetid://10709810948",
	["lucide-coins"] = "rbxassetid://10709811110",
	["lucide-columns"] = "rbxassetid://10709811261",
	["lucide-command"] = "rbxassetid://10709811365",
	["lucide-compass"] = "rbxassetid://10709811445",
	["lucide-component"] = "rbxassetid://10709811595",
	["lucide-concierge-bell"] = "rbxassetid://10709811706",
	["lucide-connection"] = "rbxassetid://10747361219",
	["lucide-contact"] = "rbxassetid://10709811834",
	["lucide-contrast"] = "rbxassetid://10709811939",
	["lucide-cookie"] = "rbxassetid://10709812067",
	["lucide-copy"] = "rbxassetid://10709812159",
	["lucide-copyleft"] = "rbxassetid://10709812251",
	["lucide-copyright"] = "rbxassetid://10709812311",
	["lucide-corner-down-left"] = "rbxassetid://10709812396",
	["lucide-corner-down-right"] = "rbxassetid://10709812485",
	["lucide-corner-left-down"] = "rbxassetid://10709812632",
	["lucide-corner-left-up"] = "rbxassetid://10709812784",
	["lucide-corner-right-down"] = "rbxassetid://10709812939",
	["lucide-corner-right-up"] = "rbxassetid://10709813094",
	["lucide-corner-up-left"] = "rbxassetid://10709813185",
	["lucide-corner-up-right"] = "rbxassetid://10709813281",
	["lucide-cpu"] = "rbxassetid://10709813383",
	["lucide-croissant"] = "rbxassetid://10709818125",
	["lucide-crop"] = "rbxassetid://10709818245",
	["lucide-cross"] = "rbxassetid://10709818399",
	["lucide-crosshair"] = "rbxassetid://10709818534",
	["lucide-crown"] = "rbxassetid://10709818626",
	["lucide-cup-soda"] = "rbxassetid://10709818763",
	["lucide-curly-braces"] = "rbxassetid://10709818847",
	["lucide-currency"] = "rbxassetid://10709818931",
	["lucide-database"] = "rbxassetid://10709818996",
	["lucide-delete"] = "rbxassetid://10709819059",
	["lucide-diamond"] = "rbxassetid://10709819149",
	["lucide-dice-1"] = "rbxassetid://10709819266",
	["lucide-dice-2"] = "rbxassetid://10709819361",
	["lucide-dice-3"] = "rbxassetid://10709819508",
	["lucide-dice-4"] = "rbxassetid://10709819670",
	["lucide-dice-5"] = "rbxassetid://10709819801",
	["lucide-dice-6"] = "rbxassetid://10709819896",
	["lucide-dices"] = "rbxassetid://10723343321",
	["lucide-diff"] = "rbxassetid://10723343416",
	["lucide-disc"] = "rbxassetid://10723343537",
	["lucide-divide"] = "rbxassetid://10723343805",
	["lucide-divide-circle"] = "rbxassetid://10723343636",
	["lucide-divide-square"] = "rbxassetid://10723343737",
	["lucide-dollar-sign"] = "rbxassetid://10723343958",
	["lucide-download"] = "rbxassetid://10723344270",
	["lucide-download-cloud"] = "rbxassetid://10723344088",
	["lucide-droplet"] = "rbxassetid://10723344432",
	["lucide-droplets"] = "rbxassetid://10734883356",
	["lucide-drumstick"] = "rbxassetid://10723344737",
	["lucide-edit"] = "rbxassetid://10734883598",
	["lucide-edit-2"] = "rbxassetid://10723344885",
	["lucide-edit-3"] = "rbxassetid://10723345088",
	["lucide-egg"] = "rbxassetid://10723345518",
	["lucide-egg-fried"] = "rbxassetid://10723345347",
	["lucide-electricity"] = "rbxassetid://10723345749",
	["lucide-electricity-off"] = "rbxassetid://10723345643",
	["lucide-equal"] = "rbxassetid://10723345990",
	["lucide-equal-not"] = "rbxassetid://10723345866",
	["lucide-eraser"] = "rbxassetid://10723346158",
	["lucide-euro"] = "rbxassetid://10723346372",
	["lucide-expand"] = "rbxassetid://10723346553",
	["lucide-external-link"] = "rbxassetid://10723346684",
	["lucide-eye"] = "rbxassetid://10723346959",
	["lucide-eye-off"] = "rbxassetid://10723346871",
	["lucide-factory"] = "rbxassetid://10723347051",
	["lucide-fan"] = "rbxassetid://10723354359",
	["lucide-fast-forward"] = "rbxassetid://10723354521",
	["lucide-feather"] = "rbxassetid://10723354671",
	["lucide-figma"] = "rbxassetid://10723354801",
	["lucide-file"] = "rbxassetid://10723374641",
	["lucide-file-archive"] = "rbxassetid://10723354921",
	["lucide-file-audio"] = "rbxassetid://10723355148",
	["lucide-file-audio-2"] = "rbxassetid://10723355026",
	["lucide-file-axis-3d"] = "rbxassetid://10723355272",
	["lucide-file-badge"] = "rbxassetid://10723355622",
	["lucide-file-badge-2"] = "rbxassetid://10723355451",
	["lucide-file-bar-chart"] = "rbxassetid://10723355887",
	["lucide-file-bar-chart-2"] = "rbxassetid://10723355746",
	["lucide-file-box"] = "rbxassetid://10723355989",
	["lucide-file-check"] = "rbxassetid://10723356210",
	["lucide-file-check-2"] = "rbxassetid://10723356100",
	["lucide-file-clock"] = "rbxassetid://10723356329",
	["lucide-file-code"] = "rbxassetid://10723356507",
	["lucide-file-cog"] = "rbxassetid://10723356830",
	["lucide-file-cog-2"] = "rbxassetid://10723356676",
	["lucide-file-diff"] = "rbxassetid://10723357039",
	["lucide-file-digit"] = "rbxassetid://10723357151",
	["lucide-file-down"] = "rbxassetid://10723357322",
	["lucide-file-edit"] = "rbxassetid://10723357495",
	["lucide-file-heart"] = "rbxassetid://10723357637",
	["lucide-file-image"] = "rbxassetid://10723357790",
	["lucide-file-input"] = "rbxassetid://10723357933",
	["lucide-file-json"] = "rbxassetid://10723364435",
	["lucide-file-json-2"] = "rbxassetid://10723364361",
	["lucide-file-key"] = "rbxassetid://10723364605",
	["lucide-file-key-2"] = "rbxassetid://10723364515",
	["lucide-file-line-chart"] = "rbxassetid://10723364725",
	["lucide-file-lock"] = "rbxassetid://10723364957",
	["lucide-file-lock-2"] = "rbxassetid://10723364861",
	["lucide-file-minus"] = "rbxassetid://10723365254",
	["lucide-file-minus-2"] = "rbxassetid://10723365086",
	["lucide-file-output"] = "rbxassetid://10723365457",
	["lucide-file-pie-chart"] = "rbxassetid://10723365598",
	["lucide-file-plus"] = "rbxassetid://10723365877",
	["lucide-file-plus-2"] = "rbxassetid://10723365766",
	["lucide-file-question"] = "rbxassetid://10723365987",
	["lucide-file-scan"] = "rbxassetid://10723366167",
	["lucide-file-search"] = "rbxassetid://10723366550",
	["lucide-file-search-2"] = "rbxassetid://10723366340",
	["lucide-file-signature"] = "rbxassetid://10723366741",
	["lucide-file-spreadsheet"] = "rbxassetid://10723366962",
	["lucide-file-symlink"] = "rbxassetid://10723367098",
	["lucide-file-terminal"] = "rbxassetid://10723367244",
	["lucide-file-text"] = "rbxassetid://10723367380",
	["lucide-file-type"] = "rbxassetid://10723367606",
	["lucide-file-type-2"] = "rbxassetid://10723367509",
	["lucide-file-up"] = "rbxassetid://10723367734",
	["lucide-file-video"] = "rbxassetid://10723373884",
	["lucide-file-video-2"] = "rbxassetid://10723367834",
	["lucide-file-volume"] = "rbxassetid://10723374172",
	["lucide-file-volume-2"] = "rbxassetid://10723374030",
	["lucide-file-warning"] = "rbxassetid://10723374276",
	["lucide-file-x"] = "rbxassetid://10723374544",
	["lucide-file-x-2"] = "rbxassetid://10723374378",
	["lucide-files"] = "rbxassetid://10723374759",
	["lucide-film"] = "rbxassetid://10723374981",
	["lucide-filter"] = "rbxassetid://10723375128",
	["lucide-fingerprint"] = "rbxassetid://10723375250",
	["lucide-flag"] = "rbxassetid://10723375890",
	["lucide-flag-off"] = "rbxassetid://10723375443",
	["lucide-flag-triangle-left"] = "rbxassetid://10723375608",
	["lucide-flag-triangle-right"] = "rbxassetid://10723375727",
	["lucide-flame"] = "rbxassetid://10723376114",
	["lucide-flashlight"] = "rbxassetid://10723376471",
	["lucide-flashlight-off"] = "rbxassetid://10723376365",
	["lucide-flask-conical"] = "rbxassetid://10734883986",
	["lucide-flask-round"] = "rbxassetid://10723376614",
	["lucide-flip-horizontal"] = "rbxassetid://10723376884",
	["lucide-flip-horizontal-2"] = "rbxassetid://10723376745",
	["lucide-flip-vertical"] = "rbxassetid://10723377138",
	["lucide-flip-vertical-2"] = "rbxassetid://10723377026",
	["lucide-flower"] = "rbxassetid://10747830374",
	["lucide-flower-2"] = "rbxassetid://10723377305",
	["lucide-focus"] = "rbxassetid://10723377537",
	["lucide-folder"] = "rbxassetid://10723387563",
	["lucide-folder-archive"] = "rbxassetid://10723384478",
	["lucide-folder-check"] = "rbxassetid://10723384605",
	["lucide-folder-clock"] = "rbxassetid://10723384731",
	["lucide-folder-closed"] = "rbxassetid://10723384893",
	["lucide-folder-cog"] = "rbxassetid://10723385213",
	["lucide-folder-cog-2"] = "rbxassetid://10723385036",
	["lucide-folder-down"] = "rbxassetid://10723385338",
	["lucide-folder-edit"] = "rbxassetid://10723385445",
	["lucide-folder-heart"] = "rbxassetid://10723385545",
	["lucide-folder-input"] = "rbxassetid://10723385721",
	["lucide-folder-key"] = "rbxassetid://10723385848",
	["lucide-folder-lock"] = "rbxassetid://10723386005",
	["lucide-folder-minus"] = "rbxassetid://10723386127",
	["lucide-folder-open"] = "rbxassetid://10723386277",
	["lucide-folder-output"] = "rbxassetid://10723386386",
	["lucide-folder-plus"] = "rbxassetid://10723386531",
	["lucide-folder-search"] = "rbxassetid://10723386787",
	["lucide-folder-search-2"] = "rbxassetid://10723386674",
	["lucide-folder-symlink"] = "rbxassetid://10723386930",
	["lucide-folder-tree"] = "rbxassetid://10723387085",
	["lucide-folder-up"] = "rbxassetid://10723387265",
	["lucide-folder-x"] = "rbxassetid://10723387448",
	["lucide-folders"] = "rbxassetid://10723387721",
	["lucide-form-input"] = "rbxassetid://10723387841",
	["lucide-forward"] = "rbxassetid://10723388016",
	["lucide-frame"] = "rbxassetid://10723394389",
	["lucide-framer"] = "rbxassetid://10723394565",
	["lucide-frown"] = "rbxassetid://10723394681",
	["lucide-fuel"] = "rbxassetid://10723394846",
	["lucide-function-square"] = "rbxassetid://10723395041",
	["lucide-gamepad"] = "rbxassetid://10723395457",
	["lucide-gamepad-2"] = "rbxassetid://10723395215",
	["lucide-gauge"] = "rbxassetid://10723395708",
	["lucide-gavel"] = "rbxassetid://10723395896",
	["lucide-gem"] = "rbxassetid://10723396000",
	["lucide-ghost"] = "rbxassetid://10723396107",
	["lucide-gift"] = "rbxassetid://10723396402",
	["lucide-gift-card"] = "rbxassetid://10723396225",
	["lucide-git-branch"] = "rbxassetid://10723396676",
	["lucide-git-branch-plus"] = "rbxassetid://10723396542",
	["lucide-git-commit"] = "rbxassetid://10723396812",
	["lucide-git-compare"] = "rbxassetid://10723396954",
	["lucide-git-fork"] = "rbxassetid://10723397049",
	["lucide-git-merge"] = "rbxassetid://10723397165",
	["lucide-git-pull-request"] = "rbxassetid://10723397431",
	["lucide-git-pull-request-closed"] = "rbxassetid://10723397268",
	["lucide-git-pull-request-draft"] = "rbxassetid://10734884302",
	["lucide-glass"] = "rbxassetid://10723397788",
	["lucide-glass-2"] = "rbxassetid://10723397529",
	["lucide-glass-water"] = "rbxassetid://10723397678",
	["lucide-glasses"] = "rbxassetid://10723397895",
	["lucide-globe"] = "rbxassetid://10723404337",
	["lucide-globe-2"] = "rbxassetid://10723398002",
	["lucide-grab"] = "rbxassetid://10723404472",
	["lucide-graduation-cap"] = "rbxassetid://10723404691",
	["lucide-grape"] = "rbxassetid://10723404822",
	["lucide-grid"] = "rbxassetid://10723404936",
	["lucide-grip-horizontal"] = "rbxassetid://10723405089",
	["lucide-grip-vertical"] = "rbxassetid://10723405236",
	["lucide-hammer"] = "rbxassetid://10723405360",
	["lucide-hand"] = "rbxassetid://10723405649",
	["lucide-hand-metal"] = "rbxassetid://10723405508",
	["lucide-hard-drive"] = "rbxassetid://10723405749",
	["lucide-hard-hat"] = "rbxassetid://10723405859",
	["lucide-hash"] = "rbxassetid://10723405975",
	["lucide-haze"] = "rbxassetid://10723406078",
	["lucide-headphones"] = "rbxassetid://10723406165",
	["lucide-heart"] = "rbxassetid://10723406885",
	["lucide-heart-crack"] = "rbxassetid://10723406299",
	["lucide-heart-handshake"] = "rbxassetid://10723406480",
	["lucide-heart-off"] = "rbxassetid://10723406662",
	["lucide-heart-pulse"] = "rbxassetid://10723406795",
	["lucide-help-circle"] = "rbxassetid://10723406988",
	["lucide-hexagon"] = "rbxassetid://10723407092",
	["lucide-highlighter"] = "rbxassetid://10723407192",
	["lucide-history"] = "rbxassetid://10723407335",
	["lucide-home"] = "rbxassetid://10723407389",
	["lucide-hourglass"] = "rbxassetid://10723407498",
	["lucide-ice-cream"] = "rbxassetid://10723414308",
	["lucide-image"] = "rbxassetid://10723415040",
	["lucide-image-minus"] = "rbxassetid://10723414487",
	["lucide-image-off"] = "rbxassetid://10723414677",
	["lucide-image-plus"] = "rbxassetid://10723414827",
	["lucide-import"] = "rbxassetid://10723415205",
	["lucide-inbox"] = "rbxassetid://10723415335",
	["lucide-indent"] = "rbxassetid://10723415494",
	["lucide-indian-rupee"] = "rbxassetid://10723415642",
	["lucide-infinity"] = "rbxassetid://10723415766",
	["lucide-info"] = "rbxassetid://10723415903",
	["lucide-inspect"] = "rbxassetid://10723416057",
	["lucide-italic"] = "rbxassetid://10723416195",
	["lucide-japanese-yen"] = "rbxassetid://10723416363",
	["lucide-joystick"] = "rbxassetid://10723416527",
	["lucide-key"] = "rbxassetid://10723416652",
	["lucide-keyboard"] = "rbxassetid://10723416765",
	["lucide-lamp"] = "rbxassetid://10723417513",
	["lucide-lamp-ceiling"] = "rbxassetid://10723416922",
	["lucide-lamp-desk"] = "rbxassetid://10723417016",
	["lucide-lamp-floor"] = "rbxassetid://10723417131",
	["lucide-lamp-wall-down"] = "rbxassetid://10723417240",
	["lucide-lamp-wall-up"] = "rbxassetid://10723417356",
	["lucide-landmark"] = "rbxassetid://10723417608",
	["lucide-languages"] = "rbxassetid://10723417703",
	["lucide-laptop"] = "rbxassetid://10723423881",
	["lucide-laptop-2"] = "rbxassetid://10723417797",
	["lucide-lasso"] = "rbxassetid://10723424235",
	["lucide-lasso-select"] = "rbxassetid://10723424058",
	["lucide-laugh"] = "rbxassetid://10723424372",
	["lucide-layers"] = "rbxassetid://10723424505",
	["lucide-layout"] = "rbxassetid://10723425376",
	["lucide-layout-dashboard"] = "rbxassetid://10723424646",
	["lucide-layout-grid"] = "rbxassetid://10723424838",
	["lucide-layout-list"] = "rbxassetid://10723424963",
	["lucide-layout-template"] = "rbxassetid://10723425187",
	["lucide-leaf"] = "rbxassetid://10723425539",
	["lucide-library"] = "rbxassetid://10723425615",
	["lucide-life-buoy"] = "rbxassetid://10723425685",
	["lucide-lightbulb"] = "rbxassetid://10723425852",
	["lucide-lightbulb-off"] = "rbxassetid://10723425762",
	["lucide-line-chart"] = "rbxassetid://10723426393",
	["lucide-link"] = "rbxassetid://10723426722",
	["lucide-link-2"] = "rbxassetid://10723426595",
	["lucide-link-2-off"] = "rbxassetid://10723426513",
	["lucide-list"] = "rbxassetid://10723433811",
	["lucide-list-checks"] = "rbxassetid://10734884548",
	["lucide-list-end"] = "rbxassetid://10723426886",
	["lucide-list-minus"] = "rbxassetid://10723426986",
	["lucide-list-music"] = "rbxassetid://10723427081",
	["lucide-list-ordered"] = "rbxassetid://10723427199",
	["lucide-list-plus"] = "rbxassetid://10723427334",
	["lucide-list-start"] = "rbxassetid://10723427494",
	["lucide-list-video"] = "rbxassetid://10723427619",
	["lucide-list-x"] = "rbxassetid://10723433655",
	["lucide-loader"] = "rbxassetid://10723434070",
	["lucide-loader-2"] = "rbxassetid://10723433935",
	["lucide-locate"] = "rbxassetid://10723434557",
	["lucide-locate-fixed"] = "rbxassetid://10723434236",
	["lucide-locate-off"] = "rbxassetid://10723434379",
	["lucide-lock"] = "rbxassetid://10723434711",
	["lucide-log-in"] = "rbxassetid://10723434830",
	["lucide-log-out"] = "rbxassetid://10723434906",
	["lucide-luggage"] = "rbxassetid://10723434993",
	["lucide-magnet"] = "rbxassetid://10723435069",
	["lucide-mail"] = "rbxassetid://10734885430",
	["lucide-mail-check"] = "rbxassetid://10723435182",
	["lucide-mail-minus"] = "rbxassetid://10723435261",
	["lucide-mail-open"] = "rbxassetid://10723435342",
	["lucide-mail-plus"] = "rbxassetid://10723435443",
	["lucide-mail-question"] = "rbxassetid://10723435515",
	["lucide-mail-search"] = "rbxassetid://10734884739",
	["lucide-mail-warning"] = "rbxassetid://10734885015",
	["lucide-mail-x"] = "rbxassetid://10734885247",
	["lucide-mails"] = "rbxassetid://10734885614",
	["lucide-map"] = "rbxassetid://10734886202",
	["lucide-map-pin"] = "rbxassetid://10734886004",
	["lucide-map-pin-off"] = "rbxassetid://10734885803",
	["lucide-maximize"] = "rbxassetid://10734886735",
	["lucide-maximize-2"] = "rbxassetid://10734886496",
	["lucide-medal"] = "rbxassetid://10734887072",
	["lucide-megaphone"] = "rbxassetid://10734887454",
	["lucide-megaphone-off"] = "rbxassetid://10734887311",
	["lucide-meh"] = "rbxassetid://10734887603",
	["lucide-menu"] = "rbxassetid://10734887784",
	["lucide-message-circle"] = "rbxassetid://10734888000",
	["lucide-message-square"] = "rbxassetid://10734888228",
	["lucide-mic"] = "rbxassetid://10734888864",
	["lucide-mic-2"] = "rbxassetid://10734888430",
	["lucide-mic-off"] = "rbxassetid://10734888646",
	["lucide-microscope"] = "rbxassetid://10734889106",
	["lucide-microwave"] = "rbxassetid://10734895076",
	["lucide-milestone"] = "rbxassetid://10734895310",
	["lucide-minimize"] = "rbxassetid://10734895698",
	["lucide-minimize-2"] = "rbxassetid://10734895530",
	["lucide-minus"] = "rbxassetid://10734896206",
	["lucide-minus-circle"] = "rbxassetid://10734895856",
	["lucide-minus-square"] = "rbxassetid://10734896029",
	["lucide-monitor"] = "rbxassetid://10734896881",
	["lucide-monitor-off"] = "rbxassetid://10734896360",
	["lucide-monitor-speaker"] = "rbxassetid://10734896512",
	["lucide-moon"] = "rbxassetid://10734897102",
	["lucide-more-horizontal"] = "rbxassetid://10734897250",
	["lucide-more-vertical"] = "rbxassetid://10734897387",
	["lucide-mountain"] = "rbxassetid://10734897956",
	["lucide-mountain-snow"] = "rbxassetid://10734897665",
	["lucide-mouse"] = "rbxassetid://10734898592",
	["lucide-mouse-pointer"] = "rbxassetid://10734898476",
	["lucide-mouse-pointer-2"] = "rbxassetid://10734898194",
	["lucide-mouse-pointer-click"] = "rbxassetid://10734898355",
	["lucide-move"] = "rbxassetid://10734900011",
	["lucide-move-3d"] = "rbxassetid://10734898756",
	["lucide-move-diagonal"] = "rbxassetid://10734899164",
	["lucide-move-diagonal-2"] = "rbxassetid://10734898934",
	["lucide-move-horizontal"] = "rbxassetid://10734899414",
	["lucide-move-vertical"] = "rbxassetid://10734899821",
	["lucide-music"] = "rbxassetid://10734905958",
	["lucide-music-2"] = "rbxassetid://10734900215",
	["lucide-music-3"] = "rbxassetid://10734905665",
	["lucide-music-4"] = "rbxassetid://10734905823",
	["lucide-navigation"] = "rbxassetid://10734906744",
	["lucide-navigation-2"] = "rbxassetid://10734906332",
	["lucide-navigation-2-off"] = "rbxassetid://10734906144",
	["lucide-navigation-off"] = "rbxassetid://10734906580",
	["lucide-network"] = "rbxassetid://10734906975",
	["lucide-newspaper"] = "rbxassetid://10734907168",
	["lucide-octagon"] = "rbxassetid://10734907361",
	["lucide-option"] = "rbxassetid://10734907649",
	["lucide-outdent"] = "rbxassetid://10734907933",
	["lucide-package"] = "rbxassetid://10734909540",
	["lucide-package-2"] = "rbxassetid://10734908151",
	["lucide-package-check"] = "rbxassetid://10734908384",
	["lucide-package-minus"] = "rbxassetid://10734908626",
	["lucide-package-open"] = "rbxassetid://10734908793",
	["lucide-package-plus"] = "rbxassetid://10734909016",
	["lucide-package-search"] = "rbxassetid://10734909196",
	["lucide-package-x"] = "rbxassetid://10734909375",
	["lucide-paint-bucket"] = "rbxassetid://10734909847",
	["lucide-paintbrush"] = "rbxassetid://10734910187",
	["lucide-paintbrush-2"] = "rbxassetid://10734910030",
	["lucide-palette"] = "rbxassetid://10734910430",
	["lucide-palmtree"] = "rbxassetid://10734910680",
	["lucide-paperclip"] = "rbxassetid://10734910927",
	["lucide-party-popper"] = "rbxassetid://10734918735",
	["lucide-pause"] = "rbxassetid://10734919336",
	["lucide-pause-circle"] = "rbxassetid://10735024209",
	["lucide-pause-octagon"] = "rbxassetid://10734919143",
	["lucide-pen-tool"] = "rbxassetid://10734919503",
	["lucide-pencil"] = "rbxassetid://10734919691",
	["lucide-percent"] = "rbxassetid://10734919919",
	["lucide-person-standing"] = "rbxassetid://10734920149",
	["lucide-phone"] = "rbxassetid://10734921524",
	["lucide-phone-call"] = "rbxassetid://10734920305",
	["lucide-phone-forwarded"] = "rbxassetid://10734920508",
	["lucide-phone-incoming"] = "rbxassetid://10734920694",
	["lucide-phone-missed"] = "rbxassetid://10734920845",
	["lucide-phone-off"] = "rbxassetid://10734921077",
	["lucide-phone-outgoing"] = "rbxassetid://10734921288",
	["lucide-pie-chart"] = "rbxassetid://10734921727",
	["lucide-piggy-bank"] = "rbxassetid://10734921935",
	["lucide-pin"] = "rbxassetid://10734922324",
	["lucide-pin-off"] = "rbxassetid://10734922180",
	["lucide-pipette"] = "rbxassetid://10734922497",
	["lucide-pizza"] = "rbxassetid://10734922774",
	["lucide-plane"] = "rbxassetid://10734922971",
	["lucide-play"] = "rbxassetid://10734923549",
	["lucide-play-circle"] = "rbxassetid://10734923214",
	["lucide-plus"] = "rbxassetid://10734924532",
	["lucide-plus-circle"] = "rbxassetid://10734923868",
	["lucide-plus-square"] = "rbxassetid://10734924219",
	["lucide-podcast"] = "rbxassetid://10734929553",
	["lucide-pointer"] = "rbxassetid://10734929723",
	["lucide-pound-sterling"] = "rbxassetid://10734929981",
	["lucide-power"] = "rbxassetid://10734930466",
	["lucide-power-off"] = "rbxassetid://10734930257",
	["lucide-printer"] = "rbxassetid://10734930632",
	["lucide-puzzle"] = "rbxassetid://10734930886",
	["lucide-quote"] = "rbxassetid://10734931234",
	["lucide-radio"] = "rbxassetid://10734931596",
	["lucide-radio-receiver"] = "rbxassetid://10734931402",
	["lucide-rectangle-horizontal"] = "rbxassetid://10734931777",
	["lucide-rectangle-vertical"] = "rbxassetid://10734932081",
	["lucide-recycle"] = "rbxassetid://10734932295",
	["lucide-redo"] = "rbxassetid://10734932822",
	["lucide-redo-2"] = "rbxassetid://10734932586",
	["lucide-refresh-ccw"] = "rbxassetid://10734933056",
	["lucide-refresh-cw"] = "rbxassetid://10734933222",
	["lucide-refrigerator"] = "rbxassetid://10734933465",
	["lucide-regex"] = "rbxassetid://10734933655",
	["lucide-repeat"] = "rbxassetid://10734933966",
	["lucide-repeat-1"] = "rbxassetid://10734933826",
	["lucide-reply"] = "rbxassetid://10734934252",
	["lucide-reply-all"] = "rbxassetid://10734934132",
	["lucide-rewind"] = "rbxassetid://10734934347",
	["lucide-rocket"] = "rbxassetid://10734934585",
	["lucide-rocking-chair"] = "rbxassetid://10734939942",
	["lucide-rotate-3d"] = "rbxassetid://10734940107",
	["lucide-rotate-ccw"] = "rbxassetid://10734940376",
	["lucide-rotate-cw"] = "rbxassetid://10734940654",
	["lucide-rss"] = "rbxassetid://10734940825",
	["lucide-ruler"] = "rbxassetid://10734941018",
	["lucide-russian-ruble"] = "rbxassetid://10734941199",
	["lucide-sailboat"] = "rbxassetid://10734941354",
	["lucide-save"] = "rbxassetid://10734941499",
	["lucide-scale"] = "rbxassetid://10734941912",
	["lucide-scale-3d"] = "rbxassetid://10734941739",
	["lucide-scaling"] = "rbxassetid://10734942072",
	["lucide-scan"] = "rbxassetid://10734942565",
	["lucide-scan-face"] = "rbxassetid://10734942198",
	["lucide-scan-line"] = "rbxassetid://10734942351",
	["lucide-scissors"] = "rbxassetid://10734942778",
	["lucide-screen-share"] = "rbxassetid://10734943193",
	["lucide-screen-share-off"] = "rbxassetid://10734942967",
	["lucide-scroll"] = "rbxassetid://10734943448",
	["lucide-search"] = "rbxassetid://10734943674",
	["lucide-send"] = "rbxassetid://10734943902",
	["lucide-separator-horizontal"] = "rbxassetid://10734944115",
	["lucide-separator-vertical"] = "rbxassetid://10734944326",
	["lucide-server"] = "rbxassetid://10734949856",
	["lucide-server-cog"] = "rbxassetid://10734944444",
	["lucide-server-crash"] = "rbxassetid://10734944554",
	["lucide-server-off"] = "rbxassetid://10734944668",
	["lucide-settings"] = "rbxassetid://10734950309",
	["lucide-settings-2"] = "rbxassetid://10734950020",
	["lucide-share"] = "rbxassetid://10734950813",
	["lucide-share-2"] = "rbxassetid://10734950553",
	["lucide-sheet"] = "rbxassetid://10734951038",
	["lucide-shield"] = "rbxassetid://10734951847",
	["lucide-shield-alert"] = "rbxassetid://10734951173",
	["lucide-shield-check"] = "rbxassetid://10734951367",
	["lucide-shield-close"] = "rbxassetid://10734951535",
	["lucide-shield-off"] = "rbxassetid://10734951684",
	["lucide-shirt"] = "rbxassetid://10734952036",
	["lucide-shopping-bag"] = "rbxassetid://10734952273",
	["lucide-shopping-cart"] = "rbxassetid://10734952479",
	["lucide-shovel"] = "rbxassetid://10734952773",
	["lucide-shower-head"] = "rbxassetid://10734952942",
	["lucide-shrink"] = "rbxassetid://10734953073",
	["lucide-shrub"] = "rbxassetid://10734953241",
	["lucide-shuffle"] = "rbxassetid://10734953451",
	["lucide-sidebar"] = "rbxassetid://10734954301",
	["lucide-sidebar-close"] = "rbxassetid://10734953715",
	["lucide-sidebar-open"] = "rbxassetid://10734954000",
	["lucide-sigma"] = "rbxassetid://10734954538",
	["lucide-signal"] = "rbxassetid://10734961133",
	["lucide-signal-high"] = "rbxassetid://10734954807",
	["lucide-signal-low"] = "rbxassetid://10734955080",
	["lucide-signal-medium"] = "rbxassetid://10734955336",
	["lucide-signal-zero"] = "rbxassetid://10734960878",
	["lucide-siren"] = "rbxassetid://10734961284",
	["lucide-skip-back"] = "rbxassetid://10734961526",
	["lucide-skip-forward"] = "rbxassetid://10734961809",
	["lucide-skull"] = "rbxassetid://10734962068",
	["lucide-slack"] = "rbxassetid://10734962339",
	["lucide-slash"] = "rbxassetid://10734962600",
	["lucide-slice"] = "rbxassetid://10734963024",
	["lucide-sliders"] = "rbxassetid://10734963400",
	["lucide-sliders-horizontal"] = "rbxassetid://10734963191",
	["lucide-smartphone"] = "rbxassetid://10734963940",
	["lucide-smartphone-charging"] = "rbxassetid://10734963671",
	["lucide-smile"] = "rbxassetid://10734964441",
	["lucide-smile-plus"] = "rbxassetid://10734964188",
	["lucide-snowflake"] = "rbxassetid://10734964600",
	["lucide-sofa"] = "rbxassetid://10734964852",
	["lucide-sort-asc"] = "rbxassetid://10734965115",
	["lucide-sort-desc"] = "rbxassetid://10734965287",
	["lucide-speaker"] = "rbxassetid://10734965419",
	["lucide-sprout"] = "rbxassetid://10734965572",
	["lucide-square"] = "rbxassetid://10734965702",
	["lucide-star"] = "rbxassetid://10734966248",
	["lucide-star-half"] = "rbxassetid://10734965897",
	["lucide-star-off"] = "rbxassetid://10734966097",
	["lucide-stethoscope"] = "rbxassetid://10734966384",
	["lucide-sticker"] = "rbxassetid://10734972234",
	["lucide-sticky-note"] = "rbxassetid://10734972463",
	["lucide-stop-circle"] = "rbxassetid://10734972621",
	["lucide-stretch-horizontal"] = "rbxassetid://10734972862",
	["lucide-stretch-vertical"] = "rbxassetid://10734973130",
	["lucide-strikethrough"] = "rbxassetid://10734973290",
	["lucide-subscript"] = "rbxassetid://10734973457",
	["lucide-sun"] = "rbxassetid://10734974297",
	["lucide-sun-dim"] = "rbxassetid://10734973645",
	["lucide-sun-medium"] = "rbxassetid://10734973778",
	["lucide-sun-moon"] = "rbxassetid://10734973999",
	["lucide-sun-snow"] = "rbxassetid://10734974130",
	["lucide-sunrise"] = "rbxassetid://10734974522",
	["lucide-sunset"] = "rbxassetid://10734974689",
	["lucide-superscript"] = "rbxassetid://10734974850",
	["lucide-swiss-franc"] = "rbxassetid://10734975024",
	["lucide-switch-camera"] = "rbxassetid://10734975214",
	["lucide-sword"] = "rbxassetid://10734975486",
	["lucide-swords"] = "rbxassetid://10734975692",
	["lucide-syringe"] = "rbxassetid://10734975932",
	["lucide-table"] = "rbxassetid://10734976230",
	["lucide-table-2"] = "rbxassetid://10734976097",
	["lucide-tablet"] = "rbxassetid://10734976394",
	["lucide-tag"] = "rbxassetid://10734976528",
	["lucide-tags"] = "rbxassetid://10734976739",
	["lucide-target"] = "rbxassetid://10734977012",
	["lucide-tent"] = "rbxassetid://10734981750",
	["lucide-terminal"] = "rbxassetid://10734982144",
	["lucide-terminal-square"] = "rbxassetid://10734981995",
	["lucide-text-cursor"] = "rbxassetid://10734982395",
	["lucide-text-cursor-input"] = "rbxassetid://10734982297",
	["lucide-thermometer"] = "rbxassetid://10734983134",
	["lucide-thermometer-snowflake"] = "rbxassetid://10734982571",
	["lucide-thermometer-sun"] = "rbxassetid://10734982771",
	["lucide-thumbs-down"] = "rbxassetid://10734983359",
	["lucide-thumbs-up"] = "rbxassetid://10734983629",
	["lucide-ticket"] = "rbxassetid://10734983868",
	["lucide-timer"] = "rbxassetid://10734984606",
	["lucide-timer-off"] = "rbxassetid://10734984138",
	["lucide-timer-reset"] = "rbxassetid://10734984355",
	["lucide-toggle-left"] = "rbxassetid://10734984834",
	["lucide-toggle-right"] = "rbxassetid://10734985040",
	["lucide-tornado"] = "rbxassetid://10734985247",
	["lucide-toy-brick"] = "rbxassetid://10747361919",
	["lucide-train"] = "rbxassetid://10747362105",
	["lucide-trash"] = "rbxassetid://10747362393",
	["lucide-trash-2"] = "rbxassetid://10747362241",
	["lucide-tree-deciduous"] = "rbxassetid://10747362534",
	["lucide-tree-pine"] = "rbxassetid://10747362748",
	["lucide-trees"] = "rbxassetid://10747363016",
	["lucide-trending-down"] = "rbxassetid://10747363205",
	["lucide-trending-up"] = "rbxassetid://10747363465",
	["lucide-triangle"] = "rbxassetid://10747363621",
	["lucide-trophy"] = "rbxassetid://10747363809",
	["lucide-truck"] = "rbxassetid://10747364031",
	["lucide-tv"] = "rbxassetid://10747364593",
	["lucide-tv-2"] = "rbxassetid://10747364302",
	["lucide-type"] = "rbxassetid://10747364761",
	["lucide-umbrella"] = "rbxassetid://10747364971",
	["lucide-underline"] = "rbxassetid://10747365191",
	["lucide-undo"] = "rbxassetid://10747365484",
	["lucide-undo-2"] = "rbxassetid://10747365359",
	["lucide-unlink"] = "rbxassetid://10747365771",
	["lucide-unlink-2"] = "rbxassetid://10747397871",
	["lucide-unlock"] = "rbxassetid://10747366027",
	["lucide-upload"] = "rbxassetid://10747366434",
	["lucide-upload-cloud"] = "rbxassetid://10747366266",
	["lucide-usb"] = "rbxassetid://10747366606",
	["lucide-user"] = "rbxassetid://10747373176",
	["lucide-user-check"] = "rbxassetid://10747371901",
	["lucide-user-cog"] = "rbxassetid://10747372167",
	["lucide-user-minus"] = "rbxassetid://10747372346",
	["lucide-user-plus"] = "rbxassetid://10747372702",
	["lucide-user-x"] = "rbxassetid://10747372992",
	["lucide-users"] = "rbxassetid://10747373426",
	["lucide-utensils"] = "rbxassetid://10747373821",
	["lucide-utensils-crossed"] = "rbxassetid://10747373629",
	["lucide-venetian-mask"] = "rbxassetid://10747374003",
	["lucide-verified"] = "rbxassetid://10747374131",
	["lucide-vibrate"] = "rbxassetid://10747374489",
	["lucide-vibrate-off"] = "rbxassetid://10747374269",
	["lucide-video"] = "rbxassetid://10747374938",
	["lucide-video-off"] = "rbxassetid://10747374721",
	["lucide-view"] = "rbxassetid://10747375132",
	["lucide-voicemail"] = "rbxassetid://10747375281",
	["lucide-volume"] = "rbxassetid://10747376008",
	["lucide-volume-1"] = "rbxassetid://10747375450",
	["lucide-volume-2"] = "rbxassetid://10747375679",
	["lucide-volume-x"] = "rbxassetid://10747375880",
	["lucide-wallet"] = "rbxassetid://10747376205",
	["lucide-wand"] = "rbxassetid://10747376565",
	["lucide-wand-2"] = "rbxassetid://10747376349",
	["lucide-watch"] = "rbxassetid://10747376722",
	["lucide-waves"] = "rbxassetid://10747376931",
	["lucide-webcam"] = "rbxassetid://10747381992",
	["lucide-wifi"] = "rbxassetid://10747382504",
	["lucide-wifi-off"] = "rbxassetid://10747382268",
	["lucide-wind"] = "rbxassetid://10747382750",
	["lucide-wrap-text"] = "rbxassetid://10747383065",
	["lucide-wrench"] = "rbxassetid://10747383470",
	["lucide-x"] = "rbxassetid://10747384394",
	["lucide-x-circle"] = "rbxassetid://10747383819",
	["lucide-x-octagon"] = "rbxassetid://10747384037",
	["lucide-x-square"] = "rbxassetid://10747384217",
	["lucide-zoom-in"] = "rbxassetid://10747384552",
	["lucide-zoom-out"] = "rbxassetid://10747384679",
};

local function Fixed(planePos, planeNormal, rayOrigin, rayDirection)
	local n = planeNormal
	local d = rayDirection
	local v = rayOrigin - planePos

	local num = (n.x*v.x) + (n.y*v.y) + (n.z*v.z)
	local den = (n.x*d.x) + (n.y*d.y) + (n.z*d.z)
	local a = -num / den

	return rayOrigin + (a * rayDirection), a;
end;

function NeverZen:SetBlur(frame : Frame,NoAutoBackground)
	local Part = Instance.new('Part',workspace.Camera);
	local DepthOfField = Instance.new('DepthOfFieldEffect',game:GetService('Lighting'));
	local SurfaceGui = Instance.new('SurfaceGui',Part);
	local BlockMesh = Instance.new("BlockMesh");

	BlockMesh.Parent = Part;

	Part.Material = Enum.Material.Glass;
	Part.Transparency = 1;
	Part.Reflectance = 1;
	Part.CastShadow = false;
	Part.Anchored = true;
	Part.CanCollide = false;
	Part.CanQuery = false;
	Part.CollisionGroup = NeverZen:RandomString();
	Part.Size = Vector3.new(1, 1, 1) * 0.01;
	Part.Color = Color3.fromRGB(0,0,0);

	TweenService:Create(Part,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{
		Transparency = 0.8;
	}):Play()

	DepthOfField.Enabled = true;
	DepthOfField.FarIntensity = 1;
	DepthOfField.FocusDistance = 0;
	DepthOfField.InFocusRadius = 500;
	DepthOfField.NearIntensity = 1;

	SurfaceGui.AlwaysOnTop = true;
	SurfaceGui.Adornee = Part;
	SurfaceGui.Active = true;
	SurfaceGui.Face = Enum.NormalId.Front;
	SurfaceGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;

	DepthOfField.Name = NeverZen:RandomString();
	Part.Name = NeverZen:RandomString();
	SurfaceGui.Name = NeverZen:RandomString();

	local C4 = {
		Update = nil,
		Collection = SurfaceGui,
		Enabled = true,
		Instances = {
			BlockMesh = BlockMesh,
			Part = Part,
			DepthOfField = DepthOfField,
			SurfaceGui = SurfaceGui,
		},
		Signal = nil
	};

	local Update = function()
		local _,updatec = pcall(function()
			local userSettings = UserSettings():GetService("UserGameSettings")
			local qualityLevel = userSettings.SavedQualityLevel.Value

			if not NoAutoBackground then
				if qualityLevel < 8 then
					TweenService:Create(Part,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
						Transparency = 1;
					}):Play()
					
					frame.BackgroundTransparency = 0.01
				else
					TweenService:Create(Part,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
						Transparency = 0.8;
					}):Play()
					
					frame.BackgroundTransparency = 0.075
				end;
			end;
		end)

		local corner0 = frame.AbsolutePosition;
		local corner1 = corner0 + frame.AbsoluteSize;

		local ray0 = CurrentCamera.ScreenPointToRay(CurrentCamera,corner0.X, corner0.Y, 1);
		local ray1 = CurrentCamera.ScreenPointToRay(CurrentCamera,corner1.X, corner1.Y, 1);

		local planeOrigin = CurrentCamera.CFrame.Position + CurrentCamera.CFrame.LookVector * (0.05 - CurrentCamera.NearPlaneZ);

		local planeNormal = CurrentCamera.CFrame.LookVector;

		local pos0 = Fixed(planeOrigin, planeNormal, ray0.Origin, ray0.Direction);
		local pos1 = Fixed(planeOrigin, planeNormal, ray1.Origin, ray1.Direction);

		pos0 = CurrentCamera.CFrame:PointToObjectSpace(pos0);
		pos1 = CurrentCamera.CFrame:PointToObjectSpace(pos1);

		local size   = pos1 - pos0;
		local center = (pos0 + pos1) / 2;

		BlockMesh.Offset = center
		BlockMesh.Scale  = size / 0.0101;
		Part.CFrame = CurrentCamera.CFrame;
	end

	C4.Update = Update;
	C4.Signal = RunService.RenderStepped:Connect(Update);

	pcall(function()
		C4.Signal2 = CurrentCamera:GetPropertyChangedSignal('CFrame'):Connect(function()
			Part.CFrame = CurrentCamera.CFrame;
		end);
	end)

	C4.Destroy = function()
		C4.Signal:Disconnect();
		C4.Signal2:Disconnect();
		C4.Update = function()

		end;

		TweenService:Create(Part,TweenInfo.new(1),{
			Transparency = 1
		}):Play();

		DepthOfField:Destroy();
		Part:Destroy()
	end;

	return C4;
end;

function NeverZen:GetIcon(name : string) : string
	return NeverZen.Lucide['lucide-'..tostring(name)] or NeverZen.Lucide[name] or NeverZen.Lucide[tostring(name)] or "";
end;

function NeverZen:RandomString() : string
	return string.char(math.random(60,120))..string.char(math.random(60,120))..string.char(math.random(60,120))..string.char(math.random(60,120))..string.char(math.random(60,120))..string.char(math.random(60,120))..string.char(math.random(60,120))..string.char(math.random(60,120))..string.char(math.random(60,120))..string.char(math.random(60,120))..string.char(math.random(60,120))..string.char(math.random(60,120))..string.char(math.random(60,120))..string.char(math.random(60,120))
end;

function NeverZen:Rounding(num, numDecimalPlaces) : number
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end;

function NeverZen.new(config)
	config = config or {};
	
	config.Name = config.Name or "NEVERZEN";
	config.Keybind = config.Keybind or Enum.KeyCode.LeftControl;
	config.Scale = config.Scale or UDim2.new(0, 611, 0, 396);
	config.Resizable = config.Resizable;
	config.Shadow = config.Shadow or false;
	
	
	local WindowSignal = {};
	
	WindowSignal.SelectedTab = nil;
	WindowSignal.Tabs = {};
	WindowSignal.Config = config;
	WindowSignal.Toggle = true;
	
	local Content = Instance.new("ScreenGui")
	local WindowFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local Header = Instance.new("Frame")
	local HeaderText = Instance.new("TextLabel")
	local Line = Instance.new("Frame")
	local Frame = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local SearchFrame = Instance.new("Frame")
	local SearchButton = Instance.new("ImageButton")
	local UIStroke_2 = Instance.new("UIStroke")
	local UICorner_2 = Instance.new("UICorner")
	local TextBox = Instance.new("TextBox")
	local SettingsButton = Instance.new("ImageButton")
	local MinButton = Instance.new("ImageButton")
	local Line_2 = Instance.new("Frame")
	local BthFrames = Instance.new("Frame")
	local InformationFrame = Instance.new("Frame")
	local ProfileIcon = Instance.new("ImageLabel")
	local UICorner_3 = Instance.new("UICorner")
	local UIStroke_3 = Instance.new("UIStroke")
	local UsernameText = Instance.new("TextLabel")
	local UIGradient = Instance.new("UIGradient")
	local TabButtons = Instance.new("Frame")
	local TBSFrame = Instance.new("ScrollingFrame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local Line_3 = Instance.new("Frame")
	local TabWin = Instance.new("Frame")

	Content.Name = NeverZen:RandomString()
	Content.Parent = Services.CoreGui;
	Content.ResetOnSpawn = false
	Content.IgnoreGuiInset = true
	Content.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	
	NeverZen.ProtectGui(Content);
	
	WindowFrame.Name = NeverZen:RandomString()
	WindowFrame.Parent = Content
	WindowFrame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
	WindowFrame.BackgroundTransparency = 0.1
	WindowFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	WindowFrame.BorderSizePixel = 0
	WindowFrame.ClipsDescendants = true
	WindowFrame.Position = UDim2.new(0, 177, 0, 177)
	WindowFrame.Size = UDim2.new(0,0,0,0)
	WindowFrame.Active = true
	
	if config.Shadow then
		local DropShadow = Instance.new("ImageLabel")

		DropShadow.Name = "DropShadow"
		DropShadow.Parent = WindowFrame
		DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
		DropShadow.BackgroundTransparency = 1.000
		DropShadow.BorderSizePixel = 0
		DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
		DropShadow.Rotation = 0.01
		DropShadow.Size = UDim2.new(1, 47, 1, 47)
		DropShadow.ZIndex = -1
		DropShadow.Image = "rbxassetid://6015897843"
		DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		DropShadow.ImageTransparency = 1
		DropShadow.ScaleType = Enum.ScaleType.Slice
		DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
		
		task.delay(1,function()
			TweenService:Create(DropShadow,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
				ImageTransparency = 0.75
			}):Play()
		end)
	end
	
	TweenService:Create(WindowFrame,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
		Size = config.Scale,
		Position = UDim2.new(0, 75, 0, 75)
	}):Play()
	
	if config.Acrylic == nil then
		config.Acrylic = true
	end
	
	if config.Acrylic then
		NeverZen:SetBlur(WindowFrame)
	end;
	
	function WindowSignal:SetScale(new)
		WindowSignal.Config.Scale = new;
		TweenService:Create(WindowFrame,TweenInfo.new(0.4,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
			Size = new,
		}):Play()
	end;
	
	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = WindowFrame

	UIStroke.Transparency = 0.850
	UIStroke.Color = Color3.fromRGB(0, 25, 34)
	UIStroke.Parent = WindowFrame

	Header.Name = NeverZen:RandomString()
	Header.Parent = WindowFrame
	Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Header.BackgroundTransparency = 1.000
	Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Header.BorderSizePixel = 0
	Header.ClipsDescendants = true
	Header.Size = UDim2.new(1, 0, 0, 45)
	Header.Position = UDim2.new(0,0,0,-50)
	Header.Active = true
	
	task.delay(0.2,function()
		TweenService:Create(Header,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
			Position = UDim2.new(0,0,0,0)
		}):Play()
	end)
	
	HeaderText.Name = NeverZen:RandomString()
	HeaderText.Parent = Header
	HeaderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HeaderText.BackgroundTransparency = 1.000
	HeaderText.BorderColor3 = Color3.fromRGB(0, 0, 0)
	HeaderText.BorderSizePixel = 0
	HeaderText.Position = UDim2.new(0, 10, 0, -55)
	HeaderText.Size = UDim2.new(0, 150, 1, -10)
	HeaderText.Font = Enum.Font.GothamBold
	HeaderText.Text = config.Name;
	HeaderText.TextColor3 = Color3.fromRGB(209, 209, 209)
	HeaderText.TextScaled = true
	HeaderText.TextSize = 14.000
	HeaderText.TextWrapped = true

	task.delay(0.4,function()
		TweenService:Create(HeaderText,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
			Position = UDim2.new(0, 10, 0, 5)
		}):Play()
	end)
	
	Line.Name = NeverZen:RandomString()
	Line.Parent = Header
	Line.AnchorPoint = Vector2.new(0, 1)
	Line.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0, 170, 1, 0)
	Line.Size = UDim2.new(1, -170, 0, 1)

	Frame.Parent = Header
	Frame.AnchorPoint = Vector2.new(1, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = 1.000
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(1, -10, -0.5, 0)
	Frame.Size = UDim2.new(0, 150, 0.5, 0)
	Frame.ZIndex = 5
	
	task.delay(0.6,function()
		TweenService:Create(Frame,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
			Position = UDim2.new(1, -10, 0.5, 0)
		}):Play()
	end)

	UIListLayout.Parent = Frame
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.Padding = UDim.new(0, 5)
	
	SearchFrame.Name = NeverZen:RandomString()
	SearchFrame.Parent = Frame
	SearchFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SearchFrame.BackgroundTransparency = 1.000
	SearchFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SearchFrame.BorderSizePixel = 0
	SearchFrame.ClipsDescendants = true
	SearchFrame.Size = UDim2.new(0, 140, 0, 22)

	SearchButton.Name = NeverZen:RandomString()
	SearchButton.Parent = SearchFrame
	SearchButton.AnchorPoint = Vector2.new(1, 0.5)
	SearchButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SearchButton.BackgroundTransparency = 1.000
	SearchButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SearchButton.BorderSizePixel = 0
	SearchButton.Position = UDim2.new(1, -2, 0.5, 0)
	SearchButton.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
	SearchButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
	SearchButton.Image = "rbxassetid://10734943674"
	SearchButton.ImageTransparency = 0.200

	UIStroke_2.Color = Color3.fromRGB(24, 24, 24)
	UIStroke_2.Parent = SearchFrame

	UICorner_2.CornerRadius = UDim.new(0, 4)
	UICorner_2.Parent = SearchFrame

	TextBox.Parent = SearchFrame
	TextBox.AnchorPoint = Vector2.new(0, 0.5)
	TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.BackgroundTransparency = 1.000
	TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.BorderSizePixel = 0
	TextBox.Position = UDim2.new(0, 5, 0.5, 0)
	TextBox.Size = UDim2.new(1, -27, 0.649999976, 0)
	TextBox.ClearTextOnFocus = false
	TextBox.Font = Enum.Font.GothamMedium
	TextBox.PlaceholderText = "Search"
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextSize = 14.000
	TextBox.TextTransparency = 0.200
	TextBox.TextXAlignment = Enum.TextXAlignment.Left
	
	TextBox:GetPropertyChangedSignal('Text'):Connect(function()
	
		if WindowSignal.SelectedTab then
			if TextBox.Text:byte() then
				WindowSignal.SelectedTab.Search(TextBox.Text);
			else
				WindowSignal.SelectedTab.Search(nil);
			end
		end;
	end)
	
	SettingsButton.Name = NeverZen:RandomString()
	SettingsButton.Parent = Frame
	SettingsButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SettingsButton.BackgroundTransparency = 1.000
	SettingsButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	SettingsButton.BorderSizePixel = 0
	SettingsButton.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
	SettingsButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
	SettingsButton.Image = "rbxassetid://10734950309"
	SettingsButton.ImageTransparency = 0.200

	MinButton.Name = NeverZen:RandomString()
	MinButton.Parent = Frame
	MinButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MinButton.BackgroundTransparency = 1.000
	MinButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MinButton.BorderSizePixel = 0
	MinButton.Size = UDim2.new(1, 0, 1, 0)
	MinButton.SizeConstraint = Enum.SizeConstraint.RelativeYY
	MinButton.Image = "rbxassetid://9886659001"
	MinButton.ImageTransparency = 0.200

	Line_2.Name = NeverZen:RandomString()
	Line_2.Parent = WindowFrame
	Line_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Line_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Line_2.BorderSizePixel = 0
	Line_2.Position = UDim2.new(0, 170, 0, 0)
	Line_2.Size = UDim2.new(0, 1, 1, 0)

	BthFrames.Name = NeverZen:RandomString()
	BthFrames.Parent = WindowFrame
	BthFrames.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BthFrames.BackgroundTransparency = 1.000
	BthFrames.BorderColor3 = Color3.fromRGB(0, 0, 0)
	BthFrames.BorderSizePixel = 0
	BthFrames.Position = UDim2.new(-1, 0, 0, 45)
	BthFrames.Size = UDim2.new(0, 170, 1, -45)
	
	task.delay(0.3,function()
		TweenService:Create(BthFrames,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
			Position = UDim2.new(0, 0, 0, 45)
		}):Play()
	end)
	
	InformationFrame.Name = NeverZen:RandomString()
	InformationFrame.Parent = BthFrames
	InformationFrame.AnchorPoint = Vector2.new(0, 1)
	InformationFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	InformationFrame.BackgroundTransparency = 1.000
	InformationFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	InformationFrame.BorderSizePixel = 0
	InformationFrame.Position = UDim2.new(0, 0, 1, 55)
	InformationFrame.Size = UDim2.new(1, 0, 0, 45)
	
	task.delay(0.3,function()
		TweenService:Create(InformationFrame,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
			Position = UDim2.new(0, 0, 1, 0)
		}):Play()
	end)
	
	ProfileIcon.Name = NeverZen:RandomString()
	ProfileIcon.Parent = InformationFrame
	ProfileIcon.Active = true
	ProfileIcon.AnchorPoint = Vector2.new(0, 0.5)
	ProfileIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ProfileIcon.BackgroundTransparency = 1.000
	ProfileIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ProfileIcon.BorderSizePixel = 0
	ProfileIcon.Position = UDim2.new(0, 5, 1.3, 0)
	ProfileIcon.Size = UDim2.new(0, 35, 0, 35)
	pcall(function()
		ProfileIcon.Image = Services.Players:GetUserThumbnailAsync(LocalPlayer.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size150x150)
	end)
	task.delay(0.45,function()
		TweenService:Create(ProfileIcon,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
			Position = UDim2.new(0, 5, 0.5, 0)
		}):Play()
	end)
	
	UICorner_3.CornerRadius = UDim.new(1, 0)
	UICorner_3.Parent = ProfileIcon

	UIStroke_3.Thickness = 2.000
	UIStroke_3.Color = Color3.fromRGB(35, 35, 35)
	UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_3.Parent = ProfileIcon

	UsernameText.Name = NeverZen:RandomString()
	UsernameText.Parent = InformationFrame
	UsernameText.AnchorPoint = Vector2.new(0, 0.5)
	UsernameText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	UsernameText.BackgroundTransparency = 1.000
	UsernameText.BorderColor3 = Color3.fromRGB(0, 0, 0)
	UsernameText.BorderSizePixel = 0
	UsernameText.Position = UDim2.new(0, 47, 1.4, 0)
	UsernameText.Size = UDim2.new(1, -35, 0, -25)
	UsernameText.Font = Enum.Font.GothamBold
	UsernameText.Text = LocalPlayer.DisplayName;
	UsernameText.TextColor3 = Color3.fromRGB(206, 206, 206)
	UsernameText.TextSize = 14.000
	UsernameText.TextXAlignment = Enum.TextXAlignment.Left
	
	task.delay(0.5,function()
		TweenService:Create(UsernameText,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
			Position = UDim2.new(0, 47, 0.5, 0)
		}):Play()
	end)
	
	UIGradient.Rotation = 90
	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.20, 0.24), NumberSequenceKeypoint.new(0.50, 0.00), NumberSequenceKeypoint.new(0.80, 0.24), NumberSequenceKeypoint.new(1.00, 1.00)}
	UIGradient.Parent = UsernameText

	TabButtons.Name = NeverZen:RandomString()
	TabButtons.Parent = BthFrames
	TabButtons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabButtons.BackgroundTransparency = 1.000
	TabButtons.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabButtons.BorderSizePixel = 0
	TabButtons.ClipsDescendants = true
	TabButtons.Size = UDim2.new(0, 170, 1.13661206, -100)

	TBSFrame.Name = NeverZen:RandomString()
	TBSFrame.Parent = TabButtons
	TBSFrame.Active = true
	TBSFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	TBSFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TBSFrame.BackgroundTransparency = 1.000
	TBSFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TBSFrame.BorderSizePixel = 0
	TBSFrame.ClipsDescendants = false
	TBSFrame.Position = UDim2.new(-0.4, 0, 0.5, 0)
	TBSFrame.Size = UDim2.new(1, -5, 1, -5)
	TBSFrame.ZIndex = 2
	TBSFrame.BottomImage = ""
	TBSFrame.ScrollBarThickness = 0
	TBSFrame.TopImage = ""
	
	task.delay(0.3,function()
		TweenService:Create(TBSFrame,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
			Position = UDim2.new(0.5, 0, 0.5, 0)
		}):Play()
	end)
	
	UIListLayout_2.Parent = TBSFrame
	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Padding = UDim.new(0, 3)
	
	UIListLayout_2:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
		TBSFrame.CanvasSize = UDim2.fromOffset(0,UIListLayout_2.AbsoluteContentSize.Y + 5)
	end)
	
	Line_3.Name = NeverZen:RandomString()
	Line_3.Parent = BthFrames
	Line_3.AnchorPoint = Vector2.new(0, 1)
	Line_3.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Line_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Line_3.BorderSizePixel = 0
	Line_3.Position = UDim2.new(0, 0, 1, -45)
	Line_3.Size = UDim2.new(0, 170, 0, 1)

	TabWin.Name = NeverZen:RandomString()
	TabWin.Parent = WindowFrame
	TabWin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabWin.BackgroundTransparency = 1.000
	TabWin.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabWin.BorderSizePixel = 0
	TabWin.Position = UDim2.new(0, 170, 1, 45)
	TabWin.Size = UDim2.new(1, -170, 1, -45)
	TabWin.ZIndex = 2
	
	task.delay(0.3,function()
		TweenService:Create(TabWin,TweenInfo.new(0.8,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
			Position = UDim2.new(0, 170, 0, 45)
		}):Play()
	end)
	
	function WindowSignal:AddLabel(name)
		local TBSTitle = Instance.new("TextLabel")

		TBSTitle.Name = "TBSTitle"
		TBSTitle.Parent = TBSFrame
		TBSTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TBSTitle.BackgroundTransparency = 1.000
		TBSTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TBSTitle.BorderSizePixel = 0
		TBSTitle.Size = UDim2.new(1, -17, 0, 15)
		TBSTitle.ZIndex = 5
		TBSTitle.Font = Enum.Font.GothamBold
		TBSTitle.Text = name
		TBSTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
		TBSTitle.TextSize = 14.000
		TBSTitle.TextTransparency = 0.75
		TBSTitle.TextXAlignment = Enum.TextXAlignment.Left
	end;
	
	function WindowSignal:AddTab(config)
		config = config or {};
		config.Name = config.Name or 'Example';
		config.Icon = config.Icon or "target";
		
		local TabSignal = {};
		local TabButton = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local TabIcon = Instance.new("ImageLabel")
		local TabName = Instance.new("TextLabel")

		TabButton.Name = "TabButton"
		TabButton.Parent = TBSFrame
		TabButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		TabButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabButton.BorderSizePixel = 0
		TabButton.Size = UDim2.new(1, 0, 0, 35)
		TabButton.ZIndex = 5

		UICorner.CornerRadius = UDim.new(0, 4)
		UICorner.Parent = TabButton

		TabIcon.Name = "TabIcon"
		TabIcon.Parent = TabButton
		TabIcon.AnchorPoint = Vector2.new(0, 0.5)
		TabIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabIcon.BackgroundTransparency = 1.000
		TabIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabIcon.BorderSizePixel = 0
		TabIcon.Position = UDim2.new(0, 7, 0.5, 0)
		TabIcon.Size = UDim2.new(0, 20, 0, 20)
		TabIcon.ZIndex = 5
		TabIcon.Image = NeverZen:GetIcon(config.Icon);
		TabIcon.ImageTransparency = 0.500

		TabName.Name = "TabName"
		TabName.Parent = TabButton
		TabName.AnchorPoint = Vector2.new(0, 0.5)
		TabName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabName.BackgroundTransparency = 1.000
		TabName.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabName.BorderSizePixel = 0
		TabName.Position = UDim2.new(0, 37, 0.5, 0)
		TabName.Size = UDim2.new(1, -45, 0, 15)
		TabName.ZIndex = 5
		TabName.Font = Enum.Font.GothamMedium
		TabName.Text = config.Name
		TabName.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabName.TextScaled = true
		TabName.TextSize = 14.000
		TabName.TextTransparency = 0.200
		TabName.TextWrapped = true
		TabName.TextXAlignment = Enum.TextXAlignment.Left

		local TabFrame = Instance.new("Frame")
		local LeftFrame = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		local RightFrame = Instance.new("ScrollingFrame")
		local UIListLayout_2 = Instance.new("UIListLayout")

		TabFrame.Name = "TabFrame"
		TabFrame.Parent = TabWin
		TabFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabFrame.BackgroundTransparency = 1.000
		TabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabFrame.BorderSizePixel = 0
		TabFrame.ClipsDescendants = true
		TabFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
		TabFrame.Size = UDim2.new(1, -2, 1, -2)
		TabFrame.ZIndex = 4

		LeftFrame.Name = "LeftFrame"
		LeftFrame.Parent = TabFrame
		LeftFrame.Active = true
		LeftFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		LeftFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		LeftFrame.BackgroundTransparency = 1.000
		LeftFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		LeftFrame.BorderSizePixel = 0
		LeftFrame.ClipsDescendants = false
		LeftFrame.Position = UDim2.new(0.25, 0, 0.5, 0)
		LeftFrame.Size = UDim2.new(0.5, -5, 1, -3)
		LeftFrame.ScrollBarThickness = 1
		LeftFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

		UIListLayout.Parent = LeftFrame
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 5)
		
		UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
			LeftFrame.CanvasSize = UDim2.fromOffset(0,UIListLayout.AbsoluteContentSize.Y + 5)
		end)
		
		RightFrame.Name = "RightFrame"
		RightFrame.Parent = TabFrame
		RightFrame.Active = true
		RightFrame.AnchorPoint = Vector2.new(0.5, 0.5)
		RightFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		RightFrame.BackgroundTransparency = 1.000
		RightFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		RightFrame.BorderSizePixel = 0
		RightFrame.ClipsDescendants = false
		RightFrame.Position = UDim2.new(0.75, 0, 0.5, 0)
		RightFrame.Size = UDim2.new(0.5, -5, 1, -3)
		RightFrame.ScrollBarThickness = 1

		UIListLayout_2.Parent = RightFrame
		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 5)
		
		UIListLayout_2:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
			RightFrame.CanvasSize = UDim2.fromOffset(0,UIListLayout_2.AbsoluteContentSize.Y + 5)
		end)
		
		local ToggleFunc = function(value)
			if value then
				TabFrame.Visible = true;
				
				TweenService:Create(TabButton,TweenInfo.new(0.2),{
					BackgroundTransparency = 0.1
				}):Play()
				
				TweenService:Create(TabIcon,TweenInfo.new(0.3),{
					ImageTransparency = 0.25,
					Size = UDim2.new(0, 25, 0, 25),
					Position = UDim2.new(0, 4, 0.5, 0)
				}):Play()
				
				TweenService:Create(TabName,TweenInfo.new(0.1),{
					TextTransparency = 0.1,
					Position = UDim2.new(0, 37, 0.5, 0)
				}):Play()
			else
				TabFrame.Visible = false;
				
				TweenService:Create(TabButton,TweenInfo.new(0.2),{
					BackgroundTransparency = 1
				}):Play()
				
				TweenService:Create(TabIcon,TweenInfo.new(0.3),{
					ImageTransparency = 0.5,
					Position = UDim2.new(0, 7, 0.5, 0),
					Size = UDim2.new(0, 20, 0, 20)
				}):Play()
				
				TweenService:Create(TabName,TweenInfo.new(0.1),{
					TextTransparency = 0.2,
					Position = UDim2.new(0, 33, 0.5, 0)
				}):Play()
			end;
		end;
		
		local itemForSearch = {};
		
		local searchItem = function(q : string)
			if q and q:byte() then
				for i,v in next , itemForSearch do
					if (i % 25) == 1 then
						task.wait()
					end
					
					if string.find(string.lower(v.Name) , string.lower(q) , 1, true) then
						v.Frame.Visible = true;
						task.wait()
					else
						v.Frame.Visible = false;
					end;
				end;
			else
				for i,v in next , itemForSearch do
					if (i % 25) == 1 then
						task.wait()
					end
					v.Frame.Visible = true;
				end;
			end;
		end;
		
		local TabIden = {
			call = ToggleFunc,
			target = TabButton,
			Search = searchItem,
		};
		
		ToggleFunc(WindowSignal.SelectedTab == nil and true)
		
		table.insert(WindowSignal.Tabs,TabIden);
		
		WindowSignal.SelectedTab = TabIden;

		task.delay(0.1,function()
			WindowSignal.SelectedTab = TabIden;
		end)
		
		NeverZen:NewInput(TabButton,function()
			WindowSignal.SelectedTab = TabIden;
			
			for i,v in next , WindowSignal.Tabs do
				if v.target == TabButton then
					ToggleFunc(true)
				else
					v.call(false)
				end;
			end;
		end);
		
		function TabSignal:AddSection(Config)
			Config = Config or {};
			
			Config.Name = Config.Name or "Section";
			Config.Position = Config.Position or "left";
			
			local SectionSignal = {};
			
			local Section = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local UIStroke = Instance.new("UIStroke")
			local head = Instance.new("Frame")
			local Label = Instance.new("TextLabel")
			local Frame = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")
			
			Section.Name = "Section"
			Section.Parent = (string.lower(Config.Position) == "left" and LeftFrame) or RightFrame;
			Section.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
			Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Section.BorderSizePixel = 0
			Section.ClipsDescendants = true
			Section.Size = UDim2.new(1, 0, 0, 25)

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = Section

			UIStroke.Color = Color3.fromRGB(32, 32, 32)
			UIStroke.Parent = Section

			head.Name = "head"
			head.Parent = Section
			head.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			head.BackgroundTransparency = 1.000
			head.BorderColor3 = Color3.fromRGB(0, 0, 0)
			head.BorderSizePixel = 0
			head.Size = UDim2.new(1, 0, 0, 24)

			Label.Name = "Label"
			Label.Parent = head
			Label.AnchorPoint = Vector2.new(0.5, 0)
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 1.000
			Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Label.BorderSizePixel = 0
			Label.Position = UDim2.new(0.5, 0, 0, 2)
			Label.Size = UDim2.new(1, -10, 0, 20)
			Label.Font = Enum.Font.GothamBold
			Label.Text = Config.Name
			Label.TextColor3 = Color3.fromRGB(255, 255, 255)
			Label.TextSize = 14.000
			Label.TextTransparency = 0.200
			Label.TextXAlignment = Enum.TextXAlignment.Left

			Frame.Parent = head
			Frame.AnchorPoint = Vector2.new(0, 1)
			Frame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
			Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Frame.BorderSizePixel = 0
			Frame.Position = UDim2.new(0, 0, 1, 0)
			Frame.Size = UDim2.new(1, 0, 0, 1)
			Frame.ZIndex = 6

			UIListLayout.Parent = Section
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 3)
			
			UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
				TweenService:Create(Section,TweenInfo.new(0.3,Enum.EasingStyle.Quint),{
					Size = UDim2.new(1, 0, 0, UIListLayout.AbsoluteContentSize.Y + 3)
				}):Play()
			end)
			
			function SectionSignal:AddToggle(config)
				config = config or {};
				config.Default = config.Default or false;
				config.Name = config.Name or "Toggle";
				config.Callback = config.Callback or function() end;
				
				local Toggle = Instance.new("Frame")
				local Label = Instance.new("TextLabel")
				local sys = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local color = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")
				
				table.insert(itemForSearch,{
					Frame = Toggle,
					Name = config.Name
				})
	
				Toggle.Name = "Toggle"
				Toggle.Parent = Section
				Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Toggle.BackgroundTransparency = 1.000
				Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Toggle.BorderSizePixel = 0
				Toggle.Size = UDim2.new(1, -5, 0, 25)

				Label.Name = "Label"
				Label.Parent = Toggle
				Label.AnchorPoint = Vector2.new(0, 0.5)
				Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Label.BackgroundTransparency = 1.000
				Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Label.BorderSizePixel = 0
				Label.Position = UDim2.new(0, 5, 0.5, 0)
				Label.Size = UDim2.new(1, -25, 0.649999976, 0)
				Label.Font = Enum.Font.GothamMedium
				Label.Text = config.Name
				Label.TextColor3 = Color3.fromRGB(255, 255, 255)
				Label.TextSize = 14.000
				Label.TextTransparency = 0.100
				Label.TextXAlignment = Enum.TextXAlignment.Left

				sys.Name = "sys"
				sys.Parent = Toggle
				sys.AnchorPoint = Vector2.new(1, 0.5)
				sys.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
				sys.BorderColor3 = Color3.fromRGB(0, 0, 0)
				sys.BorderSizePixel = 0
				sys.Position = UDim2.new(1, -3, 0.5, 0)
				sys.Size = UDim2.new(0, 25, 0, 15)

				UICorner.CornerRadius = UDim.new(1, 0)
				UICorner.Parent = sys

				color.Name = "color"
				color.Parent = sys
				color.AnchorPoint = Vector2.new(0.5, 0.5)
				color.BackgroundColor3 = Color3.fromRGB(161, 208, 42)
				color.BorderColor3 = Color3.fromRGB(0, 0, 0)
				color.BorderSizePixel = 0
				color.Position = UDim2.new(0.75, 0, 0.5, 0)
				color.Size = UDim2.new(1, 0, 1, 0)
				color.SizeConstraint = Enum.SizeConstraint.RelativeYY

				UICorner_2.CornerRadius = UDim.new(1, 0)
				UICorner_2.Parent = color

				UIStroke.Color = Color3.fromRGB(40, 40, 40)
				UIStroke.Parent = sys
				
				local setValue = function(value)
					if value then
						TweenService:Create(color,TweenInfo.new(0.2),{
							Position = UDim2.new(0.75, 0, 0.5, 0),
							BackgroundColor3 = Color3.fromRGB(161, 208, 42)
						}):Play()
						
						TweenService:Create(Label,TweenInfo.new(0.4),{
							TextTransparency = 0.1
						}):Play()
					else
						
						TweenService:Create(Label,TweenInfo.new(0.4),{
							TextTransparency = 0.4
						}):Play()
						
						TweenService:Create(color,TweenInfo.new(0.2),{
							Position = UDim2.new(0.25, 0, 0.5, 0),
							BackgroundColor3 = Color3.fromRGB(152, 152, 152)
						}):Play()
					end;
				end;
				
				setValue(config.Default);
				
				NeverZen:NewInput(Toggle,function()
					config.Default = not config.Default
					setValue(config.Default)
					
					config.Callback(config.Default,config)
				end);
				
				return {
					SetValue = function(self,newvalue)
						config.Default = newvalue
						setValue(config.Default)

						config.Callback(config.Default,config)
					end,
					
					Visible = function(self,value)
						Toggle.Visible = value;
					end,
				}
			end;
			
			function SectionSignal:AddLabel(name)
				local Label = Instance.new("TextLabel")
				
				table.insert(itemForSearch,{
					Frame = Label,
					Name = name
				})
				
				Label.Name = "Label"
				Label.Parent = Section
				Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Label.BackgroundTransparency = 1.000
				Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Label.BorderSizePixel = 0
				Label.Size = UDim2.new(1, -10, 0, 20)
				Label.ZIndex = 5
				Label.Font = Enum.Font.GothamBold
				Label.Text = name
				Label.TextColor3 = Color3.fromRGB(255, 255, 255)
				Label.TextSize = 13.000
				Label.TextTransparency = 0.200
				Label.TextXAlignment = Enum.TextXAlignment.Left
				
				return {
					SetValue = function(self,newvalue)
						Label.Text = newvalue
					end,
					
					Visible = function(self,value)
						Label.Visible = value;
					end,
				}
			end;
			
			function SectionSignal:AddButton(config)
				config = config or {};
				config.Name = config.Name or "Button";
				config.Callback = config.Callback or function() end;
				
				local Button = Instance.new("Frame")
				local Label = Instance.new("TextLabel")
				local UICorner = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")

				table.insert(itemForSearch,{
					Frame = Button,
					Name = config.Name
				})
				
				Button.Name = "Button"
				Button.Parent = Section
				Button.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
				Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Button.BorderSizePixel = 0
				Button.Size = UDim2.new(1, -10, 0, 25)

				Label.Name = "Label"
				Label.Parent = Button
				Label.AnchorPoint = Vector2.new(0.5, 0.5)
				Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Label.BackgroundTransparency = 1.000
				Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Label.BorderSizePixel = 0
				Label.Position = UDim2.new(0.5, 0, 0.5, 0)
				Label.Size = UDim2.new(1, -25, 0.649999976, 0)
				Label.Font = Enum.Font.GothamMedium
				Label.Text = config.Name
				Label.TextColor3 = Color3.fromRGB(255, 255, 255)
				Label.TextSize = 14.000
				Label.TextTransparency = 0.100

				UICorner.CornerRadius = UDim.new(0, 4)
				UICorner.Parent = Button

				UIStroke.Color = Color3.fromRGB(48, 48, 48)
				UIStroke.Parent = Button
				
				local button = NeverZen:NewInput(Button,function()
					config.Callback(config);
				end)
				
				button.MouseEnter:Connect(function()
					Button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				end)
				
				button.MouseLeave:Connect(function()
					Button.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
				end)
				
				return {
					SetText = function(self,newvalue)
						Label.Text = newvalue
					end,
					Fire = config.Callback,
					Visible = function(self,value)
						Button.Visible = value;
					end,
				};
			end;
			
			function SectionSignal:AddSlider(config)
				config = config or {};
				config.Name = config.Name or "Slider"
				config.Min = config.Min or 0;
				config.Max = config.Max or 100;
				config.Default = config.Default or config.Min;
				config.Round = config.Round or 0;
				config.Type = config.Type or "";
				config.Callback = config.Callback or function() end;
				
				
				local Slider = Instance.new("Frame")
				local value = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local LabelValue = Instance.new("TextLabel")
				local UIStroke = Instance.new("UIStroke")
				local Label = Instance.new("TextLabel")
				local con = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local UIStroke_2 = Instance.new("UIStroke")
				local block = Instance.new("Frame")
				local UICorner_3 = Instance.new("UICorner")
				local move = Instance.new("Frame")
				local UICorner_4 = Instance.new("UICorner")
				
				table.insert(itemForSearch,{
					Frame = Slider,
					Name = config.Name
				})
				
				Slider.Name = "Slider"
				Slider.Parent = Section
				Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Slider.BackgroundTransparency = 1.000
				Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Slider.BorderSizePixel = 0
				Slider.Size = UDim2.new(1, -5, 0, 25)

				value.Name = "value"
				value.Parent = Slider
				value.AnchorPoint = Vector2.new(1, 0.5)
				value.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
				value.BorderColor3 = Color3.fromRGB(0, 0, 0)
				value.BorderSizePixel = 0
				value.Position = UDim2.new(1, -3, 0.5, 0)
				value.Size = UDim2.new(0, 25, 0, 15)

				UICorner.CornerRadius = UDim.new(0, 4)
				UICorner.Parent = value

				LabelValue.Name = "LabelValue"
				LabelValue.Parent = value
				LabelValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelValue.BackgroundTransparency = 1.000
				LabelValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
				LabelValue.BorderSizePixel = 0
				LabelValue.Size = UDim2.new(1, 0, 1, 0)
				LabelValue.Font = Enum.Font.GothamMedium
				LabelValue.Text = tostring(config.Default)..tostring(config.Type)
				LabelValue.TextColor3 = Color3.fromRGB(255, 255, 255)
				LabelValue.TextSize = 10.000
				LabelValue.TextTransparency = 0.250

				UIStroke.Color = Color3.fromRGB(40, 40, 40)
				UIStroke.Parent = value

				Label.Name = "Label"
				Label.Parent = Slider
				Label.AnchorPoint = Vector2.new(0, 0.5)
				Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Label.BackgroundTransparency = 1.000
				Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Label.BorderSizePixel = 0
				Label.Position = UDim2.new(0, 5, 0.5, 0)
				Label.Size = UDim2.new(1, -25, 0.649999976, 0)
				Label.Font = Enum.Font.GothamMedium
				Label.Text = config.Name
				Label.TextColor3 = Color3.fromRGB(255, 255, 255)
				Label.TextSize = 14.000
				Label.TextTransparency = 0.250
				Label.TextXAlignment = Enum.TextXAlignment.Left

				con.Name = "con"
				con.Parent = Slider
				con.AnchorPoint = Vector2.new(1, 0.5)
				con.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
				con.BorderColor3 = Color3.fromRGB(0, 0, 0)
				con.BorderSizePixel = 0
				con.Position = UDim2.new(1, -32, 0.5, 0)
				con.Size = UDim2.new(1, -125, 0.200000003, 0)

				UICorner_2.CornerRadius = UDim.new(1, 0)
				UICorner_2.Parent = con

				UIStroke_2.Color = Color3.fromRGB(40, 40, 40)
				UIStroke_2.Parent = con

				block.Name = "block"
				block.Parent = con
				block.BackgroundColor3 = Color3.fromRGB(161, 208, 42)
				block.BorderColor3 = Color3.fromRGB(0, 0, 0)
				block.BorderSizePixel = 0
				block.Size = UDim2.new(((config.Default - config.Min) / (config.Max - config.Min)), 0, 1, 0)
				block.ZIndex = 15
				block.Active = true
				
				UICorner_3.CornerRadius = UDim.new(1, 0)
				UICorner_3.Parent = block

				move.Name = "move"
				move.Parent = block
				move.AnchorPoint = Vector2.new(0.5, 0.5)
				move.BackgroundColor3 = Color3.fromRGB(161, 208, 42)
				move.BorderColor3 = Color3.fromRGB(0, 0, 0)
				move.BorderSizePixel = 0
				move.Position = UDim2.new(1, 0, 0.5, 0)
				move.Size = UDim2.new(2, 0, 2, 0)
				move.SizeConstraint = Enum.SizeConstraint.RelativeYY

				UICorner_4.CornerRadius = UDim.new(1, 0)
				UICorner_4.Parent = move
				
				local IsHold = false;

				local function update(Input)
					local SizeScale = math.clamp((((Input.Position.X) - con.AbsolutePosition.X) / con.AbsoluteSize.X), 0, 1);
					local Main = ((config.Max - config.Min) * SizeScale) + config.Min;
					local Value = NeverZen:Rounding(Main,config.Round);
					local PositionX = UDim2.fromScale(SizeScale, 1);
					local normalized = (Value - config.Min) / (config.Max - config.Min);

					TweenService:Create(block , TweenInfo.new(0.04),{
						Size = UDim2.new(normalized, 0, 1, 0)
					}):Play();

					LabelValue.Text = tostring(Value)..tostring(config.Type)

					config.Callback(Value,config)
				end;

				con.InputBegan:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
						IsHold = true
						update(Input)
					end
				end)

				con.InputEnded:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
						IsHold = false
					end
				end)

				Services.UserInputService.InputChanged:Connect(function(Input)
					if IsHold then
						if (Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch)  then
							update(Input)
						end
						
						if Services.UserInputService.TouchEnabled then
							if not NeverZen:IsMouseOverFrame(Slider) then
								IsHold = false
							end;
						end;
					end
				end);
				
				return {
					SetValue = function(self,newvalue)
						config.Default = newvalue;
						block.Size = UDim2.new(((config.Default - config.Min) / (config.Max - config.Min)), 0, 1, 0)
						LabelValue.Text = tostring(config.Default)..tostring(config.Type)
					end,
					Fire = config.Callback,
					Visible = function(self,value)
						Slider.Visible = value;
					end,
				};
			end;

			function SectionSignal:AddKeybind(config)
				config = config or {};
				config.Name = config.Name or "Keybind";
				config.Default = config.Default or nil;
				config.Callback = config.Callback or function() end;
				
				local Keys = {
					One = '1',
					Two = '2',
					Three = '3',
					Four = '4',
					Five = '5',
					Six = '6',
					Seven = '7',
					Eight = '8',
					Nine = '9',
					Zero = '0',
					
					['Minus'] = "-",
					['Plus'] = "+",
					BackSlash = "\\",
					Slash = "/",
					Period = '.',
					Semicolon = ';',
					Colon = ":"
				};
				
				local GetItem = function(item)
					if item then
						if typeof(item) == 'EnumItem' then
							return Keys[item.Name] or item.Name;
						else
							return Keys[tostring(item)] or string.upper(tostring(item))
						end;
					else
						return 'NONE';
					end;
				end;

				local Keybind = Instance.new("Frame")
				local sys = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local value = Instance.new("TextLabel")
				local UIStroke = Instance.new("UIStroke")
				local Label = Instance.new("TextLabel")
				
				table.insert(itemForSearch,{
					Frame = Keybind,
					Name = config.Name
				})
				
				Keybind.Name = "Keybind"
				Keybind.Parent = Section
				Keybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Keybind.BackgroundTransparency = 1.000
				Keybind.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Keybind.BorderSizePixel = 0
				Keybind.Size = UDim2.new(1, -5, 0, 25)

				sys.Name = "sys"
				sys.Parent = Keybind
				sys.AnchorPoint = Vector2.new(1, 0.5)
				sys.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
				sys.BorderColor3 = Color3.fromRGB(0, 0, 0)
				sys.BorderSizePixel = 0
				sys.Position = UDim2.new(1, -3, 0.5, 0)
				sys.Size = UDim2.new(0, 25, 0, 15)

				UICorner.CornerRadius = UDim.new(0, 4)
				UICorner.Parent = sys

				value.Name = "value"
				value.Parent = sys
				value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				value.BackgroundTransparency = 1.000
				value.BorderColor3 = Color3.fromRGB(0, 0, 0)
				value.BorderSizePixel = 0
				value.Size = UDim2.new(1, 0, 1, 0)
				value.Font = Enum.Font.GothamMedium
				value.Text = GetItem(config.Default)
				value.TextColor3 = Color3.fromRGB(161, 208, 42);
				value.TextSize = 12.000
				value.TextTransparency = 0.250

				UIStroke.Color = Color3.fromRGB(40, 40, 40)
				UIStroke.Parent = sys

				Label.Name = "Label"
				Label.Parent = Keybind
				Label.AnchorPoint = Vector2.new(0, 0.5)
				Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Label.BackgroundTransparency = 1.000
				Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Label.BorderSizePixel = 0
				Label.Position = UDim2.new(0, 5, 0.5, 0)
				Label.Size = UDim2.new(1, -25, 0.649999976, 0)
				Label.Font = Enum.Font.GothamMedium
				Label.Text = config.Name
				Label.TextColor3 = Color3.fromRGB(255, 255, 255)
				Label.TextSize = 14.000
				Label.TextTransparency = 0.250
				Label.TextXAlignment = Enum.TextXAlignment.Left
				
				local UpdateScale = function()
					local BindLabelScale = TextService:GetTextSize(value.Text,value.TextSize,value.Font,Vector2.new(math.huge,math.huge));

					TweenService:Create(sys,TweenInfo.new(0.1),{
						Size = UDim2.new(0, BindLabelScale.X + 10, 0, 15)
					}):Play();
				end;

				UpdateScale();

				local Button = NeverZen:NewInput(Keybind);
				local IsBinding = false;

				Button.MouseButton1Click:Connect(function()
					if IsBinding then return; end;
					
					IsBinding = true;

					value.Text = "...";

					UpdateScale();

					local Selected = nil;
					while not Selected do
						local Key = Services.UserInputService.InputBegan:Wait();

						if Key.KeyCode ~= Enum.KeyCode.Unknown then
							Selected = Key.KeyCode;
						end;
					end;

					config.Default = Selected;

					value.Text = GetItem(Selected);

					UpdateScale();

					IsBinding = false;

					config.Callback(Selected,config);
				end)
				
				return {
					SetValue = function(self,newvalue)
						config.Default = newvalue;
						value.Text = GetItem(newvalue);

						UpdateScale();
						
						config.Callback(newvalue,config);
					end,
					Fire = config.Callback,
					Visible = function(self,value)
						Keybind.Visible = value;
					end,
				};
			end;
			
			function SectionSignal:AddDropdown(config)
				config = config or {};
				config.Name = config.Name or "Dropdown";
				config.Values = config.Values or {};
				config.Default = config.Default or {};
				config.Multi = config.Multi or false;
				config.Callback = config.Callback or function() end;
				
				local parse = function(value)
					if not value then return 'NONE' end;
					
					if typeof(value) == 'table' then
						if #value > 0 then
							local x = {};
							
							for i,v in next , value do
								table.insert(x , tostring(v))
							end;
							
							return table.concat(x,' , ')
						else
							local x = {};
				
							for i,v in next , value do
								if v == true then
									
									table.insert(x , tostring(i))
								end			
							end;
			
							return table.concat(x,' , ')
						end;
					else
						return tostring(value);
					end;
				end;
				
				local Dropown = Instance.new("Frame")
				local sys = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local value = Instance.new("TextLabel")
				local UIStroke = Instance.new("UIStroke")
				local Label = Instance.new("TextLabel")
				
				table.insert(itemForSearch,{
					Frame = Dropown,
					Name = config.Name
				})
				
				Dropown.Name = "Dropown"
				Dropown.Parent = Section
				Dropown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Dropown.BackgroundTransparency = 1.000
				Dropown.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Dropown.BorderSizePixel = 0
				Dropown.Size = UDim2.new(1, -5, 0, 25)

				sys.Name = "sys"
				sys.Parent = Dropown
				sys.AnchorPoint = Vector2.new(1, 0.5)
				sys.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
				sys.BorderColor3 = Color3.fromRGB(0, 0, 0)
				sys.BorderSizePixel = 0
				sys.Position = UDim2.new(1, -3, 0.5, 0)
				sys.Size = UDim2.new(0, 55, 0, 15)

				UICorner.CornerRadius = UDim.new(0, 4)
				UICorner.Parent = sys

				value.Name = "value"
				value.Parent = sys
				value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				value.BackgroundTransparency = 1.000
				value.BorderColor3 = Color3.fromRGB(0, 0, 0)
				value.BorderSizePixel = 0
				value.Size = UDim2.new(1, 0, 1, 0)
				value.Font = Enum.Font.GothamMedium
				value.Text = parse(config.Default)
				value.TextColor3 = Color3.fromRGB(255, 255, 255)
				value.TextSize = 12.000
				value.TextTransparency = 0.250

				UIStroke.Color = Color3.fromRGB(40, 40, 40)
				UIStroke.Parent = sys

				Label.Name = "Label"
				Label.Parent = Dropown
				Label.AnchorPoint = Vector2.new(0, 0.5)
				Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Label.BackgroundTransparency = 1.000
				Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Label.BorderSizePixel = 0
				Label.Position = UDim2.new(0, 5, 0.5, 0)
				Label.Size = UDim2.new(1, -25, 0.649999976, 0)
				Label.Font = Enum.Font.GothamMedium
				Label.Text = config.Name
				Label.TextColor3 = Color3.fromRGB(255, 255, 255)
				Label.TextSize = 14.000
				Label.TextTransparency = 0.250
				Label.TextXAlignment = Enum.TextXAlignment.Left

				local DropdownItems = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")
				local Scroll = Instance.new("ScrollingFrame")
				local UIListLayout = Instance.new("UIListLayout")
				local DropShadow = Instance.new("ImageLabel")
				
				DropdownItems.Name = "DropdownItems"
				DropdownItems.Parent = Content
				DropdownItems.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
				DropdownItems.BackgroundTransparency = 0.050
				DropdownItems.BorderColor3 = Color3.fromRGB(0, 0, 0)
				DropdownItems.BorderSizePixel = 0
				DropdownItems.ClipsDescendants = true
				DropdownItems.Position = UDim2.new(0.518932879, 0, 0.54108721, 0)
				DropdownItems.Size = UDim2.new(0, 165, 0, 0)
				DropdownItems.ZIndex = 100
				DropdownItems.Visible = false
				
				UICorner.CornerRadius = UDim.new(0, 4)
				UICorner.Parent = DropdownItems

				UIStroke.Color = Color3.fromRGB(32, 32, 32)
				UIStroke.Parent = DropdownItems

				Scroll.Name = "Scroll"
				Scroll.Parent = DropdownItems
				Scroll.Active = true
				Scroll.AnchorPoint = Vector2.new(0.5, 0.5)
				Scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Scroll.BackgroundTransparency = 1.000
				Scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Scroll.BorderSizePixel = 0
				Scroll.ClipsDescendants = false
				Scroll.Position = UDim2.new(0.5, 0, 0.5, 0)
				Scroll.Size = UDim2.new(1, -5, 1, -5)
				Scroll.ZIndex = 101
				Scroll.ScrollBarThickness = 1

				UIListLayout.Parent = Scroll
				UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.Padding = UDim.new(0, 5)
				
				UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function(...: any) 
					Scroll.CanvasSize = UDim2.fromOffset(0,UIListLayout.AbsoluteContentSize.Y + 1)
				end)
				
				DropShadow.Name = "DropShadow"
				DropShadow.Parent = DropdownItems
				DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
				DropShadow.BackgroundTransparency = 1.000
				DropShadow.BorderSizePixel = 0
				DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
				DropShadow.Rotation = 0.000
				DropShadow.Size = UDim2.new(1, 47, 1, 47)
				DropShadow.ZIndex = 99
				DropShadow.Image = "rbxassetid://6015897843"
				DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
				DropShadow.ImageTransparency = 0.500
				DropShadow.ScaleType = Enum.ScaleType.Slice
				DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
				
				DropdownItems:GetPropertyChangedSignal('Size'):Connect(function()
					if DropdownItems.Size.Y.Offset < 5 then
						DropdownItems.Visible = false
					else
						DropdownItems.Visible = true
					end
				end);
				
				local Icons = {
					Selected = "rbxassetid://10734923868",
					Normal = "rbxassetid://10734895856"
				}
				
				local update = function()
					local scale = TextService:GetTextSize(value.Text,value.TextSize,value.Font,Vector2.new(math.huge,math.huge));
					
					TweenService:Create(sys , TweenInfo.new(0.1),{
						Size = UDim2.new(0, scale.X + 10, 0, 15)
					}):Play()
				end;
				
				update()
				
				Services.UserInputService.InputBegan:Connect(function(input)
					if input.UserInputType ~= Enum.UserInputType.MouseButton1 or input.UserInputType ~= Enum.UserInputType.Touch then
						if not NeverZen:IsMouseOverFrame(DropdownItems) then
							TweenService:Create(DropdownItems,TweenInfo.new(0.1),{
								Size = UDim2.new(0, 165, 0, 0)
							}):Play()
							
							DropdownItems:SetAttribute('OPENED',false)
						end;
					end;
				end)
				
				RunService.Stepped:Connect(function()
					if DropdownItems:GetAttribute('OPENED') then
						TweenService:Create(DropdownItems,TweenInfo.new(0.1),{
							Position = UDim2.fromOffset(sys.AbsolutePosition.X - (DropdownItems.AbsoluteSize.X / 2),sys.AbsolutePosition.Y),
							Size = UDim2.new(0, 165, 0, math.clamp(UIListLayout.AbsoluteContentSize.Y + 5, 15 , 150))
						}):Play()
					else
						DropdownItems.Position = UDim2.fromOffset(sys.AbsolutePosition.X - (DropdownItems.AbsoluteSize.X / 2),sys.AbsolutePosition.Y)
					end;
				end);
				
				local CreateButton = function(name,val)
					local Selected = Instance.new("Frame")
					local Icon = Instance.new("ImageLabel")
					local Label = Instance.new("TextLabel")
					local UIStroke = Instance.new("UIStroke")
					local UICorner = Instance.new("UICorner")

					Selected.Name = "Selected"
					Selected.Parent = Scroll
					Selected.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
					Selected.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Selected.BorderSizePixel = 0
					Selected.Size = UDim2.new(1, 0, 0, 25)
					Selected.ZIndex = 102

					Icon.Name = "Icon"
					Icon.Parent = Selected
					Icon.AnchorPoint = Vector2.new(0, 0.5)
					Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Icon.BackgroundTransparency = 1.000
					Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Icon.BorderSizePixel = 0
					Icon.Position = UDim2.new(0, 2, 0.5, 0)
					Icon.Size = UDim2.new(0.699999988, 0, 0.699999988, 0)
					Icon.SizeConstraint = Enum.SizeConstraint.RelativeYY
					Icon.ZIndex = 102
					Icon.ImageTransparency = 0.500
					
					Label.Name = "Label"
					Label.Parent = Selected
					Label.AnchorPoint = Vector2.new(0, 0.5)
					Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Label.BackgroundTransparency = 1.000
					Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Label.BorderSizePixel = 0
					Label.Position = UDim2.new(0, 25, 0.5, 0)
					Label.Size = UDim2.new(1, -25, 0.649999976, 0)
					Label.ZIndex = 102
					Label.Font = Enum.Font.GothamMedium
					Label.Text = tostring(name)
					Label.TextColor3 = Color3.fromRGB(255, 255, 255)
					Label.TextSize = 12.000
					Label.TextTransparency = 0.500
					Label.TextXAlignment = Enum.TextXAlignment.Left

					UIStroke.Transparency = 0.850
					UIStroke.Color = Color3.fromRGB(136, 136, 136)
					UIStroke.Parent = Selected

					UICorner.CornerRadius = UDim.new(0, 4)
					UICorner.Parent = Selected
					
					return Selected , Icon
				end;
				
				local refresh = function()
					for i,v in next , Scroll:GetChildren() do
						if v:IsA('Frame') then
							v:Destroy()
						end;
					end;
					
					local valueBl = (typeof(config.Default) == 'table' and table.clone(config.Default)) or config.Default;
					local old_call;
	
					if config.Multi then
						if typeof(valueBl) == 'table' and #valueBl > 0 then
							local fake = {};
							
							for i,v in next , valueBl do
								fake[v] = true;
							end;
							
							table.clear(valueBl)
							
							valueBl = {};
							
							valueBl = fake;
						end;
					end;
					
					config.Default = valueBl;
					
					for i,v in next,config.Values do
						local IsDefault = config.Default == v or (typeof(valueBl) == 'table' and (config.Default[v] or table.find(config.Default,v)));
						local Selected , Icon = CreateButton(v,IsDefault);
						
						local effect = function(val)
							local x = TweenService:Create(Icon,TweenInfo.new(0.4),{
								Rotation = (val and 180) or -180
							});
							
							x:Play()
								
							x.Completed:Connect(function()
								Icon.Rotation = 0
							end)
						end;
						
						local call = function(v)
							if v then
								if Icon.Image ~= Icons.Selected then
									effect(true)
								end
								
								Icon.Image = Icons.Selected
								Icon.ImageTransparency = 0.1
								Icon.ImageColor3 = Color3.fromRGB(161, 208, 42);
							else
								if Icon.Image ~= Icons.Normal then
									effect(false)
								end
								
								Icon.Image = Icons.Normal
								Icon.ImageTransparency = 0.5
								Icon.ImageColor3 = Color3.fromRGB(255, 255, 255);
							end;
						end;
						
						if IsDefault then
							old_call = call;
							call(true)
						else
							call(false)
						end;
						
						NeverZen:NewInput(Selected,function()
							if config.Multi then
								config.Default[v] = not (config.Default[v] or table.find(config.Default,v));
								
								call(config.Default[v])
								
								if #config.Default > 0 then
									for i,v in ipairs(config.Default) do
										table.remove(config.Default,i)
									end
								end;
								
								value.Text = parse(config.Default)
								update()
								
								config.Callback(config.Default)
							else
								config.Default = v;
								
								if old_call then
									old_call(false)
								end;
								
								call(true)
								old_call = call;
								
								value.Text = parse(config.Default)
								update()
								
								config.Callback(config.Default)
							end;
						end);
					end;
				end;
				
				local upd = NeverZen:NewInput(Dropown);
				
				DropdownItems:SetAttribute('OPENED',false)
				
				upd.MouseButton1Click:Connect(function()
					DropdownItems:SetAttribute('OPENED',true)
					
					TweenService:Create(DropdownItems,TweenInfo.new(0.1),{
						Size = UDim2.new(0, 165, 0, math.clamp(UIListLayout.AbsoluteContentSize.Y , 15 , 150))
					}):Play()
					
					refresh()
				end);
				
				return {
					SetValue = function(self,newvalue)
						config.Default = newvalue;
						value.Text = parse(newvalue)

						update();
					end,
					SetValues = function(self , new)
						config.Values = new
					end,
					Fire = config.Callback,
					Visible = function(self,value)
						Dropown.Visible = value;
					end,
				};
			end;
			
			return SectionSignal;
		end;
		
		function TabSignal:Rename(new)
			TabName.Text = new;
		end;
		
		function TabSignal:Icon(new)
			TabIcon.Image = NeverZen:GetIcon(new);
		end;
		
		return TabSignal;
	end;
	
	local llk;
	local ToggleWin = function(v)
		if llk then
			llk.Visible = (v and true) or false;	
		end;
		
		if not v then
			TweenService:Create(WindowFrame,TweenInfo.new(0.7,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
				Size = UDim2.fromOffset(210,45)
			}):Play()
			
			SettingsButton.Visible = false;
			SearchFrame.Visible = false;
			
			TweenService:Create(BthFrames,TweenInfo.new(0.5,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
				Position = UDim2.new(-1, 0, 0, 45)
			}):Play()
			
			TweenService:Create(InformationFrame,TweenInfo.new(0.8,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
				Position = UDim2.new(0, 0, 1, 55)
			}):Play()
			
			TweenService:Create(TabWin,TweenInfo.new(0.45,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
				Position = UDim2.new(1, 170, 0, 45)
			}):Play()
		else
			SettingsButton.Visible = true;
			SearchFrame.Visible = true;
			
			TweenService:Create(InformationFrame,TweenInfo.new(0.8,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
				Position = UDim2.new(0, 0, 1, 0)
			}):Play()
			
			TweenService:Create(BthFrames,TweenInfo.new(0.7,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
				Position = UDim2.new(0, 0, 0, 45)
			}):Play()
			
			TweenService:Create(TabWin,TweenInfo.new(0.8,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
				Position = UDim2.new(0, 170, 0, 45)
			}):Play()
			
			TweenService:Create(WindowFrame,TweenInfo.new(0.6,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
				Size = WindowSignal.Config.Scale
			}):Play()
		end;
	end;
	
	MinButton.MouseButton1Click:Connect(function()
		WindowSignal.Toggle = not WindowSignal.Toggle;

		ToggleWin(WindowSignal.Toggle)
	end)
	
	_G.NZ_RESET = function(msg)
		TweenService:Create(WindowFrame,TweenInfo.new(0.7,Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),{
			Position = UDim2.fromOffset(115,155)
		}):Play()
	end;
	
	Services.UserInputService.InputBegan:Connect(function(input , ty)
		if not ty then
			if input.KeyCode == WindowSignal.Config.Keybind then
				WindowSignal.Toggle = not WindowSignal.Toggle;
				
				ToggleWin(WindowSignal.Toggle)
			end;
		end
	end)
	
	if config.Resizable then
		local Resize = Instance.new("TextButton")
		local IsHold = false;

		Resize.Name = NeverZen:RandomString();
		Resize.Parent = WindowFrame
		Resize.AnchorPoint = Vector2.new(0.5, 0.5)
		Resize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Resize.BackgroundTransparency = 1.000
		Resize.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Resize.BorderSizePixel = 0
		Resize.Position = UDim2.new(1, 0, 1, 0)
		Resize.Rotation = 0.010
		Resize.Size = UDim2.new(0.075000003, 0, 0.075000003, 0)
		Resize.SizeConstraint = Enum.SizeConstraint.RelativeYY
		Resize.ZIndex = 100
		Resize.Font = Enum.Font.SourceSans
		Resize.Text = ""
		Resize.TextColor3 = Color3.fromRGB(0, 0, 0)
		Resize.TextSize = 14.000
		Resize.Active = true
		llk = Resize;
		
		local label = Instance.new('ImageLabel',Resize)
		
		label.BackgroundTransparency = 1
		label.Size = UDim2.fromOffset(10,10)
		label.ZIndex = Resize.ZIndex + 1
		label.Image = NeverZen:GetIcon('minimize-2')
		label.Position = UDim2.fromScale(0.5,0.5)
		label.AnchorPoint = Vector2.new(0.5,0.5)
		
		Resize.InputBegan:Connect(function(std)
			if std.UserInputType == Enum.UserInputType.MouseButton1 or std.UserInputType == Enum.UserInputType.Touch then
				IsHold = true
				if Services.UserInputService.TouchEnabled then
					Resize.Size = UDim2.new(0.15000003, 85, 0.15000003, 85)
				end
			end
		end)

		Resize.InputEnded:Connect(function(std)
			if std.UserInputType == Enum.UserInputType.MouseButton1 or std.UserInputType == Enum.UserInputType.Touch then
				IsHold = false
				Resize.Size = UDim2.new(0.075000003, 0, 0.075000003, 0)
			end
		end)
		
		Services.UserInputService.InputChanged:Connect(function(input)
			if IsHold and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and WindowSignal.Toggle then
				local pios = input.Position;
				local x = (pios.X - WindowFrame.AbsolutePosition.X) 

				local y = (pios.Y - WindowFrame.AbsolutePosition.Y) 

				if x < 390 then x = 390 end
				if y < 240 then y = 240 end

				local Offset = UDim2.new(0,x,0,y)
				local plus = UDim2.fromOffset(-(WindowFrame.AbsoluteSize.X - x) / 2, -(WindowFrame.AbsoluteSize.Y - y) / 2);

				TweenService:Create(WindowFrame , TweenInfo.new(0.05),{
					Size = Offset,
				}):Play();
				
				WindowSignal.Config.Scale = Offset
			end;
		end);
	end;
	
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(WindowFrame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	Header.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = WindowFrame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	Services.UserInputService.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
	
	return WindowSignal;
end;

function NeverZen:CreateNotifier()
	local Content = Instance.new("ScreenGui")
	local Notification = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	
	Content.Name = NeverZen:RandomString()
	Content.Parent = Services.CoreGui;
	Content.ResetOnSpawn = false
	Content.IgnoreGuiInset = true
	Content.ZIndexBehavior = Enum.ZIndexBehavior.Global;
	
	NeverZen.ProtectGui(Content)
	
	Notification.Name = "Notification"
	Notification.Parent = Content
	Notification.AnchorPoint = Vector2.new(1, 1)
	Notification.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
	Notification.BackgroundTransparency = 1.000
	Notification.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Notification.BorderSizePixel = 0
	Notification.Position = UDim2.new(1, -5, 1, -5)
	Notification.Size = UDim2.new(0, 220, 0, 65)
	Notification.ZIndex = 100

	UIListLayout.Parent = Notification
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	UIListLayout.Padding = UDim.new(0,5)
	
	return {
		new = function(head , body , duration)
			local Notify = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local UIStroke = Instance.new("UIStroke")
			local Header = Instance.new("TextLabel")
			local Body = Instance.new("TextLabel")

			Notify.Name = "Notify"
			Notify.Parent = Notification
			Notify.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
			Notify.BackgroundTransparency = 0.100
			Notify.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Notify.BorderSizePixel = 0
			Notify.Size = UDim2.new(0, 55,0,0,55)
			Notify.ClipsDescendants = true
			
			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = Notify

			UIStroke.Color = Color3.fromRGB(32, 32, 32)
			UIStroke.Parent = Notify

			Header.Name = "Header"
			Header.Parent = Notify
			Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Header.BackgroundTransparency = 1.000
			Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Header.BorderSizePixel = 0
			Header.Position = UDim2.new(0, 5, 0, 2)
			Header.Size = UDim2.new(1, -10, 0, 20)
			Header.Font = Enum.Font.GothamBold
			Header.Text = head
			Header.TextColor3 = Color3.fromRGB(255, 255, 255)
			Header.TextSize = 14.000
			Header.TextTransparency = 0.100
			Header.TextXAlignment = Enum.TextXAlignment.Left

			Body.Name = "Body"
			Body.Parent = Notify
			Body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Body.BackgroundTransparency = 1.000
			Body.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Body.BorderSizePixel = 0
			Body.Position = UDim2.new(0, 5, 0, 22)
			Body.Size = UDim2.new(1, -10, 1, -25)
			Body.Font = Enum.Font.GothamMedium
			Body.Text = body
			Body.TextColor3 = Color3.fromRGB(255, 255, 255)
			Body.TextSize = 11.000
			Body.TextTransparency = 0.500
			Body.TextXAlignment = Enum.TextXAlignment.Left
			Body.TextYAlignment = Enum.TextYAlignment.Top
			
			local scale = TextService:GetTextSize(Body.Text,Body.TextSize,Body.Font,Vector2.new(math.huge,math.huge));
			
			TweenService:Create(Notify,TweenInfo.new(0.1),{
				Size = UDim2.new(0, math.clamp(scale.X + 25 , 10 , 10000), 0, scale.Y + 25)
			}):Play()
			
		
			task.delay(duration or 5,Notify.Destroy,Notify)
		end,
	}
end;

return NeverZen;
