; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "SyncN"
!define PRODUCT_VERSION "1.0.1"
!define PRODUCT_PUBLISHER "SyncN"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\SyncN.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "LICENSE.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN
;!define MUI_FINISHPAGE_RUN_NOTCHECK
!define MUI_FINISHPAGE_RUN_TEXT "Start SyncN"
!define MUI_FINISHPAGE_RUN_FUNCTION "multiexe"
;!define MUI_FINISHPAGE_RUN "$PROGRAMFILES\SyncN\SyncN.exe"
;!define MUI_FINISHPAGE_RUN "$PROGRAMFILES\SyncN\RegStartProgram.bat"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "Korean"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "Setup.exe"
InstallDir "$PROGRAMFILES\SyncN"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "MainSection" SEC01
  SetOutPath "$PROGRAMFILES\SyncN"
  SetOverwrite try
  File "dist\SyncN\base_library.zip"
  SetOutPath "$PROGRAMFILES\SyncN\certifi"
  File "dist\SyncN\certifi\cacert.pem"
  SetOutPath "$PROGRAMFILES\SyncN\images"
  File "dist\SyncN\images\sync.ico"
  File "dist\SyncN\images\sync.png"
  SetOutPath "$PROGRAMFILES\SyncN\Include"
  File "dist\SyncN\Include\pyconfig.h"
  SetOutPath "$PROGRAMFILES\SyncN"
  File "dist\SyncN\libGLESv2.dll"
  File "dist\SyncN\mfc140u.dll"
  File "dist\SyncN\MSVCP140.dll"
  File "dist\SyncN\pyexpat.pyd"
  SetOutPath "$PROGRAMFILES\SyncN\PyQt5\Qt\bin"
  File "dist\SyncN\PyQt5\Qt\bin\d3dcompiler_47.dll"
  File "dist\SyncN\PyQt5\Qt\bin\libEGL.dll"
  File "dist\SyncN\PyQt5\Qt\bin\libGLESv2.dll"
  File "dist\SyncN\PyQt5\Qt\bin\opengl32sw.dll"
  File "dist\SyncN\PyQt5\Qt\bin\qt.conf"
  SetOutPath "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\iconengines"
  File "dist\SyncN\PyQt5\Qt\plugins\iconengines\qsvgicon.dll"
  SetOutPath "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\imageformats"
  File "dist\SyncN\PyQt5\Qt\plugins\imageformats\qgif.dll"
  File "dist\SyncN\PyQt5\Qt\plugins\imageformats\qicns.dll"
  File "dist\SyncN\PyQt5\Qt\plugins\imageformats\qico.dll"
  File "dist\SyncN\PyQt5\Qt\plugins\imageformats\qjpeg.dll"
  File "dist\SyncN\PyQt5\Qt\plugins\imageformats\qsvg.dll"
  File "dist\SyncN\PyQt5\Qt\plugins\imageformats\qtga.dll"
  File "dist\SyncN\PyQt5\Qt\plugins\imageformats\qtiff.dll"
  File "dist\SyncN\PyQt5\Qt\plugins\imageformats\qwbmp.dll"
  File "dist\SyncN\PyQt5\Qt\plugins\imageformats\qwebp.dll"
  SetOutPath "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\platforms"
  File "dist\SyncN\PyQt5\Qt\plugins\platforms\qminimal.dll"
  File "dist\SyncN\PyQt5\Qt\plugins\platforms\qoffscreen.dll"
  File "dist\SyncN\PyQt5\Qt\plugins\platforms\qwebgl.dll"
  File "dist\SyncN\PyQt5\Qt\plugins\platforms\qwindows.dll"
  SetOutPath "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\platformthemes"
  File "dist\SyncN\PyQt5\Qt\plugins\platformthemes\qflatpak.dll"
  SetOutPath "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\styles"
  File "dist\SyncN\PyQt5\Qt\plugins\styles\qwindowsvistastyle.dll"
  SetOutPath "$PROGRAMFILES\SyncN\PyQt5\Qt\translations"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_ar.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_bg.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_ca.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_cs.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_da.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_de.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_en.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_es.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_fi.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_fr.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_gd.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_he.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_hu.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_it.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_ja.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_ko.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_lv.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_pl.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_ru.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_sk.qm"
  File "dist\SyncN\PyQt5\Qt\translations\qtbase_uk.qm"
  SetOutPath "$PROGRAMFILES\SyncN\PyQt5"
  File "dist\SyncN\PyQt5\QtCore.pyd"
  File "dist\SyncN\PyQt5\QtGui.pyd"
  File "dist\SyncN\PyQt5\QtWidgets.pyd"
  File "dist\SyncN\PyQt5\sip.pyd"
  SetOutPath "$PROGRAMFILES\SyncN"
  File "dist\SyncN\python3.dll"
  File "dist\SyncN\python36.dll"
  File "dist\SyncN\pythoncom36.dll"
  File "dist\SyncN\pywintypes36.dll"
  File "dist\SyncN\Qt5Core.dll"
  File "dist\SyncN\Qt5DBus.dll"
  File "dist\SyncN\Qt5Gui.dll"
  File "dist\SyncN\Qt5Network.dll"
  File "dist\SyncN\Qt5Qml.dll"
  File "dist\SyncN\Qt5Quick.dll"
  File "dist\SyncN\Qt5Svg.dll"
  File "dist\SyncN\Qt5WebSockets.dll"
  File "dist\SyncN\Qt5Widgets.dll"
  File "dist\SyncN\RegStartProgram.bat"
  File "dist\SyncN\select.pyd"
  File "dist\SyncN\sqlite3.dll"
  File "dist\SyncN\SyncN.exe"
  CreateDirectory "$SMPROGRAMS\SyncN"
  CreateShortCut "$SMPROGRAMS\SyncN\SyncN.lnk" "$PROGRAMFILES\SyncN\SyncN.exe"
  CreateShortCut "$DESKTOP\SyncN.lnk" "$PROGRAMFILES\SyncN\SyncN.exe"
  File "dist\SyncN\SyncN.exe.manifest"
  File "dist\SyncN\unicodedata.pyd"
  File "dist\SyncN\VCRUNTIME140.dll"
  File "dist\SyncN\win32api.pyd"
  File "dist\SyncN\win32trace.pyd"
  File "dist\SyncN\win32ui.pyd"
  File "dist\SyncN\win32wnet.pyd"
  File "dist\SyncN\_asyncio.pyd"
  File "dist\SyncN\_bz2.pyd"
  File "dist\SyncN\_ctypes.pyd"
  File "dist\SyncN\_decimal.pyd"
  File "dist\SyncN\_hashlib.pyd"
  File "dist\SyncN\_lzma.pyd"
  File "dist\SyncN\_multiprocessing.pyd"
  File "dist\SyncN\_overlapped.pyd"
  File "dist\SyncN\_socket.pyd"
  File "dist\SyncN\_sqlite3.pyd"
  File "dist\SyncN\_ssl.pyd"
  File "dist\SyncN\_win32sysloader.pyd"
SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  CreateShortCut "$SMPROGRAMS\SyncN\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$PROGRAMFILES\SyncN\SyncN.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$PROGRAMFILES\SyncN\SyncN.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name)��(��) ������ ���ŵǾ����ϴ�."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "$(^Name)��(��) �����Ͻðڽ��ϱ�?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\uninst.exe"
  Delete "$PROGRAMFILES\SyncN\_win32sysloader.pyd"
  Delete "$PROGRAMFILES\SyncN\_ssl.pyd"
  Delete "$PROGRAMFILES\SyncN\_sqlite3.pyd"
  Delete "$PROGRAMFILES\SyncN\_socket.pyd"
  Delete "$PROGRAMFILES\SyncN\_overlapped.pyd"
  Delete "$PROGRAMFILES\SyncN\_multiprocessing.pyd"
  Delete "$PROGRAMFILES\SyncN\_lzma.pyd"
  Delete "$PROGRAMFILES\SyncN\_hashlib.pyd"
  Delete "$PROGRAMFILES\SyncN\_decimal.pyd"
  Delete "$PROGRAMFILES\SyncN\_ctypes.pyd"
  Delete "$PROGRAMFILES\SyncN\_bz2.pyd"
  Delete "$PROGRAMFILES\SyncN\_asyncio.pyd"
  Delete "$PROGRAMFILES\SyncN\win32wnet.pyd"
  Delete "$PROGRAMFILES\SyncN\win32ui.pyd"
  Delete "$PROGRAMFILES\SyncN\win32trace.pyd"
  Delete "$PROGRAMFILES\SyncN\win32api.pyd"
  Delete "$PROGRAMFILES\SyncN\VCRUNTIME140.dll"
  Delete "$PROGRAMFILES\SyncN\unicodedata.pyd"
  Delete "$PROGRAMFILES\SyncN\SyncN.exe.manifest"
  Delete "$PROGRAMFILES\SyncN\SyncN.exe"
  Delete "$PROGRAMFILES\SyncN\sqlite3.dll"
  Delete "$PROGRAMFILES\SyncN\select.pyd"
  Delete "$PROGRAMFILES\SyncN\RegStartProgram.bat"
  Delete "$PROGRAMFILES\SyncN\Qt5Widgets.dll"
  Delete "$PROGRAMFILES\SyncN\Qt5WebSockets.dll"
  Delete "$PROGRAMFILES\SyncN\Qt5Svg.dll"
  Delete "$PROGRAMFILES\SyncN\Qt5Quick.dll"
  Delete "$PROGRAMFILES\SyncN\Qt5Qml.dll"
  Delete "$PROGRAMFILES\SyncN\Qt5Network.dll"
  Delete "$PROGRAMFILES\SyncN\Qt5Gui.dll"
  Delete "$PROGRAMFILES\SyncN\Qt5DBus.dll"
  Delete "$PROGRAMFILES\SyncN\Qt5Core.dll"
  Delete "$PROGRAMFILES\SyncN\pywintypes36.dll"
  Delete "$PROGRAMFILES\SyncN\pythoncom36.dll"
  Delete "$PROGRAMFILES\SyncN\python36.dll"
  Delete "$PROGRAMFILES\SyncN\python3.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\sip.pyd"
  Delete "$PROGRAMFILES\SyncN\PyQt5\QtWidgets.pyd"
  Delete "$PROGRAMFILES\SyncN\PyQt5\QtGui.pyd"
  Delete "$PROGRAMFILES\SyncN\PyQt5\QtCore.pyd"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_uk.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_sk.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_ru.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_pl.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_lv.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_ko.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_ja.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_it.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_hu.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_he.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_gd.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_fr.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_fi.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_es.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_en.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_de.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_da.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_cs.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_ca.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_bg.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\translations\qtbase_ar.qm"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\styles\qwindowsvistastyle.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\platformthemes\qflatpak.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\platforms\qwindows.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\platforms\qwebgl.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\platforms\qoffscreen.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\platforms\qminimal.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\imageformats\qwebp.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\imageformats\qwbmp.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\imageformats\qtiff.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\imageformats\qtga.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\imageformats\qsvg.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\imageformats\qjpeg.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\imageformats\qico.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\imageformats\qicns.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\imageformats\qgif.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\iconengines\qsvgicon.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\bin\qt.conf"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\bin\opengl32sw.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\bin\libGLESv2.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\bin\libEGL.dll"
  Delete "$PROGRAMFILES\SyncN\PyQt5\Qt\bin\d3dcompiler_47.dll"
  Delete "$PROGRAMFILES\SyncN\pyexpat.pyd"
  Delete "$PROGRAMFILES\SyncN\MSVCP140.dll"
  Delete "$PROGRAMFILES\SyncN\mfc140u.dll"
  Delete "$PROGRAMFILES\SyncN\libGLESv2.dll"
  Delete "$PROGRAMFILES\SyncN\Include\pyconfig.h"
  Delete "$PROGRAMFILES\SyncN\images\sync.png"
  Delete "$PROGRAMFILES\SyncN\images\sync.ico"
  Delete "$PROGRAMFILES\SyncN\certifi\cacert.pem"
  Delete "$PROGRAMFILES\SyncN\base_library.zip"

  Delete "$SMPROGRAMS\SyncN\Uninstall.lnk"
  Delete "$DESKTOP\SyncN.lnk"
  Delete "$SMPROGRAMS\SyncN\SyncN.lnk"

  RMDir "$SMPROGRAMS\SyncN"
  RMDir "$PROGRAMFILES\SyncN\PyQt5\Qt\translations"
  RMDir "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\styles"
  RMDir "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\platformthemes"
  RMDir "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\platforms"
  RMDir "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\imageformats"
  RMDir "$PROGRAMFILES\SyncN\PyQt5\Qt\plugins\iconengines"
  RMDir "$PROGRAMFILES\SyncN\PyQt5\Qt\bin"
  RMDir "$PROGRAMFILES\SyncN\PyQt5"
  RMDir "$PROGRAMFILES\SyncN\Include"
  RMDir "$PROGRAMFILES\SyncN\images"
  RMDir "$PROGRAMFILES\SyncN\certifi"
  RMDir "$PROGRAMFILES\SyncN"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd

function multiexe
  ExecShell "" "$PROGRAMFILES\SyncN\SyncN.exe"
  ExecShell "" "$PROGRAMFILES\SyncN\RegStartProgram.bat"
functionEnd