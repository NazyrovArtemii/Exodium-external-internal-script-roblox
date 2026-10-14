-- EXODIUM HUB | Version Selector
local P,R,T,U,W,L=game:GetService("Players"),game:GetService("RunService"),game:GetService("TweenService"),game:GetService("UserInputService"),game:GetService("Workspace"),game:GetService("Lighting")
local LP=P.LocalPlayer
local pg=LP:WaitForChild("PlayerGui")
if pg:FindFirstChild("ExodiumSelect")then pg.ExodiumSelect:Destroy()end
if pg:FindFirstChild("ExodiumHub")then pg.ExodiumHub:Destroy()end
local function pc(f)pcall(f)end
local FLY_URL="https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"
local AIM_SPEED=100
local SHOT_DELAY=0.5
local vsg=Instance.new("ScreenGui",pg)
vsg.Name="ExodiumSelect"vsg.ResetOnSpawn=false vsg.IgnoreGuiInset=true vsg.DisplayOrder=1000
local VM=Instance.new("Frame",vsg)
VM.Size=UDim2.new(0,260,0,180)
VM.Position=UDim2.new(0.5,-130,0.5,-90)
VM.BackgroundColor3=Color3.fromRGB(12,10,20)
VM.BorderSizePixel=0
VM.Active=true
Instance.new("UICorner",VM).CornerRadius=UDim.new(0,14)
local VMS=Instance.new("UIStroke",VM)
VMS.Color=Color3.fromRGB(160,80,255)
VMS.Thickness=2
VMS.Transparency=0.1
local VTop=Instance.new("Frame",VM)
VTop.Size=UDim2.new(1,0,0,3)
VTop.BackgroundColor3=Color3.fromRGB(160,80,255)
VTop.BorderSizePixel=0
local VE=Instance.new("TextLabel",VM)
VE.Size=UDim2.new(0,32,0,36)
VE.Position=UDim2.new(0,14,0,0)
VE.BackgroundTransparency=1
VE.Text="E"
VE.TextColor3=Color3.fromRGB(200,120,255)
VE.Font=Enum.Font.GothamBlack
VE.TextSize=24
VE.TextXAlignment=Enum.TextXAlignment.Left
local VName=Instance.new("TextLabel",VM)
VName.Size=UDim2.new(0,160,0,36)
VName.Position=UDim2.new(0,40,0,0)
VName.BackgroundTransparency=1
VName.Text="XODIUM HUB"
VName.TextColor3=Color3.fromRGB(220,180,255)
VName.Font=Enum.Font.GothamBlack
VName.TextSize=13
VName.TextXAlignment=Enum.TextXAlignment.Left
local VHint=Instance.new("TextLabel",VM)
VHint.Size=UDim2.new(1,-30,0,20)
VHint.Position=UDim2.new(0,15,0,42)
VHint.BackgroundTransparency=1
VHint.Text="Выберите версию:"
VHint.TextColor3=Color3.fromRGB(160,140,200)
VHint.Font=Enum.Font.Gotham
VHint.TextSize=11
VHint.TextXAlignment=Enum.TextXAlignment.Left
local VExtBtn=Instance.new("TextButton",VM)
VExtBtn.Size=UDim2.new(1,-30,0,42)
VExtBtn.Position=UDim2.new(0,15,0,70)
VExtBtn.BackgroundColor3=Color3.fromRGB(20,25,40)
VExtBtn.TextColor3=Color3.fromRGB(0,200,255)
VExtBtn.Font=Enum.Font.GothamBold
VExtBtn.TextSize=12
VExtBtn.Text="EXTERNAL"
VExtBtn.BorderSizePixel=0
VExtBtn.AutoButtonColor=false
Instance.new("UICorner",VExtBtn).CornerRadius=UDim.new(0,8)
local VExtS=Instance.new("UIStroke",VExtBtn)
VExtS.Color=Color3.fromRGB(0,200,255)
VExtS.Thickness=1.5
local VIntBtn=Instance.new("TextButton",VM)
VIntBtn.Size=UDim2.new(1,-30,0,42)
VIntBtn.Position=UDim2.new(0,15,0,120)
VIntBtn.BackgroundColor3=Color3.fromRGB(25,18,40)
VIntBtn.TextColor3=Color3.fromRGB(255,0,200)
VIntBtn.Font=Enum.Font.GothamBold
VIntBtn.TextSize=12
VIntBtn.Text="INTERNAL"
VIntBtn.BorderSizePixel=0
VIntBtn.AutoButtonColor=false
Instance.new("UICorner",VIntBtn).CornerRadius=UDim.new(0,8)
local VIntS=Instance.new("UIStroke",VIntBtn)
VIntS.Color=Color3.fromRGB(255,0,200)
VIntS.Thickness=1.5-- ========== КЛИКИ ВЫБОРА ==========
VExtBtn.MouseEnter:Connect(function()T:Create(VExtBtn,TweenInfo.new(0.15),{BackgroundColor3=Color3.fromRGB(35,45,70)}):Play()end)
VExtBtn.MouseLeave:Connect(function()T:Create(VExtBtn,TweenInfo.new(0.15),{BackgroundColor3=Color3.fromRGB(20,25,40)}):Play()end)
VIntBtn.MouseEnter:Connect(function()T:Create(VIntBtn,TweenInfo.new(0.15),{BackgroundColor3=Color3.fromRGB(50,25,80)}):Play()end)
VIntBtn.MouseLeave:Connect(function()T:Create(VIntBtn,TweenInfo.new(0.15),{BackgroundColor3=Color3.fromRGB(25,18,40)}):Play()end)

