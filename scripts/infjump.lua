local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v12,v13) local v14={};for v19=1, #v12 do v6(v14,v0(v4(v1(v2(v12,v19,v19 + 1 )),v1(v2(v13,1 + (v19% #v13) ,1 + (v19% #v13) + 1 )))%256 ));end return v5(v14);end local v8=game:GetService(v7("\226\215\218\55\242\190\213\57\196\202","\126\177\163\187\69\134\219\167"));local v9=game:GetService(v7("\22\222\47\215\213\45\221\63\209\207\38\223\60\204\255\38","\156\67\173\74\165"));local v10=game:GetService(v7("\4\187\72\15\185\52\85","\38\84\215\41\118\220\70"));local v11=v10.LocalPlayer;if _G.InfiniteJumpEnabled then local v20=0 -0 ;while true do local v21=427 -(166 + 261) ;while true do if (v21==0) then if (v20==(507 -(289 + 218))) then if _G.InfiniteJumpConnection then _G.InfiniteJumpConnection:Disconnect();end _G.InfiniteJumpEnabled=false;v20=1345 -(1213 + 131) ;end if (v20==(1 + 0)) then v8:SetCore(v7("\99\19\44\22\208\95\2\43\20\247\83\23\54\27\241\94","\158\48\118\66\114"),{[v7("\159\45\4\58\118","\155\203\68\112\86\19\197")]=v7("\124\196\46","\152\38\189\86\156\32\24\133"),[v7("\200\82\191\82","\38\156\55\199")]=v7("\129\115\122\33\29\125\238\70\232\87\105\37\3\52\222\74\187\124\126\36\22\112","\35\200\29\28\72\115\20\154"),[v7("\61\170\195\222\153\37\59\23","\84\121\223\177\191\237\76")]=2 + 1 });return;end break;end end end end _G.InfiniteJumpEnabled=true;_G.InfiniteJumpConnection=v9.InputBegan:Connect(function(v15,v16) local v17=0 -0 ;local v18;while true do if (v17==0) then v18=0 -0 ;while true do if (v18==(859 -(814 + 45))) then if v16 then return;end if (v15.KeyCode==Enum.KeyCode.Space) then local v22=0 -0 ;local v23;local v24;local v25;while true do if (v22==(1 + 0)) then v25=nil;while true do if (v23==0) then v24=v11.Character or v11.CharacterAdded:Wait() ;v25=v24:FindFirstChildOfClass(v7("\147\67\196\161\52\95\57\197","\161\219\54\169\192\90\48\80"));v23=1 + 0 ;end if (v23==(886 -(261 + 624))) then if v25 then v25:ChangeState(Enum.HumanoidStateType.Jumping);end break;end end break;end if (v22==(0 -0)) then v23=1080 -(1020 + 60) ;v24=nil;v22=1424 -(630 + 793) ;end end end break;end end break;end end end);v8:SetCore(v7("\122\71\14\33\103\77\20\44\79\75\3\36\93\75\15\43","\69\41\34\96"),{[v7("\136\202\195\6\7","\75\220\163\183\106\98")]=v7("\56\163\147","\185\98\218\235\87"),[v7("\255\57\63\242","\202\171\92\71\134\190")]=v7("\0\207\42\129\39\200\56\141\105\235\57\133\57\129\9\134\40\195\32\141\45","\232\73\161\76"),[v7("\159\204\80\92\10\178\214\76","\126\219\185\34\61")]=9 -6 });
