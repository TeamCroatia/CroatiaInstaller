!define PRODUCT_NAME "ũ�ξ�Ƽ�� �����ڿ� �ӽ� ��ġ��"
!define PRODUCT_VERSION "1016"
!define PRODUCT_PUBLISHER "Team Croatia"
!define PRODUCT_WEB_SITE "https://github.com/kpjhg0124"

SetCompressor lzma

; MUI 1.67 compatible ------
!include "MUI.nsh"
!include "LogicLib.nsh"

; MUI Settings
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
; Install Setting page
Page Custom Form
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!insertmacro MUI_PAGE_FINISH

; Language files
!insertmacro MUI_LANGUAGE "Korean"

; Reserve files
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS

; MUI end ------

Var 'bckset'
Var 'inset'

ReserveFile "Form.ini"
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS

Function .onInit
!insertmacro MUI_INSTALLOPTIONS_EXTRACT "Form.ini"
FunctionEnd

Function Form
!insertmacro MUI_INSTALLOPTIONS_DISPLAY_RETURN "Form.ini"
FunctionEnd


Name "ũ�ξ�Ƽ�� �����ڿ� �ӽ� ����ġ��"
OutFile "ũ�ξ�Ƽ�� �����ڿ� �ӽ� ����ġ��.exe"
InstallDir "$APPDATA\.minecraft"
ShowInstDetails show

  SetOverwrite ifnewer

Section "MainSection" SEC01
  SetOutPath "$INSTDIR\Temp"
  File "javakill.cmd"
  DetailPrint "���� ���μ����� �����մϴ�: Javaw.exe"
  nsExec::Exec "javakill.cmd"
  goto Step1
Step1:
!insertmacro MUI_INSTALLOPTIONS_READ "$bckset" "Form.ini" "Field 3" "State"
StrCmp $bckset "1" CheckA1 CheckA2
CheckA1:
  SetOutPath "$INSTDIR\Temp"
  DetailPrint "����ũ����Ʈ ��� ����..."
  DetailPrint "����ũ����Ʈ ���� �����Ϳ����� ����� �Ҹ�� �� �ֽ��ϴ�."
  DetailPrint "���� ȣ�ڰ��� ���� ��ġ ��ũ��Ʈ�� ���� ����� ������ ���, �ش� ��������� ������"
  DetailPrint "�ϴ�."
  File "cpymc.cmd"
  nsExec::Exec "cpymc.cmd"
  RMDir /r "$APPDATA\.MCBackup\Temp"
  DetailPrint "����ũ����Ʈ ��� �Ϸ�..."
CheckA2:
  goto Step2
Step2:
!insertmacro MUI_INSTALLOPTIONS_READ "$inset" "Form.ini" "Field 2" "State"
StrCmp $inset "1" CheckB1 CheckB2
CheckB1:
  SetOutPath "$INSTDIR"
  DetailPrint "����ũ����Ʈ ���� �ʱ�ȭ ����..."
  RMDir /r "$INSTDIR"
  DetailPrint "����ũ����Ʈ ���� �ʱ�ȭ �Ϸ�."
  goto Step3
CheckB2:
  goto Step3