-- ========== BUILD MENU ==========
local function buildMenu(mode)
	vsg:Destroy()
	local isInt=(mode=="internal")
	local mainColor=isInt and Color3.fromRGB(255,0,200) or Color3.fromRGB(0,200,255)
	local titleText=isInt and "XODIUM INT" or "XODIUM EXT"
	local verText=isInt and "INTERNAL" or "EXTERNAL"
	
	local sg=Instance.new("ScreenGui",pg)
	sg.Name="ExodiumHub"sg.ResetOnSpawn=false sg.IgnoreGuiInset=true sg.DisplayOrder=100
	
	local M=Instance.new("Frame",sg)
	M.Size=UDim2.new(0,270,0,340)M.Position=UDim2.new(0,15,1,-355)
	M.BackgroundColor3=Color3.fromRGB(12,10,20)M.BorderSizePixel=0 M.Active=true M.ClipsDescendants=true
	Instance.new("UICorner",M).CornerRadius=UDim.new(0,14)
	local ms=Instance.new("UIStroke",M)ms.Color=mainColor ms.Thickness=2 ms.Transparency=0.1
	local Top=Instance.new("Frame",M)Top.Size=UDim2.new(1,0,0,3)Top.BackgroundColor3=mainColor Top.BorderSizePixel=0
	local TG=Instance.new("UIGradient",Top)TG.Color=ColorSequence.new(mainColor,Color3.fromRGB(160,80,255),mainColor)
	local E=Instance.new("TextLabel",M)E.Size=UDim2.new(0,32,0,36)E.Position=UDim2.new(0,14,0,0)E.BackgroundTransparency=1 E.Text="E"E.TextColor3=mainColor E.Font=Enum.Font.GothamBlack E.TextSize=24 E.TextXAlignment=Enum.TextXAlignment.Left
	local Name=Instance.new("TextLabel",M)Name.Size=UDim2.new(0,140,0,36)Name.Position=UDim2.new(0,40,0,0)Name.BackgroundTransparency=1 Name.Text=titleText Name.TextColor3=Color3.fromRGB(220,180,255)Name.Font=Enum.Font.GothamBlack Name.TextSize=12 Name.TextXAlignment=Enum.TextXAlignment.Left
	local Ver=Instance.new("TextLabel",M)Ver.Size=UDim2.new(0,80,0,11)Ver.Position=UDim2.new(0,40,0,24)Ver.BackgroundTransparency=1 Ver.Text=verText Ver.TextColor3=mainColor Ver.Font=Enum.Font.GothamBold Ver.TextSize=7 Ver.TextXAlignment=Enum.TextXAlignment.Left
	local dragBtn=Instance.new("TextButton",M)dragBtn.Size=UDim2.new(1,-80,0,36)dragBtn.Position=UDim2.new(0,0,0,0)dragBtn.BackgroundTransparency=1 dragBtn.Text=""
	local Mb=Instance.new("TextButton",M)Mb.Size=UDim2.new(0,22,0,22)Mb.Position=UDim2.new(1,-54,0,7)Mb.BackgroundColor3=Color3.fromRGB(25,20,35)Mb.Text="−"Mb.TextColor3=Color3.fromRGB(200,160,255)Mb.Font=Enum.Font.GothamBold Mb.TextSize=14 Mb.BorderSizePixel=0 Mb.AutoButtonColor=false Mb.ZIndex=5
	Instance.new("UICorner",Mb).CornerRadius=UDim.new(0,6)
	local Xb=Instance.new("TextButton",M)Xb.Size=UDim2.new(0,22,0,22)Xb.Position=UDim2.new(1,-28,0,7)Xb.BackgroundColor3=Color3.fromRGB(50,20,30)Xb.Text="✕"Xb.TextColor3=Color3.fromRGB(255,120,140)Xb.Font=Enum.Font.GothamBold Xb.TextSize=12 Xb.BorderSizePixel=0 Xb.AutoButtonColor=false Xb.ZIndex=5
	Instance.new("UICorner",Xb).CornerRadius=UDim.new(0,6)
	local Dv=Instance.new("Frame",M)Dv.Size=UDim2.new(1,-20,0,1)Dv.Position=UDim2.new(0,10,0,40)Dv.BackgroundColor3=Color3.fromRGB(60,40,90)Dv.BorderSizePixel=0
	local TabScroll=Instance.new("ScrollingFrame",M)TabScroll.Size=UDim2.new(1,-20,0,30)TabScroll.Position=UDim2.new(0,10,0,44)TabScroll.BackgroundTransparency=1 TabScroll.BorderSizePixel=0 TabScroll.ScrollBarThickness=0 TabScroll.CanvasSize=UDim2.new(0,0,0,0)TabScroll.AutomaticCanvasSize=Enum.AutomaticSize.X TabScroll.ScrollingDirection=Enum.ScrollingDirection.X TabScroll.ElasticBehavior=Enum.ElasticBehavior.Never
	local TabLL=Instance.new("UIListLayout",TabScroll)TabLL.FillDirection=Enum.FillDirection.Horizontal TabLL.Padding=UDim.new(0,3)TabLL.SortOrder=Enum.SortOrder.LayoutOrder
	local ContentHolder=Instance.new("Frame",M)ContentHolder.Size=UDim2.new(1,-20,1,-82)ContentHolder.Position=UDim2.new(0,10,0,78)ContentHolder.BackgroundTransparency=1 ContentHolder.ClipsDescendants=true
	
	local dr=false
	local ds,sp
	dragBtn.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dr=true ds=i.Position sp=M.Position end end)
	U.InputChanged:Connect(function(i)if dr and(i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch)then local d=i.Position-ds M.Position=UDim2.new(sp.X.Scale,sp.X.Offset+d.X,sp.Y.Scale,sp.Y.Offset+d.Y)end end)
	U.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dr=false end end)
	
	local mn=false
	Mb.MouseButton1Click:Connect(function()
		mn=not mn
		if mn then
			T:Create(M,TweenInfo.new(0.25),{Size=UDim2.new(0,270,0,40)}):Play()
			Mb.Text="+"TabScroll.Visible=false ContentHolder.Visible=false Dv.Visible=false
		else
			T:Create(M,TweenInfo.new(0.25),{Size=UDim2.new(0,270,0,340)}):Play()
			Mb.Text="−"task.wait(0.15)
			TabScroll.Visible=true ContentHolder.Visible=true Dv.Visible=true
		end
	end)
	Xb.MouseButton1Click:Connect(function()sg:Destroy()end)-- ========== ВКЛАДКИ ==========
