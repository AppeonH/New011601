$PBExportHeader$w_test.srw
forward
global type w_test from window
end type
type httpclient_1 from httpclient within w_test
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
httpclient_1 httpclient_1
end type
global w_test w_test

event type integer ue_test();return		0

end event

event type integer ue_test2();return		0
end event

on w_test.create
this.httpclient_1=create httpclient_1
end on

on w_test.destroy
destroy(this.httpclient_1)
end on

type httpclient_1 from httpclient within w_test descriptor "pb_nvo" = "true" 
end type

on httpclient_1.create
call super::create
TriggerEvent( this, "constructor" )
end on

on httpclient_1.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

