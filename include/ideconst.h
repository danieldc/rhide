/* Copyright (C) 1996-2000 Robert H�hne, see COPYING.RH for details */
/* This file is part of RHIDE. */
#ifndef __IDECONST_H__
#define __IDECONST_H__

#undef __BASE
#define __BASE 128

#define __RHIDE_COMMAND_CODES__\
  __CM(Compile,1)\
  __CM(IncludeDir,2)\
  __CM(LibDir,3)\
  __CM(AddProjectItem,4)\
  __CM(DelProjectItem,5)\
  __CM(Make,6)\
  __CM(Build,7)\
  __CM(Libraries,8)\
  __CM(ShowProject,9)\
  __CM(ShowWindowList,10)\
  __CM(WarningFlags,11)\
  __CM(OptimizationFlags,12)\
  __CM(Link,13)\
  __CM(Debug,14)\
  __CM(LinkerOptions,15)\
  __CM(CompilerOptions,16)\
  __CM(WriteMake,17)\
  __CM(ObjDir,18)\
  __CM(SrcDir,19)\
  __CM(DebugFlags,20)\
  __CM(CFlags,21)\
  __CM(CXXFlags,22)\
  __CM(TargetName,23)\
  __CM(TargetType,24)\
  __CM(UserScreen,25)\
  __CM(Run,26)\
  __CM(SaveAll,27)\
  __CM(ProgArgs,28)\
  __CM(Colors,29)\
  __CM(Preferences,30)\
  __CM(LocalOptions,31)\
  __CM(Trace,32)\
  __CM(Step,33)\
  __CM(BreakPoints,34)\
  __CM(Reset,35)\
  __CM(AddWatch,36)\
  __CM(FunctionList,37)\
  __CM(GPL,37)\
  __CM(ClearWatch,38)\
  __CM(Goto,39)\
  __CM(EditReserved,40)\
  __CM(EditCFlags,41)\
  __CM(EditCXXFlags,42)\
  __CM(EditOptFlags,43)\
  __CM(EditDebugFlags,44)\
  __CM(EditWarnFlags,45)\
  __CM(Enter,46)\
  __CM(DosShell,47)\
  __CM(ShowClip,48)\
  __CM(ShowIncludes,49)\
  __CM(OpenEditor,50)\
  __CM(NewEditor,51)\
  __CM(OpenProject,52)\
  __CM(CloseProject,53)\
  __CM(GotoLine,54)\
  __CM(FSDB,55)\
  __CM(GREP,56)\
  __CM(About,57)\
  __CM(GDB,58)\
  __CM(Repaint,59)\
  __CM(EditUserWords,60)\
  __CM(NextMessage,61)\
  __CM(PrevMessage,62)\
  __CM(GPROF,63)\
  __CM(SyntaxHelp,64)\
  __CM(ClearDependencies,65)\
  __CM(MakeClear,66)\
  __CM(HelpIndex,67)\
  __CM(Evaluate,68)\
  __CM(AddWatchEntry,69)\
  __CM(ToggleBreak,70)\
  __CM(EditPascalFlags,71)\
  __CM(PascalFlags,72)\
  __CM(EditGPCReserved,73)\
  __CM(LastHelp,74)\
  __CM(LibcHelp,75)\
  __CM(PrimaryFile,76)\
  __CM(JumpToFunction,77)\
  __CM(HelpHelp,78)\
  __CM(CallStack,79)\
  __CM(ShowCalculator,80)\
  __CM(SetGlobalOptions,81)\
  __CM(Puzzle,82)\
  __CM(Calendar,83)\
  __CM(Ascii,84)\
  __CM(SaveOptions,85)\
  __CM(LoadOptions,86)\
  __CM(MouseDlg,87)\
  __CM(BugReport,88)\
  __CM(StepNo,89)\
  __CM(TraceNo,90)\
  __CM(GotoNo,91)\
  __CM(SyntaxFiles,92)\
  __CM(SyntaxOptions,93)\
  __CM(SyntaxIndex,94)\
  __CM(FortranFlags,95)\
  __CM(EditFortranFlags,96)\
  __CM(MainFunction,97)\
  __CM(BugReportSmall,98)\
  __CM(StandardIncludeDir,99)\
  __CM(AdaFlags,100)\
  __CM(EditAdaFlags,101)\
  __CM(AdaFlagList,102)\
  __CM(DisWindow,103)\
  __CM(CreateDependencies,104)\
  __CM(CloseRCS,105)\
  __CM(InfoAnswer,106)\
  __CM(ShowWatchWindow,107)\
  __CM(Finish,108)\
  __CM(ShowMessages,109)\
  __CM(ClearMessages,110)\
  __CM(ClearMessage,111)\
  __CM(EditKeyBind,112)\
  __CM(SetUpAltKeys,113)\
  __CM(KbBackDefault,114)\
  __CM(Print,115)\
  __CM(PrintSetup,116)\
  __CM(Inspect,117)\
  __CM(AddDataWindow,118)\
  __CM(ShowStackWindow,119)