local tabContents={}
local tabBtns={}
local function makeTab(name,ord)
	local btn=Instance.new("TextButton",TabScroll)
	btn.Size=UDim2.new(0,60,0,26)btn.BackgroundColor3=Color3.fromRGB(22,18,32)btn.TextColor3=Color3.fromRGB(150,130,180)
	btn.Font=Enum.Font.GothamBold btn.TextSize=8 btn.Text=name btn.BorderSizePixel=0 btn.AutoButtonColor=false btn.LayoutOrder=ord
	Instance.new("UICorner",btn).CornerRadius=UDim.new(0,6)
	local st=Instance.new("UIStroke",btn)st.Color=Color3.fromRGB(60,45,85)st.Thickness=1 st.Transparency=0.5
	local content=Instance.new("ScrollingFrame",ContentHolder)
	content.Size=UDim2.new(1,0,1,0)content.Position=UDim2.new(0,0,0,0)
	content.BackgroundTransparency=1 content.BorderSizePixel=0
	content.ScrollBarThickness=2 content.ScrollBarImageColor3=mainColor
	content.CanvasSize=UDim2.new(0,0,0,0)content.AutomaticCanvasSize=Enum.AutomaticSize.Y content.Visible=false
	Instance.new("UIPadding",content).PaddingBottom=UDim.new(0,50)
	local ll=Instance.new("UIListLayout",content)ll.Padding=UDim.new(0,4)ll.SortOrder=Enum.SortOrder.LayoutOrder
	table.insert(tabBtns,btn)
	table.insert(tabContents,content)
	btn.MouseButton1Click:Connect(function()
		for i=1,#tabContents do
			tabContents[i].Visible=(i==ord)
			if i==ord then
				tabBtns[i].BackgroundColor3=Color3.fromRGB(50,25,80)
				tabBtns[i].TextColor3=mainColor
			else
				tabBtns[i].BackgroundColor3=Color3.fromRGB(22,18,32)
				tabBtns[i].TextColor3=Color3.fromRGB(150,130,180)
			end
		end
	end)
	return content
