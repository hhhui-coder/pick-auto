;整行整行涂鸦
;行数i：0- 63
;列j也是0-63
 
;开始前操作唤醒取色栏目
;复制取色代码跑一下，防止识别失败（玄学）
;以下是应对移动画布失败的双重调色喷涂打法

F10::
sum:=0
i:=0
loop{
  i:=i+1
  j:=0
   loop{
      j:=j+1

                                   {
WinActivate, Autodesk SketchBook  ;切换到背后的sketchbook
Click,  400, 0, 1 ,Rel   ；切换到图像面
Send,{LALT Down}
sleep, 30
MouseClick, Left, 500+10*j,300+10*i, 1  ;递推取色
sleep, 30
Send,{LALT Up}


;h


WinActivate, Autodesk SketchBook
MouseClick, Left, 225, 395, 1
MouseClick, Left, 230, 420, 1
Sleep, 14 ;UNRS
Send,^c            ;复制色h
;打开计算器
WinActivate, 计算器
MouseClick, Left, 377, 389, 1  ;C
Send, ^v
Sleep, 17 ;UNRS
Send,{NumpadMult}{Numpad1}{Numpad2}{Numpad8}{NumpadDiv}{Numpad3}{Numpad6}{Numpad0}{Enter}
MouseClickDrag, Left,505, 128, 254, 134
Send,^c
sleep,30
WinActivate, AnLink 安联
MouseClick, Left, 372, 389, 2 ;进入颜色
sleep,30
MouseClickDrag, Left,340, 466, 101, 468
sleep,30
MouseClickDrag, Left,339, 514, 132, 518
sleep,30
MouseClickDrag, Left,341, 559, 172, 562 ;hsl清零
sleep,30
MouseClick, Left, 247, 464, 1  ;h零点
sleep,30
MouseClickDrag, Left, 0, 0, %clipboard%, 0, 100, R ;h调色完成
sleep,30



;s

WinActivate, Autodesk SketchBook
MouseClick, Left, 228, 466, 1
Sleep, 15 ;UNRS
MouseClick, Left, 228, 484, 1
Sleep, 12 ;UNRS

MouseClick, Left, 1781, 196, 1
WinWait, Autodesk SketchBook
WinActivate, Autodesk Sketch
Sleep, 13 ;UNRS
Send,^c            ;复制色s
;打开计算器
WinActivate, 计算器
MouseClick, Left, 377, 389, 1  ;C
Send, ^v
Sleep, 15 ;UNRS
Send,{NumpadMult}{Numpad1}{Numpad2}{Numpad8}{NumpadDiv}{Numpad1}{Numpad0}{Numpad0}{Enter}
MouseClickDrag, Left,505, 128, 254, 134
Send,^c
Sleep, 10 ;SS
WinActivate, AnLink 安联
Sleep, 10
MouseClick, Left, 248, 507, 1  ;s零点
Sleep, 10
MouseClickDrag, Left, 0, 0, %clipboard%, 0, 50, R ;s调色完成
Sleep, 10



;l


WinActivate, Autodesk SketchBook
MouseClick, Left, 227, 532, 1
Sleep, 17 ;UNRS
MouseClick, Left, 229, 549, 1
Sleep, 10 ;UNRS
Send,^c            ;复制色l
;打开计算器
WinActivate, 计算器
MouseClick, Left, 377, 389, 1  ;C
Send, ^v
Sleep, 15 ;UNRS
Send,{NumpadMult}{Numpad1}{Numpad2}{Numpad8}{NumpadDiv}{Numpad1}{Numpad0}{Numpad0}{Enter}
MouseClickDrag, Left,505, 128, 254, 134
Send,^c
Sleep, 10 ;SS
WinActivate, AnLink 安联
Sleep, 10
MouseClick, Left, 248, 558, 1 ;l零点
Sleep, 10
MouseClickDrag, Left, 0, 0, %clipboard%, 0, 50, R ;l调色完成
Sleep, 10

MouseClick, Left, 385, 696, 1 ;颜色完成避免放大镜
Sleep, 30
MouseClick, Left, 270, 447, 1 ;换色撤回
Sleep, 30
    MouseClick, Left, 234, 653, 2 ;喷
Sleep,50    
Click, 350, 616,  D
Sleep, 100 
Click, 350, 616,  U ;------------以下是双重打法-------------

;h


WinActivate, Autodesk SketchBook
MouseClick, Left, 225, 395, 1
MouseClick, Left, 230, 420, 1
Sleep, 14 ;UNRS
Send,^c            ;复制色h
;打开计算器
WinActivate, 计算器
MouseClick, Left, 377, 389, 1  ;C
Send, ^v
Sleep, 17 ;UNRS
Send,{NumpadMult}{Numpad1}{Numpad2}{Numpad8}{NumpadDiv}{Numpad3}{Numpad6}{Numpad0}{Enter}
MouseClickDrag, Left,505, 128, 254, 134
Send,^c
sleep,30
WinActivate, AnLink 安联
MouseClick, Left, 372, 389, 2 ;进入颜色
sleep,30
MouseClickDrag, Left,340, 466, 101, 468
sleep,30
MouseClickDrag, Left,339, 514, 132, 518
sleep,30
MouseClickDrag, Left,341, 559, 172, 562 ;hsl清零
sleep,30
MouseClick, Left, 247, 464, 1  ;h零点
sleep,30
MouseClickDrag, Left, 0, 0, %clipboard%, 0, 100, R ;h调色完成
sleep,30



;s

WinActivate, Autodesk SketchBook
MouseClick, Left, 228, 466, 1
Sleep, 15 ;UNRS
MouseClick, Left, 228, 484, 1
Sleep, 12 ;UNRS

MouseClick, Left, 1781, 196, 1
WinWait, Autodesk SketchBook
WinActivate, Autodesk Sketch
Sleep, 13 ;UNRS
Send,^c            ;复制色s
;打开计算器
WinActivate, 计算器
MouseClick, Left, 377, 389, 1  ;C
Send, ^v
Sleep, 15 ;UNRS
Send,{NumpadMult}{Numpad1}{Numpad2}{Numpad8}{NumpadDiv}{Numpad1}{Numpad0}{Numpad0}{Enter}
MouseClickDrag, Left,505, 128, 254, 134
Send,^c
Sleep, 10 ;SS
WinActivate, AnLink 安联
Sleep, 10
MouseClick, Left, 248, 507, 1  ;s零点
Sleep, 10
MouseClickDrag, Left, 0, 0, %clipboard%, 0, 50, R ;s调色完成
Sleep, 10



;l


WinActivate, Autodesk SketchBook
MouseClick, Left, 227, 532, 1
Sleep, 17 ;UNRS
MouseClick, Left, 229, 549, 1
Sleep, 10 ;UNRS
Send,^c            ;复制色l
;打开计算器
WinActivate, 计算器
MouseClick, Left, 377, 389, 1  ;C
Send, ^v
Sleep, 15 ;UNRS
Send,{NumpadMult}{Numpad1}{Numpad2}{Numpad8}{NumpadDiv}{Numpad1}{Numpad0}{Numpad0}{Enter}
MouseClickDrag, Left,505, 128, 254, 134
Send,^c
Sleep, 10 ;SS
WinActivate, AnLink 安联
Sleep, 10
MouseClick, Left, 248, 558, 1 ;l零点
Sleep, 10
MouseClickDrag, Left, 0, 0, %clipboard%, 0, 50, R ;l调色完成
Sleep, 10

MouseClick, Left, 385, 696, 1 ;颜色完成避免放大镜
Sleep, 30
MouseClick, Left, 270, 447, 1 ;换色撤回
Sleep, 30
    MouseClick, Left, 234, 653, 2 ;喷

Click, 456, 461,  D
Sleep, 100
Click, 456, 461,  U 
Click, 350, 616,  D
Sleep, 100 
Click, 350, 616,  U ;右移关闭
Click, 456, 461,  D
Sleep, 100
Click, 456, 461,  U ；关闭失败补偿
Sleep, 50                          
                }
sum:=sum+1
if (sum>63){
  sum:=0
Click, 350, 616,  D
Sleep, 100 
Click, 350, 616,  U
Click, 672, 252,  D
Sleep, 100 
Click, 672, 252,  U ;
Click, 350, 616,  D
Sleep, 100 
Click, 350, 616,  U ;上移---------------------
Sleep, 50
}    

} until j>63
} until i>63
F12::pause