$PBExportHeader$w_test2.srw
forward
global type w_test2 from window
end type
end forward

global type w_test2 from window
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
end type
global w_test2 w_test2

forward prototypes
public function integer wf_test (jsongenerator ajson_test)
end prototypes

public function integer wf_test (jsongenerator ajson_test);Return	2
end function

on w_test2.create
end on

on w_test2.destroy
end on