end

local function mkToggle(txt,ord,on,off,parent)
	local b=Instance.new("TextButton",parent)
	b.Size=UDim2.new(1,0,0,26)b.BackgroundColor3=Color3.fromRGB(22,18,32)b.TextColor3=Color3.fromRGB(210,200,230)
	b.Font=Enum.Font.Gotham b.TextSize=10 b.Text="○ "..txt b.BorderSizePixel=0 b.AutoButtonColor=false b.LayoutOrder=ord
	Instance.new("UICorner",b).CornerRadius=UDim.new(0,7)
	local st=Instance.new("UIStroke",b)st.Color=Color3.fromRGB(60,45,85)st.Thickness=1 st.Transparency=0.5
	local s=false
	local function up()
		if s then
			b.BackgroundColor3=Color3.fromRGB(50,25,80)b.TextColor3=mainColor
			st.Color=mainColor st.Transparency=0 b.Text="● "..txt
		else
			b.BackgroundColor3=Color3.fromRGB(22,18,32)b.TextColor3=Color3.fromRGB(210,200,230)
			st.Color=Color3.fromRGB(60,45,85)st.Transparency=0.5 b.Text="○ "..txt
		end
	end
	b.MouseButton1Click:Connect(function()s=not s if s then pc(on)else pc(off)end up()end)
end

local function mkBtn(txt,ord,act,parent)
	local b=Instance.new("TextButton",parent)
	b.Size=UDim2.new(1,0,0,26)b.BackgroundColor3=Color3.fromRGB(22,18,32)b.TextColor3=Color3.fromRGB(210,200,230)
	b.Font=Enum.Font.Gotham b.TextSize=10 b.Text="◈ "..txt b.BorderSizePixel=0 b.AutoButtonColor=false b.LayoutOrder=ord
	Instance.new("UICorner",b).CornerRadius=UDim.new(0,7)
	local st=Instance.new("UIStroke",b)st.Color=Color3.fromRGB(60,45,85)st.Thickness=1 st.Transparency=0.5
	b.MouseButton1Click:Connect(function()pc(act)end)
end

local function mkSec(txt,ord,c,parent)
	local l=Instance.new("TextLabel",parent)
	l.Size=UDim2.new(1,0,0,16)l.BackgroundTransparency=1 l.Text="▬ "..txt
	l.TextColor3=c l.Font=Enum.Font.GothamBold l.TextSize=9 l.TextXAlignment=Enum.TextXAlignment.Left l.LayoutOrder=ord
end

-- Объявляем переменные для INTERNAL
local asA,asC=false,nil
local gmC,kaC,faC=nil,nil,nil
local fbBV,fbBG=nil,nil
local fbActive=false-- ========== MM2 ФУНКЦИИ ==========
local function getMM2Role(pl)
	if pl.Backpack:FindFirstChild("Knife") or (pl.Character and pl.Character:FindFirstChild("Knife")) then return "Murderer" end
	if pl.Backpack:FindFirstChild("Gun") or (pl.Character and pl.Character:FindFirstChild("Gun")) then return "Sheriff" end
	return "Innocent"
end
local function getMurderer()
	for _,pl in ipairs(P:GetPlayers())do
		if pl~=LP and getMM2Role(pl)=="Murderer" then return pl end
	end
	return nil
end
local function getSheriff()
	for _,pl in ipairs(P:GetPlayers())do
		if pl~=LP and getMM2Role(pl)=="Sheriff" then return pl end
	end
	return nil
end
local mm2A=false
local mm2C={}
local mm2D={}
local function applyESP(pl)
	if pl==LP then return end
	local function apply(char)
		if not mm2A or not char then return end
		local hl=char:FindFirstChild("ExodiumESP")
		if not hl then
			hl=Instance.new("Highlight",char)
			hl.Name="ExodiumESP"
			hl.OutlineTransparency=1
			hl.FillTransparency=0.5
			hl.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop
		end
		local role=getMM2Role(pl)
		if role=="Murderer" then hl.FillColor=Color3.fromRGB(255,0,0)
		elseif role=="Sheriff" then hl.FillColor=Color3.fromRGB(0,0,255)
		else hl.FillColor=Color3.fromRGB(0,255,0) end
		mm2D[pl]=hl
	end
	if pl.Character then apply(pl.Character)end
	table.insert(mm2C,pl.CharacterAdded:Connect(function(c)task.wait(0.5)if mm2A then apply(c)end end))