Step3:
  SetOutPath "$INSTDIR\Temp"
  DetailPrint "���� �ٿ�ε���... (1/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile27.uf@26736645585DC92231F139.001" "GameLib.7z.001"
  DetailPrint "���� �ٿ�ε���... (2/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile1.uf@250CAB45585DC927267BE0.002" "GameLib.7z.002"
  DetailPrint "���� �ٿ�ε���... (3/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile27.uf@25764845585DC92D30BA16.003" "GameLib.7z.003"
  DetailPrint "���� �ٿ�ε���... (4/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile9.uf@24708A45585DC931338D82.004" "GameLib.7z.004"
  DetailPrint "���� �ٿ�ε���... (5/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile23.uf@267A8245585DC9352EFBC0.005" "GameLib.7z.005"
  DetailPrint "���� �ٿ�ε���... (6/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile30.uf@277ADF45585DC93A2DB9F4.006" "GameLib.7z.006"
  DetailPrint "���� �ٿ�ε���... (7/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile26.uf@2479E545585DC9402FE102.007" "GameLib.7z.007"
  DetailPrint "���� �ٿ�ε���... (8/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile21.uf@276B9845585DC94536F5B3.008" "GameLib.7z.008"
  DetailPrint "���� �ٿ�ε���... (9/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile26.uf@216D2345585DC94936A67E.009" "GameLib.7z.009"
  DetailPrint "���� �ٿ�ε���... (10/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile29.uf@2612F545585DC94E21727A.010" "GameLib.7z.010"
  DetailPrint "���� �ٿ�ε���... (11/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile3.uf@21699545585DC952370D8C.011" "GameLib.7z.011"
  DetailPrint "���� �ٿ�ε���... (12/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile8.uf@24080D45585DC956281AEE.012" "GameLib.7z.012"
  DetailPrint "���� �ٿ�ε���... (13/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile3.uf@2175D445585DC959300DF6.013" "GameLib.7z.013"
  DetailPrint "���� �ٿ�ε���... (14/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile25.uf@22014C45585DC95A2DECA3.014" "GameLib.7z.014"
  DetailPrint "���� �ٿ�ε���... (15/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile5.uf@257B1445585DC95C2FAADE.015" "GameLib.7z.015"
  DetailPrint "���� �ٿ�ε���... (16/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile6.uf@26729E45585DC96033A30F.016" "GameLib.7z.016"
  DetailPrint "���� �ٿ�ε���... (17/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile25.uf@27736645585DC965323DF6.017" "GameLib.7z.017"
  DetailPrint "���� �ٿ�ε���... (18/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile4.uf@2277BA45585DC96931A55A.018" "GameLib.7z.018"
  DetailPrint "���� �ٿ�ε���... (19/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile24.uf@2403A945585DC96E2CEA2D.019" "GameLib.7z.019"
  DetailPrint "���� �ٿ�ε���... (20/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile9.uf@260CAB45585DC97227E1EC.020" "GameLib.7z.020"
  DetailPrint "���� �ٿ�ε���... (21/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile27.uf@26130145585DC976239FE1.021" "GameLib.7z.021"
  DetailPrint "���� �ٿ�ε���... (22/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile2.uf@220EE245585DC97A250BC4.022" "GameLib.7z.022"
  DetailPrint "���� �ٿ�ε���... (23/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile30.uf@22708A45585DC97F343240.023" "GameLib.7z.023"
  DetailPrint "���� �ٿ�ε���... (24/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile22.uf@24707945585DC98335E9A6.024" "GameLib.7z.024"
  DetailPrint "���� �ٿ�ε���... (25/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile27.uf@2179E545585DC98730D5F5.025" "GameLib.7z.025"
  DetailPrint "���� �ٿ�ε���... (26/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile1.uf@25084D45585DC98B2B0480.026" "GameLib.7z.026"
  DetailPrint "���� �ٿ�ε���... (27/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile25.uf@210AD345585DC98F29C17B.027" "GameLib.7z.027"
  DetailPrint "���� �ٿ�ε���... (28/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile25.uf@25014C45585DC9912E2B71.028" "GameLib.7z.028"
  DetailPrint "���� �ٿ�ε���... (29/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile23.uf@23729E45585DC99734B507.029" "GameLib.7z.029"
  DetailPrint "���� �ٿ�ε���... (30/30)"
  Nsisdl::download "http://kpjhg0124.tistory.com/attachment/cfile8.uf@266CDB45585DC99B377D8D.030" "GameLib.7z.030"
  SetOutPath "$INSTDIR"
  DetailPrint "��� ������..."
  File "7za.exe"
  File "Extract.cmd"
  nsExec::Exec "Extract.cmd"
  File "�� ũ�ξ�Ƽ�� �̿����.txt"
  DetailPrint "�ӽ������� �����ϴ���...."
  RMDir /r "$INSTDIR\Temp"
  Delete "7za.exe"
  Delete "Extract.exe"
  DetailPrint "�Ϸ�"
  SetOutPath "$INSTDIR\CroatiaInformation"
  File "Done.txt"
  File "instend.cmd"
  nsExec::Exec "instend.cmd"
  SetOutPath "$INSTDIR"
SectionEnd

Section -Post
SectionEnd