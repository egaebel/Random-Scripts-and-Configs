#Persistent

SetTimer, CheckOneNote, 500
return

CheckOneNote:
IfWinExist ahk_class Framework::CFrame
{
	Run C:\Users\ethan\Documents\ACTUAL My Documents\Programs\AutoHotKeys Scripts\Pen_Switch_Advanced-4.0.ahk
	
	ExitApp
}
IfWinExist ahk_class TfrmPdMain
{
	Run C:\Users\ethan\Documents\ACTUAL My Documents\Programs\AutoHotKeys Scripts\Pen_Switch_Advanced-4.0.ahk
	
	ExitApp
}

^d::h