end
local function sMM2()
	if mm2A then return end
	mm2A=true
	for _,pl in ipairs(P:GetPlayers())do applyESP(pl)end
	table.insert(mm2C,P.PlayerAdded:Connect(applyESP))
	table.insert(mm2C,R.Heartbeat:Connect(function()
		if not mm2A then return end
		for pl,hl in pairs(mm2D)do
			if hl and hl.Parent and pl.Character then
				local role=getMM2Role(pl)
				if role=="Murderer" then hl.FillColor=Color3.fromRGB(255,0,0)
				elseif role=="Sheriff" then hl.FillColor=Color3.fromRGB(0,0,255)
				else hl.FillColor=Color3.fromRGB(0,255,0) end
			end
		end
	end))
end
local function eMM2()
	mm2A=false
	for _,hl in pairs(mm2D)do if hl and hl.Parent then hl:Destroy()end end
	mm2D={}
	for _,cn in ipairs(mm2C)do cn:Disconnect()end
	mm2C={}
end
local aaA=false
local aaC
local function sAA()
	if aaA then return end
	aaA=true
	aaC=R.Heartbeat:Connect(function()
		local r=LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
		if r then r.CFrame=r.CFrame*CFrame.Angles(0,math.rad(AIM_SPEED),0)end
	end)
end
local function eAA()aaA=false if aaC then aaC:Disconnect()aaC=nil end end
local abA=false
local abC
local function sAB()
	if abA then return end
	abA=true
	abC=R.RenderStepped:Connect(function()
		local cam=W.CurrentCamera
		if not cam then return end
		local murderer=getMurderer()
		if not murderer or not murderer.Character then return end
		local head=murderer.Character:FindFirstChild("Head")
		local myChar=LP.Character
		local myHead=myChar and myChar:FindFirstChild("Head")
		if not head or not myHead then return end
		local params=RaycastParams.new()
		params.FilterType=Enum.RaycastFilterType.Exclude
		params.FilterDescendantsInstances={myChar,murderer.Character}
		local res=W:Raycast(myHead.Position,head.Position-myHead.Position,params)
		if res then return end
		cam.CFrame=CFrame.new(cam.CFrame.Position,head.Position)
	end)
end
local function eAB()abA=false if abC then abC:Disconnect()abC=nil end end
local atpA=false
local atpC
local function sATP()
	if atpA then return end
	atpA=true
	atpC=R.Heartbeat:Connect(function()
		local char=LP.Character
		local root=char and char:FindFirstChild("HumanoidRootPart")
		if not root then return end
		for _,obj in ipairs(W:GetDescendants())do
			if obj:IsA("Tool")then
				local n=obj.Name:lower()
				if n=="gun" or n=="revolver" or n=="pistol" then
					local handle=obj:FindFirstChild("Handle")
					if handle and handle.Parent then
						local parent=obj.Parent
						if parent and not parent:IsA("Backpack") and not parent:FindFirstChildOfClass("Humanoid") then
							root.CFrame=CFrame.new(handle.Position+Vector3.new(0,3,0))
							break
						end
					end
				end
			end
		end
	end)
end
local function eATP()atpA=false if atpC then atpC:Disconnect()atpC=nil end end
local atmA=false
local atmC
local function sATM()
	if atmA then return end
	atmA=true
	atmC=R.Heartbeat:Connect(function()
		local murderer=getMurderer()
		local mr=murderer and murderer.Character and murderer.Character:FindFirstChild("HumanoidRootPart")
		local myRoot=LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
		if mr and myRoot then myRoot.CFrame=CFrame.new(mr.Position+Vector3.new(0,0,3))end
	end)
