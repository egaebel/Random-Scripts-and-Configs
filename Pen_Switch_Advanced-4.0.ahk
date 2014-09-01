;pen switch that allows for 
;forward and backward movement 
;through the pens

^d::
keywait, lbutton, d, t.00001			;waits .00001s for the left mouse button key to be pressed down
							;basically press lbutton down then ^w
							
IfWinActive ahk_class Framework::CFrame		;checks if OneNote is the active window
{
	EnvGet,ethan,Pen_Switch_Counter		;gets pen_counter env. var., and places in global variable ethan
	jenny:=ethan				;sets jenny equal to ethan, because it gets screwy otherwise

	if errorlevel					;if lbutton is not pressed
	{
		jenny:=jenny+1				;increments jenny for click
		
		if jenny=5				;There are 4 pens, can be adjusted if more pens
		{
			jenny=1				;resets to 1
		}
	}
	else						;if lbutton is pressed
	{
		jenny:=jenny-1				;decrements jenny for click
		
		if jenny=0				;There are 4 pens, can be adjusted if more pens
		{
			jenny=4				;resets to 4
		}
	}

	SendInput {alt down}%jenny%{alt up}	;send press alt down + (jenny's value) + lift alt up
		
	EnvSet,Pen_Switch_Counter,%jenny%	;set pen counter env. var with new value for jenny
	return
}


#Persistent 
IfWinNotExist ahk_class Framework::CFrame	;checks if OneNote is running
{						;if it's not.....
	EnvSet,Pen_Switch_Counter, 1		;reset env var to 1
	
	Run C:\Users\ethan\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\OneNoteChecker_withPDFAnnotator.ahk
	
	ExitApp					;shutdown script
}