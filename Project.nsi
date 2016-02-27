!define PRODUCT_NAME "ũ�ξ�Ƽ�� �����ڿ� �ӽ� ��ġ��"
!define PRODUCT_VERSION "1016"
!define PRODUCT_PUBLISHER "Team Croatia"
!define PRODUCT_WEB_SITE "https://github.com/kpjhg0124"

SetCompressor lzma

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
Setfont "�������" 10
!define MUI_ABORTWARNING
!define MUI_ICON "icon.ico"
BrandingText "Team Croatia"

!define MUI_WELCOMEFINISHPAGE_BITMAP "WelcomePageBitMapSub.bmp"
; Welcome page
!insertmacro MUI_PAGE_WELCOME
!define MUI_PAGE_HEADER_TEXT "Croatia Development Mod Installation"
!define MUI_PAGE_HEADER_SUBTEXT "Team Croatia"
; License page
!insertmacro MUI_PAGE_LICENSE "License.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!insertmacro MUI_PAGE_FINISH

; Language files
!insertmacro MUI_LANGUAGE "Korean"

; Reserve files
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS

; MUI end ------

Name "ũ�ξ�Ƽ�� �����ڿ� �ӽ� ����ġ��"
OutFile "ũ�ξ�Ƽ�� �����ڿ� �ӽ� ����ġ��.exe"
InstallDir "$APPDATA\.minecraft"
ShowInstDetails show

Section "MainSection" SEC01
  SetOutPath "$INSTDIR\Temp"
  File "killmc.cmd"
  DetailPrint "���� ���μ����� �����մϴ�: Javaw.exe"
  nsExec::Exec "killmc.cmd"
  SetOutPath "$INSTDIR"
  Messagebox MB_OK "����ũ����Ʈ�� ������ �ʱ�ȭ�˴ϴ�. �ʿ��Ͻ������� �̸� ������ּ���. "
  SetOverwrite ifnewer
  DetailPrint "����ũ����Ʈ ���� �ʱ�ȭ ����..."
  RMDir /r "$INSTDIR"
  DetailPrint "����ũ����Ʈ ���� �ʱ�ȭ �Ϸ�."
  SetOutPath "$INSTDIR\Temp"
  DetailPrint "���� �ٿ�ε���... (1/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile22.uf@252BF13F56B6F7A42C9CE1.001" "GameLib.7z.001"
  DetailPrint "���� �ٿ�ε���... (2/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile6.uf@23205B3F56B6F7A634418E.002" "GameLib.7z.002"
  DetailPrint "���� �ٿ�ε���... (3/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile29.uf@2531B03F56B6F7AA26137D.003" "GameLib.7z.003"
  DetailPrint "���� �ٿ�ε���... (4/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile30.uf@2132A13F56B6F7AC26ACBE.004" "GameLib.7z.004"
  DetailPrint "���� �ٿ�ε���... (5/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile8.uf@24232C3F56B6F7AE332AB5.005" "GameLib.7z.005"
  DetailPrint "���� �ٿ�ε���... (6/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile6.uf@2425C73F56B6F7B230DD08.006" "GameLib.7z.006"
  DetailPrint "���� �ٿ�ε���... (7/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile30.uf@262C043F56B6F7C02C8982.007" "GameLib.7z.007"
  DetailPrint "���� �ٿ�ε���... (8/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile25.uf@2550583F56B6F7C4119D07.008" "GameLib.7z.008"
  DetailPrint "���� �ٿ�ε���... (9/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile5.uf@2538A73F56B6F7C622CD99.009" "GameLib.7z.009"
  DetailPrint "���� �ٿ�ε���... (10/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile8.uf@2427193F56B6F7C8300E1E.010" "GameLib.7z.010"
  DetailPrint "���� �ٿ�ε���... (11/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile3.uf@222B313F56B6F7CA2DDCBB.011" "GameLib.7z.011"
  DetailPrint "���� �ٿ�ε���... (12/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile25.uf@2752833F56B6F7CE0F29A8.012" "GameLib.7z.012"
  DetailPrint "���� �ٿ�ε���... (13/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile22.uf@272D053F56B6F7D02A6435.013" "GameLib.7z.013"
  DetailPrint "���� �ٿ�ε���... (14/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile3.uf@212D8A3F56B6F7D22AD137.014" "GameLib.7z.014"
  DetailPrint "���� �ٿ�ε���... (15/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile26.uf@23260A3F56B6F7D631AF9D.015" "GameLib.7z.015"
  DetailPrint "���� �ٿ�ε���... (16/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile6.uf@255DFA3F56B6F7D807941E.016" "GameLib.7z.016"
  DetailPrint "���� �ٿ�ε���... (17/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile3.uf@2332FC3F56B6F7E826ACC6.017" "GameLib.7z.017"
  DetailPrint "���� �ٿ�ε���... (18/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile6.uf@2721B53F56B6F7EC342793.018" "GameLib.7z.018"
  DetailPrint "���� �ٿ�ε���... (19/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile27.uf@234AFE3F56B6F7EE14D1A2.019" "GameLib.7z.019"
  DetailPrint "���� �ٿ�ε���... (20/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile6.uf@25283C3F56B6F7F02F5302.020" "GameLib.7z.020"
  DetailPrint "���� �ٿ�ε���... (21/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile1.uf@273C2A3F56B6F7F11F2EFB.021" "GameLib.7z.021"
  DetailPrint "���� �ٿ�ε���... (22/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile7.uf@252DB73F56B6F7F32BE362.022" "GameLib.7z.022"
  DetailPrint "���� �ٿ�ε���... (23/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile21.uf@2631B03F56B6F7F527CF54.023" "GameLib.7z.023"
  DetailPrint "���� �ٿ�ε���... (24/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile22.uf@2232A13F56B6F7F72786F3.024" "GameLib.7z.024"
  DetailPrint "���� �ٿ�ε���... (25/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile29.uf@22653F3F56B6F7F901762F.025" "GameLib.7z.025"
  DetailPrint "���� �ٿ�ε���... (26/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile2.uf@2225D93F56B6F7FB3355F4.026" "GameLib.7z.026"
  DetailPrint "���� �ٿ�ε���... (27/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile29.uf@2734BF3F56B6F7FC247639.027" "GameLib.7z.027"
  DetailPrint "���� �ٿ�ε���... (28/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile5.uf@2525BB3F56B6F7FF3279A0.028" "GameLib.7z.028"
  DetailPrint "���� �ٿ�ε���... (29/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile21.uf@262CBB3F56B6F8002C1243.029" "GameLib.7z.029"
  DetailPrint "���� �ٿ�ε���... (30/30)"
  Nsisdl::download "http://hoparkgo9ma.tistory.com/attachment/cfile24.uf@2341043F56B6F802172E26.030" "GameLib.7z.030"
  SetOutPath "$INSTDIR"
  DetailPrint "��� ������..."
  File "7za.exe"
  File "Extract.cmd"
  nsExec::Exec "Extract.cmd"
  File "�̿����.txt"
  DetailPrint "�ӽ������� �����ϴ���...."
  RMDir /r "$INSTDIR\Temp"
  Delete "killmc.cmd"
  Delete "7za.exe"
  Delete "Extract.cmd"
  DetailPrint "�Ϸ�"
  SetOutPath "$INSTDIR\CroatiaInformation"
  File "��ġ�Ϸ�!.txt"
  File "instend.cmd"
  nsExec::Exec "instend.cmd"
  SetOutPath "$INSTDIR"
SectionEnd

Section -Post
SectionEnd