end
local function eATM()atmA=false if atmC then atmC:Disconnect()atmC=nil end endlocal shotA=false
local shotGui=nil
local lastShot=0
local function makeShot()
	if shotGui then shotGui:Destroy()end
	shotGui=Instance.new("ScreenGui",pg)
	shotGui.Name="ExodiumShot"shotGui.ResetOnSpawn=false shotGui.IgnoreGuiInset=true shotGui.DisplayOrder=200
	local btn=Instance.new("TextButton",shotGui)
	btn.Size=UDim2.new(0,60,0,60)btn.Position=UDim2.new(0.85,0,0.7,0)
	btn.BackgroundColor3=Color3.fromRGB(20,15,30)btn.BorderSizePixel=0 btn.Text=""btn.AutoButtonColor=false
	Instance.new("UICorner",btn).CornerRadius=UDim.new(0,10)
	local stk=Instance.new("UIStroke",btn)stk.Color=mainColor stk.Thickness=2 stk.Transparency=0.2
	local ic=Instance.new("TextLabel",btn)ic.Size=UDim2.new(1,0,1,0)ic.BackgroundTransparency=1 ic.Text="🔫"ic.TextScaled=true ic.Font=Enum.Font.GothamBold
	local dg=false
	local ds2,sp2
	btn.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dg=true ds2=i.Position sp2=btn.Position end end)
	U.InputChanged:Connect(function(i)if dg and(i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch)then local d=i.Position-ds2 if math.abs(d.X)>5 or math.abs(d.Y)>5 then btn.Position=UDim2.new(sp2.X.Scale,sp2.X.Offset+d.X,sp2.Y.Scale,sp2.Y.Offset+d.Y)end end end)
	U.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then dg=false end end)
	btn.MouseButton1Click:Connect(function()
		if not shotA then return end
		local now=tick()
		if now-lastShot<SHOT_DELAY then return end
		lastShot=now
		T:Create(btn,TweenInfo.new(0.1),{BackgroundColor3=mainColor}):Play()
		task.wait(0.15)
		T:Create(btn,TweenInfo.new(0.15),{BackgroundColor3=Color3.fromRGB(20,15,30)}):Play()
		local myChar=LP.Character
		if not myChar then return end
		local gun=myChar:FindFirstChild("Gun")
		if not gun then local bp=LP:FindFirstChild("Backpack")if bp then gun=bp:FindFirstChild("Gun")end end
		if gun then pc(function()gun:Activate()end)end
	end)
end
local function sShot()if shotA then return end shotA=true makeShot()end
local function eShot()shotA=false if shotGui then shotGui:Destroy()shotGui=nil end end

local bhA=false
local bhC
local function sBH()
	if bhA then return end
	bhA=true
	bhC=R.Heartbeat:Connect(function()
		local h=LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
		if h and h.FloorMaterial~=Enum.Material.Air then h:ChangeState(Enum.HumanoidStateType.Jumping)end
	end)
end
local function eBH()bhA=false if bhC then bhC:Disconnect()bhC=nil end end
local spdA=false
local function sSpd()
	if spdA then return end spdA=true
	local h=LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
	if h then h.WalkSpeed=60 end
end
local function eSpd()
	spdA=false
	local h=LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
	if h then h.WalkSpeed=16 end
end
local jmpA=false
local function sJmp()
	if jmpA then return end jmpA=true
	local h=LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
	if h then h.UseJumpPower=true h.JumpPower=120 end
end
local function eJmp()
	jmpA=false
	local h=LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
	if h then h.JumpPower=50 end
end
local ncA=false
local ncC
local function sNc()
	if ncA then return end ncA=true
	ncC=R.Stepped:Connect(function()
		local c=LP.Character
		if c then for _,o in ipairs(c:GetDescendants())do if o:IsA("BasePart")then o.CanCollide=false end end end
	end)
end
local function eNc()ncA=false if ncC then ncC:Disconnect()ncC=nil end end
local function sFl()
	pc(function()loadstring(game:HttpGet(FLY_URL))()end)
end
local ijA=false
local ijC
local function sIJ()
	if ijA then return end ijA=true
	ijC=U.JumpRequest:Connect(function()
		local h=LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
		if h then h:ChangeState(Enum.HumanoidStateType.Jumping)end
	end)
end
local function eIJ()ijA=false if ijC then ijC:Disconnect()ijC=nil end endlocal glowA=false
local glowH
local function sGlow()
	if glowA then return end glowA=true
	local c=LP.Character
	if not c then return end
	glowH=Instance.new("Highlight",c)
	glowH.FillColor=mainColor
	glowH.OutlineTransparency=1
	glowH.FillTransparency=0.7
	glowH.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop
end
local function eGlow()glowA=false if glowH then glowH:Destroy()glowH=nil end end
local fbA=false
local function sFb()
	if fbA then return end fbA=true
	pc(function()L.GlobalShadows=false L.FogEnd=1e6 L.FogStart=1e6 end)
