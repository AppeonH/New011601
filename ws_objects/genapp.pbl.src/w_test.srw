$PBExportHeader$w_test.srw
forward
global type w_test from window
end type
end forward

global type w_test from window
integer width = 3378
integer height = 1408
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event type integer ue_test ( )
event type integer ue_test2 ( )
end type
global w_test w_test

event type integer ue_test();return		0

end event

event type integer ue_test2();return		0
end event

on w_test.create
end on

on w_test.destroy
end on

