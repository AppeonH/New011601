$PBExportHeader$w_test.srw
forward
global type w_test from w_genapp_basesheet
end type
type httpclient_1 from httpclient within w_test
end type
type mle_1 from multilineedit within w_test
end type
end forward

global type w_test from w_genapp_basesheet
string tag = "Untitled for Sheet 4"
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
mle_1 mle_1
end type
global w_test w_test

event type integer ue_test();return		0

end event

event type integer ue_test2();return		0
end event

on w_test.create
this.httpclient_1=create httpclient_1
this.mle_1=create mle_1
this.Control[]={this.mle_1}
end on

on w_test.destroy
destroy(this.httpclient_1)
destroy(this.mle_1)
end on

event open;MultiLineEdit		lmle_temp
lmle_temp	=	mle_1
f_mle_output(lmle_temp)
end event

type mle_1 from multilineedit within w_test
integer x = 448
integer y = 688
integer width = 480
integer height = 400
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "Untitled for Sheet 4"
borderstyle borderstyle = stylelowered!
end type

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