end
local function eFb()fbA=false pc(function()L.GlobalShadows=true L.FogEnd=500 end)end
local nsA=false
local nsC
local function sNs()
	if nsA then return end nsA=true
	nsC=R.Stepped:Connect(function()
		local c=LP.Character
		if c then for _,o in ipairs(c:GetDescendants())do if o:IsA("BasePart")then o.Transparency=1 end end end
	end)
end
local function eNs()
	nsA=false
	if nsC then nsC:Disconnect()nsC=nil end
	local c=LP.Character
	if c then for _,o in ipairs(c:GetDescendants())do if o:IsA("BasePart")then o.Transparency=0 end end end
end
local shA=false
local shD={}
local function sSh()
	if shA then return end shA=true
	pc(function()L.GlobalShadows=false end)
	for _,o in ipairs(W:GetDescendants())do if o:IsA("BasePart")and o.CastShadow then shD[o]=true o.CastShadow=false end end
end
local function eSh()
	shA=false
	pc(function()L.GlobalShadows=true end)
	for o in pairs(shD)do if o.Parent then o.CastShadow=true end end
	shD={}
end
local paA=false
local paD={}
local function sPa()
	if paA then return end paA=true
	for _,o in ipairs(W:GetDescendants())do
		if o:IsA("ParticleEmitter")then paD[o]={r=o.Rate}o.Rate=0
		elseif o:IsA("Trail")or o:IsA("Beam")then paD[o]={e=o.Enabled}o.Enabled=false end
	end
end
local function ePa()
	paA=false
	for o,d in pairs(paD)do
		if o.Parent then
			if d.r then o.Rate=d.r end
			if d.e~=nil then o.Enabled=d.e end
		end
	end
	paD={}
end
local function sTp()
	local c=LP.Character
	local r=c and c:FindFirstChild("HumanoidRootPart")
	if r then r.CFrame=r.CFrame+Vector3.new(0,50,0)end
end

