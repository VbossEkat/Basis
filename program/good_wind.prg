  PROCEDURE  good_wind
  DECLARE INTEGER SetWindowLong IN Win32API INTEGER, INTEGER, INTEGER
  DECLARE INTEGER SendMessage   IN Win32API INTEGER, INTEGER, INTEGER, INTEGER
  DECLARE INTEGER SetClassLong  IN Win32API INTEGER, INTEGER, INTEGER

  #DEFINE GWL_EXSTYLE 	-20
  #DEFINE WS_EX_DLGMODALFRAME 0x00000001
  #DEFINE WM_SETICON 		0x0080  && Dik - New
  #DEFINE ICON_SMALL 		0
  #DEFINE ICON_BIG   		1
  #DEFINE GCL_HICON 		-14
 
  SetWindowLong(_Screen.hWnd,GWL_EXSTYLE,WS_EX_DLGMODALFRAME)
  SendMessage(_Screen.hWnd, WM_SETICON, ICON_SMALL, 0)
  SendMessage(_Screen.hWnd, WM_SETICON, ICON_BIG, 0)
  SetClassLong(_Screen.hWnd,GCL_HICON,0)
  ENDPROC 