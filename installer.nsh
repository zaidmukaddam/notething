!macro customInstall
  WriteRegStr SHCTX "SOFTWARE\RegisteredApplications" "Notething" "Software\Clients\StartMenuInternet\Notething\Capabilities"

  WriteRegStr SHCTX "SOFTWARE\Classes\Notething" "" "Notething web page document"
  WriteRegStr SHCTX "SOFTWARE\Classes\Notething\Application" "AppUserModelId" "Notething"
  WriteRegStr SHCTX "SOFTWARE\Classes\Notething\Application" "ApplicationIcon" "$INSTDIR\Notething.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Notething\Application" "ApplicationName" "Notething"
  WriteRegStr SHCTX "SOFTWARE\Classes\Notething\Application" "ApplicationCompany" "Notething"      
  WriteRegStr SHCTX "SOFTWARE\Classes\Notething\Application" "ApplicationDescription" "Your favorite Notes App"      
  WriteRegStr SHCTX "SOFTWARE\Classes\Notething\DefaultIcon" "DefaultIcon" "$INSTDIR\Notething.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Notething\shell\open\command" "" '"$INSTDIR\Notething.exe" "%1"'

  WriteRegStr SHCTX "SOFTWARE\Classes\.htm\OpenWithProgIds" "Notething" ""
  WriteRegStr SHCTX "SOFTWARE\Classes\.html\OpenWithProgIds" "Notething" ""

  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Notething" "" "Notething"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Notething\DefaultIcon" "" "$INSTDIR\Notething.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Notething\Capabilities" "ApplicationDescription" "Your favorite Notes App"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Notething\Capabilities" "ApplicationName" "Notething"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Notething\Capabilities" "ApplicationIcon" "$INSTDIR\Notething.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Notething\Capabilities\FileAssociations" ".htm" "Notething"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Notething\Capabilities\FileAssociations" ".html" "Notething"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Notething\Capabilities\URLAssociations" "http" "Notething"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Notething\Capabilities\URLAssociations" "https" "Notething"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Notething\Capabilities\StartMenu" "StartMenuInternet" "Notething"
  
  WriteRegDWORD SHCTX "SOFTWARE\Clients\StartMenuInternet\Notething\InstallInfo" "IconsVisible" 1
  
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Notething\shell\open\command" "" "$INSTDIR\Notething.exe"
!macroend
!macro customUnInstall
  DeleteRegKey SHCTX "SOFTWARE\Classes\Notething"
  DeleteRegKey SHCTX "SOFTWARE\Clients\StartMenuInternet\Notething"
  DeleteRegValue SHCTX "SOFTWARE\RegisteredApplications" "Notething"
!macroend