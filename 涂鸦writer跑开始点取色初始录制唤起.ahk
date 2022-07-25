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
Send,{NumpadMult}{Numpad1}{Numpad0}{Numpad5}{NumpadDiv}{Numpad3}{Numpad6}{Numpad0}{Enter}
MouseClickDrag, Left,505, 128, 254, 134
Send,^c
sleep,30
WinActivate, 奇葩战斗家 - 标准引擎
MouseClick, Left, 155, 372, 5 ;进入颜色
sleep,30
MouseClick, Left,64, 433, 1
MouseClickDrag, Left, 0, 0, -30, 0, 100, R ;
sleep,30
MouseClick, Left,64, 475,1
MouseClickDrag, Left, 0, 0, -30, 0, 100, R ;
sleep,30
MouseClick, Left,69, 515, 1
MouseClickDrag, Left, 0, 0, -30, 0, 100, R  ;hsl清零
sleep,30 
MouseClick, Left,65, 433, 1
sleep,10
MouseClickDrag, Left, 0, 0, %clipboard%+1, 0, 100, R;h调色



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
Send,{NumpadMult}{Numpad1}{Numpad0}{Numpad5}{NumpadDiv}{Numpad1}{Numpad0}{Numpad0}{Enter}
MouseClickDrag, Left,505, 128, 254, 134
Send,^c
Sleep, 10 ;SS
WinActivate, 奇葩战斗家 - 标准引擎
Sleep, 10
MouseClick, Left,65, 475, 1
sleep,10
MouseClickDrag, Left, 0, 0, %clipboard%+1, 0, 100, R;s调色



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
Send,{NumpadMult}{Numpad1}{Numpad0}{Numpad5}{NumpadDiv}{Numpad1}{Numpad0}{Numpad0}{Enter}
MouseClickDrag, Left,505, 128, 254, 134
Send,^c
Sleep, 10 ;SS
WinActivate, 奇葩战斗家 - 标准引擎
Sleep, 10
MouseClick, Left,65, 515, 1
sleep,10
MouseClickDrag, Left, 0, 0, %clipboard%+1, 0, 100, R;l调色
sleep, 30
PixelGetColor, color,  71,586
MouseClick, Left, 156, 622, 2 ;颜色完成避免放大镜
sleep, 501
Pixelgetcolor, colors, 71, 586
while(color=colors){
         click, 156,612
         sleep, 501
Pixelgetcolor, colors, 71, 586
                               }
Sleep, 30
MouseClick, Left, 68, 423, 1 ;换色撤回
Sleep, 30
    MouseClick, Left, 66, 599, 2 ;喷
Sleep,50    
PixelGetColor, color, 427, 110
Click, 133, 556
sleep,501
PixelGetColor, colors, 427, 110
while(color=colors){    
     Click, 133, 556
     sleep,501
PixelGetColor, colors, 427, 110
                   }
Sleep, 100    
Click, 224, 431
Sleep, 100    
PixelGetColor, color, 427, 110
Click, 133, 556
sleep,501
PixelGetColor, colors, 427, 110
while(color=colors){    
     Click, 133, 556
     sleep,501
PixelGetColor, colors, 427, 110
                   }
                       
                }
sum:=sum+1
if (sum>63){
  sum:=0
PixelGetColor, color, 427, 110
Click, 133, 556
sleep,501
PixelGetColor, colors, 427, 110
while(color=colors){    
     Click, 133, 556
     sleep,501
PixelGetColor, colors, 427, 110
                   }
Sleep, 100    
Click, 397, 259
Sleep, 100    
PixelGetColor, color, 427, 110
Click, 133, 556
sleep,501
PixelGetColor, colors, 427, 110
while(color=colors){    
     Click, 133, 556
     sleep,501
PixelGetColor, colors, 427, 110
                   }
}    

} until j>63
} until i>63
F12::pause