R.RenderStepped:Connect(function()
	if not fbActive then return end
	local cm=W.CurrentCamera
	if not cm or not fbBV or not fbBG then return end
	local d=Vector3.zero
	if U:IsKeyDown(Enum.KeyCode.W)then d=d+cm.CFrame.LookVector end
	if U:IsKeyDown(Enum.KeyCode.S)then d=d-cm.CFrame.LookVector end
	if U:IsKeyDown(Enum.KeyCode.A)then d=d-cm.CFrame.RightVector end
	if U:IsKeyDown(Enum.KeyCode.D)then d=d+cm.CFrame.RightVector end
	if U:IsKeyDown(Enum.KeyCode.Space)then d=d+Vector3.new(0,1,0)end
	if U:IsKeyDown(Enum.KeyCode.LeftControl)then d=d-Vector3.new(0,1,0)end
	fbBV.Velocity=d.Magnitude>0 and d.Unit*150 or Vector3.zero
	fbBG.CFrame=cm.CFrame
end)	-- ========== ВКЛАДКИ ==========
	local T1=makeTab("MM2",1)
	mkSec("MM2",0,mainColor,T1)
	mkToggle("MM2 ESP (роли)",1,sMM2,eMM2,T1)
	mkToggle("Anti-Aim 100",2,sAA,eAA,T1)
	mkToggle("AutoShot",3,sShot,eShot,T1)
	mkToggle("Aimbot на Murderer",4,sAB,eAB,T1)
	mkToggle("Auto TP к пистолету",5,sATP,eATP,T1)
	mkToggle("Auto TP к убийце",6,sATM,eATM,T1)
	
	local T2=makeTab("ДВИЖЕНИЕ",2)
	mkSec("ДВИЖЕНИЕ",0,mainColor,T2)
	mkToggle("Скорость x4",1,sSpd,eSpd,T2)
	mkToggle("Высокий прыжок",2,sJmp,eJmp,T2)
	mkToggle("Noclip",3,sNc,eNc,T2)
	mkBtn("Fly",4,sFl,T2)
	mkToggle("BunnyHop",5,sBH,eBH,T2)
	mkToggle("Беск. прыжок",6,sIJ,eIJ,T2)
	mkBtn("Телепорт вверх",7,sTp,T2)
	
	local T3=makeTab("ВИЗУАЛЫ",3)
	mkSec("ВИЗУАЛЫ",0,mainColor,T3)
	mkToggle("Свечение себя",1,sGlow,eGlow,T3)
	mkToggle("Fullbright",2,sFb,eFb,T3)
	mkToggle("Невидимость",3,sNs,eNs,T3)
	
	local T4=makeTab("ФПС",4)
	mkSec("ФПС",0,mainColor,T4)
	mkToggle("Тени OFF",1,sSh,eSh,T4)
	mkToggle("Частицы OFF",2,sPa,ePa,T4)
	
	local T5=makeTab("РАЗНОЕ",5)
	mkSec("РАЗНОЕ",0,mainColor,T5)
	mkBtn("Респавн",1,function()
		local c=LP.Character
		if c then
			local h=c:FindFirstChildOfClass("Humanoid")
			if h then h.Health=0 end
		end
	end,T5)
	mkBtn("Rejoin",2,function()
		pc(function()game:GetService("TeleportService"):Teleport(game.PlaceId)end)
	end,T5)
	mkBtn("Копировать позицию",3,function()
		local c=LP.Character
		local r=c and c:FindFirstChild("HumanoidRootPart")
		if r then
			pc(function()setclipboard(tostring(r.Position))end)
		end
	end,T5)
	
	if isInt then
		local T6=makeTab("COMBO",6)
		mkSec("COMBO",0,mainColor,T6)
		mkToggle("Aimbot на Sheriff",1,function()
			asA=true
			asC=R.RenderStepped:Connect(function()
				local cam=W.CurrentCamera
				if not cam then return end
				local sher=getSheriff()
				if not sher or not sher.Character then return end
				local head=sher.Character:FindFirstChild("Head")
				if not head then return end
				cam.CFrame=CFrame.new(cam.CFrame.Position,head.Position)
			end)
		end,function()
			asA=false
			if asC then asC:Disconnect()asC=nil end
		end,T6)
		mkToggle("Godmode",2,function()
			gmC=R.Heartbeat:Connect(function()
				local h=LP.Character and LP.Character:FindFirstChildOfClass("Humanoid")
				if h then h.MaxHealth=math.huge h.Health=math.huge end
			end)
		end,function()
			if gmC then gmC:Disconnect()gmC=nil end
		end,T6)
		
		local T7=makeTab("KILLAURA",7)
		mkSec("KILLAURA",0,mainColor,T7)
		mkToggle("Kill Aura",1,function()
			kaC=R.Heartbeat:Connect(function()
				local c=LP.Character
				local r=c and c:FindFirstChild("HumanoidRootPart")
				if not r then return end
				for _,o in ipairs(W:GetDescendants())do
					if o:IsA("Model")and o:FindFirstChildOfClass("Humanoid")and o~=c then
						local hrp=o:FindFirstChild("HumanoidRootPart")
						if hrp and (hrp.Position-r.Position).Magnitude<20 then
							local h=o:FindFirstChildOfClass("Humanoid")
							if h then h.Health=0 end
						end
					end
				end
			end)
		end,function()
			if kaC then kaC:Disconnect()kaC=nil end
		end,T7)
		mkToggle("Fling All",2,function()
			faC=R.Heartbeat:Connect(function()
				for _,pl in ipairs(P:GetPlayers())do
					if pl~=LP and pl.Character then
						local hrp=pl.Character:FindFirstChild("HumanoidRootPart")
						if hrp then hrp.Velocity=Vector3.new(500,500,500)end
					end
				end
			end)
		end,function()
			if faC then faC:Disconnect()faC=nil end
		end,T7)
		
		local T8=makeTab("FLY+",8)
		mkSec("FLY+",0,mainColor,T8)
		mkToggle("Fly встроенный",1,function()
			local r=LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
			if not r then return end
			fbBV=Instance.new("BodyVelocity",r)
			fbBV.MaxForce=Vector3.new(1e5,1e5,1e5)
			fbBV.Velocity=Vector3.zero
			fbBG=Instance.new("BodyGyro",r)
			fbBG.MaxTorque=Vector3.new(1e5,1e5,1e5)
			fbBG.P=1000
			fbBG.D=50
			fbActive=true
		end,function()
			fbActive=false
			if fbBV then fbBV:Destroy()fbBV=nil end
			if fbBG then fbBG:Destroy()fbBG=nil end
		end,T8)
	end
	
	-- Активация первой вкладки
	for i=1,#tabContents do
		tabContents[i].Visible=(i==1)
		if i==1 then
			tabBtns[i].BackgroundColor3=Color3.fromRGB(50,25,80)
			tabBtns[i].TextColor3=mainColor
		end
	end
end

-- ========== ЗАПУСК ==========
VExtBtn.MouseButton1Click:Connect(function()buildMenu("external")end)
VIntBtn.MouseButton1Click:Connect(function()buildMenu("internal")end)

print("✅ EXODIUM HUB загружено")
