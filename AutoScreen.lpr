program AutoScreen;

{$MODE Delphi}

{$R *.res}

uses
  Forms,
  LCLIntf, LCLType, LMessages, SysUtils,
  Dialogs, Interfaces,
  uAutoScreen in 'uAutoScreen.pas' {MainForm},
  uAbout in 'uAbout.pas' {AboutForm},
  uLocalization in 'uLocalization.pas',
  uUtils in 'uUtils.pas',
  //VistaAltFixUnit in 'libs\VistaAltFixUnit.pas',
  uLanguages in 'uLanguages.pas';

{var
  MutexHandle: THandle;}
  //MutexName: PChar;
{const
  MutexName = 'AutoScreenshotMutex';}

begin
  // heaptrc settings
  {$if declared(useHeapTrace)}
    globalSkipIfNoLeaks := true;
  {$endIf}
  //setHeapTraceOutput('trace.log');

  //// Prevent the launch of more than one instance of process
  ////MutexName := PChar(Application.ExeName);
  //MutexHandle := OpenMutex(MUTEX_ALL_ACCESS, False, MutexName);
  //if MutexHandle <> 0 then
  //begin
  //  FileClose(MutexHandle); { *Преобразовано из CloseHandle* }
  //  MessageDlg('Program already running!', mtWarning, [mbOk], 0);
  //  Exit;
  //end;
  //MutexHandle := CreateMutex(nil, false, MutexName);

  Application.Scaled:=True;
  Application.Initialize;
  Application.Title := 'Auto Screenshot';
  Application.HintHidePause := -1; // Do not hide hint
  Application.CreateForm(TMainForm, MainForm);
  Application.ShowMainForm := False;
  Application.Run;

  //FileClose(MutexHandle); { *Преобразовано из CloseHandle* }
end.