#define __RHIDE_HELP_CODES__\
  __HC(Compile,1)\
  __HC(IncludeDir,2)\
  __HC(LibDir,3)\
  __HC(AddProjectItem,4)\
  __HC(DelProjectItem,5)\
  __HC(Make,6)\
  __HC(Build,7)\
  __HC(Libraries,8)\
  __HC(ShowProject,9)\
  __HC(ShowWindowList,10)\
  __HC(WarningFlags,11)\
  __HC(OptimizationFlags,12)\
  __HC(Link,13)\
  __HC(Debug,14)\
  __HC(LinkerOptions,15)\
  __HC(CompilerOptions,16)\
  __HC(WriteMake,17)\
  __HC(ObjDir,18)\
  __HC(SrcDir,19)\
  __HC(DebugFlags,20)\
  __HC(CFlags,21)\
  __HC(CXXFlags,22)\
  __HC(TargetName,23)\
  __HC(TargetType,24)\
  __HC(UserScreen,25)\
  __HC(Run,26)\
  __HC(SaveAll,27)\
  __HC(ProgArgs,28)\
  __HC(Colors,29)\
  __HC(Preferences,30)\
  __HC(LocalOptions,31)\
  __HC(Trace,32)\
  __HC(Step,33)\
  __HC(BreakPoints,34)\
  __HC(Reset,35)\
  __HC(AddWatch,36)\
  __HC(FunctionList,37)\
  __HC(GPL,38)\
  __HC(ClearWatch,39)\
  __HC(Goto,40)\
  __HC(EditReserved,41)\
  __HC(EditCFlags,42)\
  __HC(EditCXXFlags,43)\
  __HC(EditOptFlags,44)\
  __HC(EditDebugFlags,45)\
  __HC(EditWarnFlags,46)\
  __HC(SaveAs,47)\
  __HC(Replace,48)\
  __HC(SearchAgain,49)\
  __HC(Undo,50)\
  __HC(Find,51)\
  __HC(DosShell,52)\
  __HC(Quit,53)\
  __HC(Cut,54)\
  __HC(Copy,55)\
  __HC(Paste,56)\
  __HC(ShowClip,57)\
  __HC(Clear,58)\
  __HC(Resize,59)\
  __HC(Zoom,60)\
  __HC(Tile,61)\
  __HC(Cascade,62)\
  __HC(Next,63)\
  __HC(Prev,64)\
  __HC(Close,65)\
  __HC(Directories,66)\
  __HC(C_CXXCompiler,67)\
  __HC(Environment,68)\
  __HC(ShowIncludes,69)\
  __HC(OpenEditor,70)\
  __HC(NewEditor,71)\
  __HC(OpenProject,72)\
  __HC(CloseProject,73)\
  __HC(GotoLine,74)\
  __HC(FSDB,75)\
  __HC(GREP,76)\
  __HC(About,77)\
  __HC(GDB,78)\
  __HC(Repaint,79)\
  __HC(EditUserWords,80)\
  __HC(NextMessage,81)\
  __HC(PrevMessage,82)\
  __HC(GPROF,83)\
  __HC(SyntaxHelp,84)\
  __HC(Help,85)\
  __HC(ClearDependencies,86)\
  __HC(MakeClear,87)\
  __HC(HelpIndex,88)\
  __HC(Evaluate,89)\
  __HC(AddWatchEntry,90)\
  __HC(ToggleBreak,91)\
  __HC(EditPascalFlags,92)\
  __HC(PascalFlags,93)\
  __HC(EditGPCReserved,94)\
  __HC(File,95)\
  __HC(Search,96)\
  __HC(RunMenu,97)\
  __HC(CompileMenu,98)\
  __HC(ProjectMenu,99)\
  __HC(Windows,100)\
  __HC(OptionsMenu,101)\
  __HC(Edit,102)\
  __HC(PrimaryFile,103)\
  __HC(JumpToFunction,104)\
  __HC(HelpHelp,105)\
  __HC(CallStack,106)\
  __HC(ShowCalculator,107)\
  __HC(SetGlobalOptions,108)\
  __HC(Puzzle,109)\
  __HC(Calendar,110)\
  __HC(Ascii,111)\
  __HC(SaveOptions,112)\
  __HC(LoadOptions,113)\
  __HC(MouseDlg,114)\
  __HC(BugReport,115)\
  __HC(StepNo,116)\
  __HC(TraceNo,117)\
  __HC(GotoNo,118)\
  __HC(OptFlagList,119)\
  __HC(DebFlagList,120)\
  __HC(WarnFlagList,121)\
  __HC(CFlagList,122)\
  __HC(CXXFlagList,123)\
  __HC(PascalFlagList,124)\
  __HC(FortranFlagList,125)\
  __HC(AdaFlagList,126)\
  __HC(CompactBuffer,127)\
  __HC(Record,128)\
  __HC(Stop,129)\
  __HC(Play,130)\
  __HC(HelpMenu,131)\
  __HC(LibcHelp,132)\
  __HC(LastHelp,133)\
  __HC(Macro,134)\
  __HC(PreferenceCheckbox,135)\
  __HC(PreferenceVideomode,135+32)\
  __HC(PreferenceTabsize,168+16)\
  __HC(PuzzleWindow,185)\
  __HC(AsciiWindow,186)\
  __HC(CalendarWindow,187)\
  __HC(Syntax,188)\
  __HC(SyntaxFiles,189)\
  __HC(SyntaxOptions,190)\
  __HC(SyntaxIndex,191)\
  __HC(FortranFlags,192)\
  __HC(EditFortranFlags,193)\
  __HC(Redo,194)\
  __HC(MainFunction,195)\
  __HC(BugReportSmall,196)\
  __HC(ProfileEditor,197)\
  __HC(StandardIncludeDir,198)\
  __HC(AdaFlags,199)\
  __HC(EditAdaFlags,200)\
  __HC(ExpandAllTabs,201)\
  __HC(DisWindow,202)\
  __HC(CreateDependencies,203)\
  __HC(CalculatorDialog,204)\
  __HC(CloseRCS,205)\
  __HC(CopyClipWin,206)\
  __HC(PasteClipWin,207)\
  __HC(LocalCommandline,208)\
  __HC(LocalOutputname,209)\
  __HC(LocalCompilertype,210)\
  __HC(LocalCompiler,210+16)\
  __HC(LocalErrortype,227)\
  __HC(LocalErrorprogram,227+16)\
  __HC(LocalOtheroptions,244) /* +16 */\
  __HC(ClosedWindows,260)\
  __HC(ShowWatchWindow,261)\
  __HC(Finish,262)\
  __HC(PreferenceCheckbox1,263)\
  __HC(ShowMessages,263+32)\
  __HC(EditKeyBind,296)\
  __HC(SetUpAltKeys,297)\
  __HC(KbBackDefault,298)\
  __HC(Editor,299)\
  __HC(ChooseMacro,300)\
  __HC(RepeatMacro,301)\
  __HC(GenCodeForMacro,302)\
  __HC(Print,303)\
  __HC(PrintSetup,304)\
  __HC(Inspect,305)\
  __HC(AddDataWindow,306)\
  __HC(ShowStackWindow,307)\
  __HC(Rectangle,308)\
  __HC(SelRectStart,309)\
  __HC(SelRectEnd,310)\
  __HC(SelRectHide,311)\
  __HC(SelRectCopy,312)\
  __HC(SelRectPaste,313)\
  __HC(SelRectCut,314)\
  __HC(SelRectDel,315)\
  __HC(SelRectMove,316)

__RHIDE_COMMAND_CODES__
__RHIDE_HELP_CODES__

#endif