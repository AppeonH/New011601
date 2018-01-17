$PBExportHeader$w_test.srw
forward
global type w_test from w_genapp_basesheet
end type
type cb_1 from commandbutton within w_test
end type
type mle_1 from multilineedit within w_test
end type
type httpclient_1 from httpclient within w_test
end type
end forward

global type w_test from w_genapp_basesheet
string tag = "Untitled for Sheet 4"
integer width = 3378
integer height = 1408
string title = "Untitled"
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event type integer ue_test ( )
event type integer ue_test2 ( )
cb_1 cb_1
mle_1 mle_1
httpclient_1 httpclient_1
end type
global w_test w_test

event type integer ue_test();return		0

end event

event type integer ue_test2();return		0
end event

on w_test.create
int iCurrent
call super::create
this.cb_1=create cb_1
this.mle_1=create mle_1
this.httpclient_1=create httpclient_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_1
this.Control[iCurrent+2]=this.mle_1
end on

on w_test.destroy
call super::destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.cb_1)
destroy(this.mle_1)
destroy(this.httpclient_1)
end on

event open;MultiLineEdit		lmle_temp
lmle_temp	=	mle_1
f_mle_output(lmle_temp)
end event

type cb_1 from commandbutton within w_test
integer x = 503
integer y = 104
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

event clicked;str_teststr		lstr_test

lstr_test.str_diplay	=	True

str_contact		lstr_contact,lstr_Get

lstr_contact.str_address	=	"test address OK"

lstr_test.str_contacts[1]	=	lstr_contact

lstr_Get	=	lstr_test.str_contacts[1]

Messagebox ("Message",lstr_Get.str_address )
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

