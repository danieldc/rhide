# Copyright (C) 1996-1998 Robert H�hne, see COPYING.RH for details 
# This file is part of RHIDE. 
# This file is automatically generated by RHIDE Version 1.4.8
# created with the command:
# d:/obj/rhide/gpr2mak.exe -d -r- -o - rhide.gpr
ifeq ($(strip $(PCRE_OBJ)),)
PCRE_OBJ=
endif
ifeq ($(strip $(RHIDESRC)),)
RHIDESRC=s:/rho/rhide
endif
ifeq ($(strip $(SETOBJ)),)
SETOBJ=d:/djgpp/contrib/setedit/makes
endif
ifeq ($(strip $(SETSRC)),)
SETSRC=d:/djgpp/contrib/setedit
endif
ifeq ($(strip $(TVOBJ)),)
TVOBJ=d:/djgpp/contrib/tvision/djgpp
endif
ifeq ($(strip $(TVSRC)),)
TVSRC=d:/djgpp/contrib/tvision
endif
vpath_src=$(RHIDESRC)
vpath %.c $(vpath_src)
vpath %.cc $(vpath_src)
vpath %.cpp $(vpath_src)
vpath %.C $(vpath_src)
vpath %.cxx $(vpath_src)
vpath %.s $(vpath_src)
vpath %.S $(vpath_src)
vpath %.p $(vpath_src)
vpath %.pas $(vpath_src)
vpath %.f $(vpath_src)
vpath %.for $(vpath_src)
vpath %.F $(vpath_src)
vpath %.fpp $(vpath_src)
vpath %.i $(vpath_src)
vpath %.ii $(vpath_src)
vpath %.m $(vpath_src)
vpath %.asm $(vpath_src)
vpath %.nsm $(vpath_src)
vpath_obj=debobj
vpath %.o $(vpath_obj)
RHIDE_GCC=gcc
RHIDE_AS=gcc
RHIDE_GXX=gcc
RHIDE_GPC=gpc
RHIDE_FPC=ppc386
RHIDE_AR=ar
RHIDE_LD=gcc
RHIDE_G77=g77
RHIDE_NASM=nasm
RHIDE_LD_PASCAL=gpc
RHIDE_LD_FPC=ld
RHIDE_GNATBIND=gnatbind
RHIDE_RM=rm
RHIDE_ARFLAGS=rcs
RHIDE_TYPED_LIBS.f=m f2c
RHIDE_TYPED_LIBS.for=$(RHIDE_TYPED_LIBS.f)
RHIDE_TYPED_LIBS.F=$(RHIDE_TYPED_LIBS.f)
RHIDE_TYPED_LIBS.fpp=$(RHIDE_TYPED_LIBS.f)
RHIDE_TYPED_LIBS_GPC=m gpc
RHIDE_TYPED_LIBS_FPC=fpc
RHIDE_TYPED_LIBS.p=$(RHIDE_TYPED_LIBS_$(PASCAL_TYPE))
RHIDE_TYPED_LIBS.pas=$(RHIDE_TYPED_LIBS.p)
RHIDE_TYPED_LIBS.pp=$(RHIDE_TYPED_LIBS_FPC)
RHIDE_TYPED_LIBS_DJGPP.cc=stdcxx
RHIDE_TYPED_LIBS_Linux.cc=stdc++
RHIDE_TYPED_LIBS.cc=$(RHIDE_TYPED_LIBS_$(RHIDE_OS).cc)
RHIDE_TYPED_LIBS.cpp=$(RHIDE_TYPED_LIBS.cc)
RHIDE_TYPED_LIBS.cxx=$(RHIDE_TYPED_LIBS.cc)
RHIDE_TYPED_LIBS.C=$(RHIDE_TYPED_LIBS.cc)
RHIDE_TYPED_LIBS.ii=$(RHIDE_TYPED_LIBS.cc)
RHIDE_TYPED_LIBS.l=fl
RHIDE_TYPED_LIBS.m=objc
RHIDE_TYPED_LIBS.adb=gnat
RHIDE_TYPED_LIBS_SUFFIXES=$(sort $(foreach item,$(PROJECT_ITEMS),$(suffix\
	$(item))))
RHIDE_TYPED_LIBS=$(foreach\
	suff,$(RHIDE_TYPED_LIBS_SUFFIXES),$(RHIDE_TYPED_LIBS$(suff)))
RHIDE_INCLUDES=$(SPECIAL_CFLAGS) $(addprefix -I,$(INCLUDE_DIRS))
RHIDE_LIBDIRS=$(addprefix -L,$(LIB_DIRS))
RHIDE_LIBS=$(addprefix -l,$(LIBS) $(RHIDE_TYPED_LIBS) $(RHIDE_OS_LIBS))
RHIDE_LDFLAGS=$(SPECIAL_LDFLAGS) $(addprefix -Xlinker ,$(LD_EXTRA_FLAGS))
RHIDE_NASM_TARGET_DJGPP=coff
RHIDE_NASM_TARGET_Linux=elf
RHIDE_NASM_TARGET=$(RHIDE_NASM_TARGET_$(RHIDE_OS))
RHIDE_COMPILE_NASM=$(RHIDE_NASM) -f $(RHIDE_NASM_TARGET) $(LOCAL_OPT) -o\
	$(OUTFILE)  $(SOURCE_NAME)
RHIDE_COMPILE_FORTRAN=$(RHIDE_G77) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_F_LANG_FLAGS) $(C_EXTRA_FLAGS)\
	$(LOCAL_OPT)  -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_FORTRAN_FORCE=$(RHIDE_G77) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_F_LANG_FLAGS) $(C_EXTRA_FLAGS)\
	-x f77 $(LOCAL_OPT)  -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_C=$(RHIDE_GCC) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_C_LANG_FLAGS) $(C_EXTRA_FLAGS)\
	$(CPPFLAGS)   $(CFLAGS) $(RHIDE_OS_CFLAGS) $(LOCAL_OPT) -c\
	$(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_C_FORCE=$(RHIDE_GCC) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_C_LANG_FLAGS) $(C_EXTRA_FLAGS)\
	-x c $(CPPFLAGS)  $(CFLAGS) $(RHIDE_OS_CFLAGS) $(LOCAL_OPT) -c\
	$(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_CC=$(RHIDE_GXX) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_C_LANG_FLAGS)\
	$(C_CXX_LANG_FLAGS) $(C_EXTRA_FLAGS)  $(CPPFLAGS) $(CXXFLAGS)\
	$(RHIDE_OS_CXXFLAGS) $(LOCAL_OPT)   -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_CC_FORCE=$(RHIDE_GXX) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_C_LANG_FLAGS)\
	$(C_CXX_LANG_FLAGS) $(C_EXTRA_FLAGS)  $(CPPFLAGS) $(CXXFLAGS)\
	$(RHIDE_OS_CXXFLAGS) -x c++ $(LOCAL_OPT)   -c $(SOURCE_NAME) -o\
	$(OUTFILE)
RHIDE_COMPILE_ASM=$(RHIDE_AS) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_EXTRA_FLAGS) $(LOCAL_OPT)  -c\
	$(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_ASM_FORCE=$(RHIDE_AS) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_EXTRA_FLAGS) -x assembler\
	$(LOCAL_OPT)  -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_GPC_FLAGS=$(RHIDE_INCLUDES) $(C_DEBUG_FLAGS) $(C_OPT_FLAGS)\
	$(C_WARN_FLAGS)  $(C_P_LANG_FLAGS) $(C_EXTRA_FLAGS)
RHIDE_COMPILE_GPC=$(RHIDE_GPC) $(RHIDE_GPC_FLAGS) $(LOCAL_OPT)  -c\
	$(SOURCE_NAME) -o $(OUTFILE)
RHIDE_COMPILE_GPC_FORCE=$(RHIDE_GPC) $(RHIDE_GPC_FLAGS) -x pascal\
	$(LOCAL_OPT)  -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_FPC_FLAGS=$(C_FPC_LANG_FLAGS) $(LOCAL_OPT) $(addprefix\
	-Up,$(INCLUDE_DIRS))  $(C_EXTRA_FLAGS)
RHIDE_COMPILE_FPC=$(RHIDE_FPC) $(RHIDE_FPC_FLAGS) -E- $(SOURCE_NAME)
RHIDE_COMPILE_FPC_FORCE=$(RHIDE_FPC) $(RHIDE_FPC_FLAGS) -B -E-\
	$(SOURCE_NAME)
RHIDE_COMPILE_LINK=$(RHIDE_LD) $(RHIDE_LIBDIRS) $(C_EXTRA_FLAGS) -o\
	$(OUTFILE)  $(OBJFILES) $(LIBRARIES) $(LDFLAGS) $(RHIDE_LDFLAGS)\
	$(RHIDE_LIBS)
RHIDE_COMPILE_LINK_GPC=$(RHIDE_LD_PASCAL) $(RHIDE_LIBDIRS) $(C_EXTRA_FLAGS)\
	-o $(OUTFILE)  $(OBJFILES) $(LIBRARIES) $(RHIDE_LDFLAGS) $(LDFLAGS)\
	$(RHIDE_LIBS)
RHIDE_COMPILE_LINK_GPC_AUTOMAKE=$(RHIDE_LD_PASCAL) $(RHIDE_LIBDIRS)  -o\
	$(OUTFILE) --automake="$(strip $(RHIDE_GPC_FLAGS))"\
	$(RHIDE_GPC_FLAGS)  $(SOURCE_NAME) $(LIBRARIES) $(LDFLAGS)\
	$(RHIDE_LDFLAGS) $(RHIDE_LIBS)
RHIDE_COMPILE_PASCAL=$(RHIDE_COMPILE_$(PASCAL_TYPE))
RHIDE_COMPILE_PASCAL_FORCE=$(RHIDE_COMPILE_$(PASCAL_TYPE)_FORCE)
RHIDE_COMPILE_LINK_PASCAL_AUTOMAKE=$(RHIDE_COMPILE_LINK_$(PASCAL_TYPE)_AUTOMAKE)
RHIDE_COMPILE_LINK_PASCAL=$(RHIDE_COMPILE_LINK_$(PASCAL_TYPE))
RHIDE_FPC_LIBDIRS_DJGPP=$(DJDIR)/lib
RHIDE_FPC_LIBDIRS_Linux=/usr/local/lib /usr/lib /lib
RHIDE_FPC_LIBDIRS=$(RHIDE_FPC_LIBDIRS_$(RHIDE_OS))
RHIDE_FPC_LINK_FLAGS_DJGPP=-O coff-go32-exe $(RHIDE_LIBDIRS) $(addprefix\
	-L,$(RHIDE_FPC_LIBDIRS))
RHIDE_FPC_LINK_FLAGS_Linux=$(RHIDE_LIBDIRS) $(addprefix\
	-L,$(RHIDE_FPC_LIBDIRS))
RHIDE_FPC_LINK_FLAGS=$(RHIDE_FPC_LINK_FLAGS_$(RHIDE_OS))
RHIDE_COMPILE_LINK_FPC=$(RHIDE_LD_FPC) -o $(OUTFILE) $(OBJFILES)\
	$(RHIDE_FPC_LINK_FLAGS)   $(LIBRARIES) $(RHIDE_LIBS)
RHIDE_COMPILE_LINK_FPC_AUTOMAKE=$(RHIDE_FPC) -o$(OUTFILE) $(SOURCE_NAME)\
	$(RHIDE_FPC_FLAGS) -E+
RHIDE_COMPILE_ARCHIVE=$(RHIDE_AR) $(RHIDE_ARFLAGS) $(OUTFILE)\
	$(ALL_OBJFILES)
RHIDE_COMPILE_ADA=$(RHIDE_GCC) $(RHIDE_INCLUDES) $(C_DEBUG_FLAGS)\
	$(C_OPT_FLAGS)  $(C_WARN_FLAGS) $(C_C_LANG_FLAGS) $(C_EXTRA_FLAGS)\
	$(LOCAL_OPT)  $(C_ADA_LANG_FLAGS)  $(CPPFLAGS) $(CFLAGS)\
	$(RHIDE_OS_CFLAGS) -c $(SOURCE_NAME) -o $(OUTFILE)
RHIDE_ADA_BIND_FILE=$(addprefix _,$(setsuffix .c,$(OUTFILE)))
RHIDE_COMPILE_LINK_ADA_BIND=$(RHIDE_GNATBIND) -o $(RHIDE_ADA_BIND_FILE)\
	$(setsuffix .ali,$(OUTFILE))
RHIDE_COMPILE_LINK_ADA_LINK=$(RHIDE_LD) $(RHIDE_LIBDIRS) $(C_EXTRA_FLAGS) -o\
	$(OUTFILE)  $(RHIDE_ADA_BIND_FILE) $(OBJFILES) $(LIBRARIES)\
	$(LDFLAGS)  $(RHIDE_LDFLAGS) $(RHIDE_LIBS)
_RHIDE_COMPILE_LINK_ADA=$(RHIDE_COMPILE_LINK_ADA_BIND);\
	$(RHIDE_COMPILE_LINK_ADA_LINK);   $(RHIDE_RM)\
	$(RHIDE_ADA_BIND_FILE)
RHIDE_COMPILE_LINK_ADA=gnatbl $(RHIDE_LIBDIRS) $(C_EXTRA_FLAGS) -o\
	$(OUTFILE)  $(setsuffix .ali,$(OUTFILE)) $(LIBRARIES) $(LDFLAGS) \
	$(RHIDE_LDFLAGS) $(RHIDE_LIBS)
RHIDE_COMPILE.c.o=$(RHIDE_COMPILE_C)
RHIDE_COMPILE.cc.o=$(RHIDE_COMPILE_CC)
RHIDE_COMPILE.p.o=$(RHIDE_COMPILE_PASCAL)
RHIDE_COMPILE.pas.o=$(RHIDE_COMPILE.p.o)
RHIDE_COMPILE.pp.o=$(RHIDE_COMPILE_FPC)
RHIDE_COMPILE.pas.s.GPC=$(subst -c $(SOURCE_NAME),-S\
	$(SOURCE_NAME),$(RHIDE_COMPILE_GPC))
RHIDE_COMPILE.pas.s.FPC=$(RHIDE_COMPILE_FPC) -a -s
RHIDE_COMPILE.pas.s=$(RHIDE_COMPILE.pas.s.$(PASCAL_TYPE))
RHIDE_COMPILE.f.o=$(RHIDE_COMPILE_FORTRAN)
RHIDE_COMPILE.nsm.o=$(RHIDE_COMPILE_NASM)
RHIDE_COMPILE.s.o=$(RHIDE_COMPILE_ASM)
RHIDE_COMPILE.c.s=$(subst -c $(SOURCE_NAME),-S\
	$(SOURCE_NAME),$(RHIDE_COMPILE_C))
RHIDE_COMPILE.c.i=$(subst -c $(SOURCE_NAME),-E\
	$(SOURCE_NAME),$(RHIDE_COMPILE_C))
RHIDE_COMPILE.i.s=$(RHIDE_COMPILE.c.s)
RHIDE_COMPILE.cc.s=$(subst -c $(SOURCE_NAME),-S\
	$(SOURCE_NAME),$(RHIDE_COMPILE_CC))
RHIDE_COMPILE.cc.ii=$(subst -c $(SOURCE_NAME),-E\
	$(SOURCE_NAME),$(RHIDE_COMPILE_CC))
RHIDE_COMPILE.ii.s=$(RHIDE_COMPILE.cc.s)
RHIDE_COMPILE.cpp.o=$(RHIDE_COMPILE.cc.o)
RHIDE_COMPILE.cxx.o=$(RHIDE_COMPILE.cc.o)
RHIDE_COMPILE.C.o=$(RHIDE_COMPILE.cc.o)
RHIDE_COMPILE.pas.o=$(RHIDE_COMPILE.p.o)
RHIDE_COMPILE.for.o=$(RHIDE_COMPILE.f.o)
RHIDE_COMPILE.F.o=$(RHIDE_COMPILE.f.o)
RHIDE_COMPILE.fpp.o=$(RHIDE_COMPILE.f.o)
RHIDE_COMPILE.asm.o=$(RHIDE_COMPILE.nsm.o)
RHIDE_COMPILE.cpp.s=$(RHIDE_COMPILE.cc.s)
RHIDE_COMPILE.cxx.s=$(RHIDE_COMPILE.cc.s)
RHIDE_COMPILE.C.s=$(RHIDE_COMPILE.cc.s)
RHIDE_COMPILE.cpp.ii=$(RHIDE_COMPILE.cc.ii)
RHIDE_COMPILE.cxx.ii=$(RHIDE_COMPILE.cc.ii)
RHIDE_COMPILE.C.ii=$(RHIDE_COMPILE.cc.ii)
RHIDE_COMPILE.adb.o=$(RHIDE_COMPILE_ADA)
RHIDE_FSDB=fsdb $(OUTFILE) $(addprefix -p ,$(SRC_DIRS)) $(PROG_ARGS)
RHIDE_GDB=gdb $(OUTFILE) $(addprefix -d ,$(SRC_DIRS))
DEFAULT_GREP_MASK=*.[cfhmnps]*
RHIDE_GREP=grep -n $(prompt arguments for GREP,$(WUC) $(DEFAULT_GREP_MASK))
RHIDE_GPROF=gprof $(OUTFILE)
RHIDE_RLOG=$(shell rlog -R $(rlog_arg))
RHIDE_CO=$(shell co -q $(co_arg))
RHIDE_STANDARD_INCLUDES_DJGPP=$(addprefix $(DJDIR)/,include include/sys\
	lang/cxx lang/cxx/std)
RHIDE_STANDARD_INCLUDES_Linux=$(addprefix /usr/,include include/sys\
	include/g++ include/g++/std)
RHIDE_STANDARD_INCLUDES=$(RHIDE_STANDARD_INCLUDES_$(RHIDE_OS))
RHIDE_CONFIG_DIRS_DJGPP=. $(RHIDE_SHARE) $(GET_HOME) $(DJDIR)/share/rhide
RHIDE_CONFIG_DIRS_Linux=. $(RHIDE_SHARE) $(GET_HOME) /usr/local/share/rhide\
	/usr/share/rhide  /local/share/rhide /share/rhide
RHIDE_CONFIG_DIRS=$(RHIDE_CONFIG_DIRS_$(RHIDE_OS))\
	$(RHIDE_BIN_DIR)/../share/rhide  $(SET_FILES)
RHIDE_PATH_SEPARATOR_DJGPP=;
RHIDE_PATH_SEPARATOR_Linux=:
RHIDE_PATH_SEPARATOR=$(RHIDE_PATH_SEPARATOR_$(RHIDE_OS))
RHIDE_STDINC_C_DJGPP_BETA=$(DJGPP_ALPHA)/include
RHIDE_STDINC_C_DJGPP=$(DJDIR)/include $(RHIDE_STDINC_C_DJGPP_BETA)
RHIDE_STDINC_CXX_DJGPP=$(DJDIR)/lang/cxx 
RHIDE_STDINC_GCC_DJGPP=$(DJDIR)/lib/gcc-lib
RHIDE_STDINC_C_Linux=/usr/include /usr/local/include
RHIDE_STDINC_CXX_Linux=/usr/include/g++ /usr/local/include/g++
RHIDE_STDINC_GCC_Linux=/usr/lib/gcc-lib /usr/local/lib/gcc-lib
RHIDE_STDINC_C=$(RHIDE_STDINC_C_$(RHIDE_OS))
RHIDE_STDINC_CXX=$(RHIDE_STDINC_CXX_$(RHIDE_OS)) $(TVSRC)/include $(SETSRC)
RHIDE_STDINC_GCC=$(RHIDE_STDINC_GCC_$(RHIDE_OS))
RHIDE_STDINC=$(RHIDE_STDINC_C) $(RHIDE_STDINC_CXX) $(RHIDE_STDINC_GCC)\
	$(RHIDE_STDINC_EXTRA)
RHIDE_OS_CFLAGS_Linux=-D_GNU_SOURCE
RHIDE_OS_CFLAGS=$(RHIDE_OS_CFLAGS_$(RHIDE_OS)) $(RH_WARN)
RHIDE_OS_CXXFLAGS_Linux=-D_GNU_SOURCE
RHIDE_OS_CXXFLAGS_DJGPP=
RHIDE_OS_CXXFLAGS=$(RHIDE_OS_CXXFLAGS_$(RHIDE_OS)) $(RH_WARN)\
	-fno-exceptions -fno-rtti
PCRE_OBJ=$(subst Linux,linux,$(SETOBJ)/$(RHIDE_OS))
RHIDE_OS_LIBS_Linux=ncurses gpm m
RHIDE_OS_LIBS_DJGPP_idegc.exe=dbg
RHIDE_OS_LIBS_DJGPP=intl $(RHIDE_OS_LIBS_DJGPP_$(MAIN_TARGET))
RHIDE_OS_LIBS=$(RHIDE_OS_LIBS_$(RHIDE_OS))
RHIDE_COMPILE_LINK=$(RHIDE_LD) $(RHIDE_LIBDIRS) $(C_EXTRA_FLAGS) -o\
	$(OUTFILE) $(OBJFILES) $(LIBRARIES) $(LDFLAGS) $(RHIDE_LDFLAGS)\
	$(RHIDE_LIBS) $(SETOBJ)/easydiag.a -lrhtv
SET_FILES=$(DJDIR)/share/setedit
RHIDE_STDINC_C_DJGPP_BETA=$(DJGPP_ALPHA)/include
RHIDE_STDINC_C_DJGPP=$(DJDIR)/include $(RHIDE_STDINC_C_DJGPP_BETA)
RHIDE_STDINC_CXX_DJGPP=$(DJDIR)/lang/cxx 
RHIDE_STDINC_GCC_DJGPP=$(DJDIR)/lib/gcc-lib
RHIDE_STDINC_C_Linux=/usr/include /usr/local/include
RHIDE_STDINC_CXX_Linux=/usr/include/g++ /usr/local/include/g++
RHIDE_STDINC_GCC_Linux=/usr/lib/gcc-lib /usr/local/lib/gcc-lib
RHIDE_STDINC_C=$(RHIDE_STDINC_C_$(RHIDE_OS))
RHIDE_STDINC_CXX=$(RHIDE_STDINC_CXX_$(RHIDE_OS)) $(TVSRC)/include $(SETSRC)
RHIDE_STDINC_GCC=$(RHIDE_STDINC_GCC_$(RHIDE_OS))
RHIDE_STDINC=$(RHIDE_STDINC_C) $(RHIDE_STDINC_CXX) $(RHIDE_STDINC_GCC)\
	$(RHIDE_STDINC_EXTRA)
RHIDE_OS_CFLAGS_Linux=-D_GNU_SOURCE
RHIDE_OS_CFLAGS=$(RHIDE_OS_CFLAGS_$(RHIDE_OS)) $(RH_WARN)
RHIDE_OS_CXXFLAGS_Linux=-D_GNU_SOURCE
RHIDE_OS_CXXFLAGS_DJGPP=
RHIDE_OS_CXXFLAGS=$(RHIDE_OS_CXXFLAGS_$(RHIDE_OS)) $(RH_WARN)\
	-fno-exceptions -fno-rtti
PCRE_OBJ=$(subst Linux,linux,$(SETOBJ)/$(RHIDE_OS))
RHIDE_OS_LIBS_Linux=ncurses gpm m
RHIDE_OS_LIBS_DJGPP_idegc.exe=dbg
RHIDE_OS_LIBS_DJGPP=intl $(RHIDE_OS_LIBS_DJGPP_$(MAIN_TARGET))
RHIDE_OS_LIBS=$(RHIDE_OS_LIBS_$(RHIDE_OS))
RHIDE_COMPILE_LINK=$(RHIDE_LD) $(RHIDE_LIBDIRS) $(C_EXTRA_FLAGS) -o\
	$(OUTFILE) $(OBJFILES) $(LIBRARIES) $(LDFLAGS) $(RHIDE_LDFLAGS)\
	$(RHIDE_LIBS) $(SETOBJ)/easydiag.a -lrhtv
SET_FILES=$(DJDIR)/share/setedit
INCLUDE_DIRS=$(RHIDESRC)/include $(RHIDESRC)/libtvuti/include\
	$(RHIDESRC)/librhuti $(RHIDESRC)/libide/include\
	$(RHIDESRC)/librhgdb/include $(RHIDESRC)/libtvgdb/include\
	$(TVSRC)/include $(RHIDESRC)/tvdemo/include $(SETSRC)/include\
	$(SETSRC)/settvuti/include $(SETSRC)/infview/include\
	$(SETSRC)/calcu $(SETSRC)/setedit/include $(SETSRC)/easydiag\
	$(TVSRC)
LIB_DIRS=libide libtvuti tvdemo librhuti libgdb libtvgdb librhgdb $(TVOBJ)\
	$(SETOBJ) $(PCRE_OBJ)
C_DEBUG_FLAGS=-g
C_OPT_FLAGS=-O2
C_WARN_FLAGS=
C_C_LANG_FLAGS=
C_CXX_LANG_FLAGS=
C_P_LANG_FLAGS=
C_FPC_LANG_FLAGS=
C_F_LANG_FLAGS=
C_ADA_LANG_FLAGS=
LIBS=ide rhuti set rhuti tvdem tvuti tvgdb rhtv rhgdb gdb z pcre
LD_EXTRA_FLAGS=-Map rhide.map
C_EXTRA_FLAGS=-DRHIDE -DINTERNAL_DEBUGGER -DFOR_LIBSET
LOCAL_OPT=$(subst ___~~~___, ,$(subst $(notdir $<)___,,$(filter $(notdir\
	$<)___%,$(LOCAL_OPTIONS))))
OBJFILES=debobj/commands.o debobj/fstrcmp.o debobj/ideapp.o debobj/idebug.o\
	debobj/idecheck.o debobj/idecolor.o debobj/idecomp.o\
	debobj/idedebug.o debobj/idedefau.o debobj/idedial.o\
	debobj/ideenv.o debobj/ideexter.o debobj/ideflags.o\
	debobj/ideforma.o debobj/idegcc.o debobj/idehelp.o\
	debobj/idehints.o debobj/idemain.o debobj/idemak.o debobj/idemenu.o\
	debobj/idemsg.o debobj/ideopt.o debobj/ideprj.o debobj/idercs.o\
	debobj/idespec.o debobj/idestatu.o debobj/idestrm.o\
	debobj/idesupp.o debobj/idesynta.o debobj/ideuser.o\
	debobj/ideutil.o debobj/ideversi.o debobj/openedit.o\
	debobj/rhassert.o
ALL_OBJFILES=debobj/commands.o debobj/fstrcmp.o debobj/ideapp.o\
	debobj/idebug.o debobj/idecheck.o debobj/idecolor.o\
	debobj/idecomp.o debobj/idedebug.o debobj/idedefau.o\
	debobj/idedial.o debobj/ideenv.o debobj/ideexter.o\
	debobj/ideflags.o debobj/ideforma.o debobj/idegcc.o\
	debobj/idehelp.o debobj/idehints.o debobj/idemain.o debobj/idemak.o\
	debobj/idemenu.o debobj/idemsg.o debobj/ideopt.o debobj/ideprj.o\
	debobj/idercs.o debobj/idespec.o debobj/idestatu.o debobj/idestrm.o\
	debobj/idesupp.o debobj/idesynta.o debobj/ideuser.o\
	debobj/ideutil.o debobj/ideversi.o debobj/openedit.o\
	debobj/rhassert.o
LIBRARIES=
SOURCE_NAME=$<
OUTFILE=$@
SPECIAL_CFLAGS=
SPECIAL_LDFLAGS=
PROG_ARGS=gpr2mak
SRC_DIRS=$(RHIDESRC)
WUC=
EDITORS=
RHIDE_OS=$(RHIDE_OS_)
ifeq ($(strip $(RHIDE_OS)),)
ifneq ($(strip $(DJDIR)),)
RHIDE_OS_:=DJGPP
else
RHIDE_OS_:=$(shell uname)
endif
endif

MAIN_TARGET=idegc.exe
PROJECT_ITEMS=commands.cc fstrcmp.c ideapp.cc idebug.cc idecheck.cc\
	idecolor.cc idecomp.cc idedebug.cc idedefau.cc idedial.cc ideenv.cc\
	ideexter.cc ideflags.cc ideforma.cc idegcc.cc idehelp.cc\
	idehints.cc idemain.cc idemak.cc idemenu.cc idemsg.cc ideopt.cc\
	ideprj.cc idercs.cc idespec.cc idestatu.cc idestrm.cc idesupp.cc\
	idesynta.cc ideuser.cc ideutil.cc ideversi.cc libide/libide.gpr\
	librhgdb/librhgdb.gpr librhuti/librhuti.gpr libtvgdb/libtvgdb.gpr\
	libtvuti/libtvuti.gpr openedit.cc rhassert.c tvdemo/libtvdem.gpr
DEFAULT_MASK=*
RHIDE_BIN_DIR=d:/obj/rhide
PASCAL_TYPE=GPC
GET_HOME=$(HOME)
%.o: %.c
	$(RHIDE_COMPILE.c.o)
%.o: %.i
	$(RHIDE_COMPILE_C)
%.o: %.cc
	$(RHIDE_COMPILE.cc.o)
%.o: %.cpp
	$(RHIDE_COMPILE.cpp.o)
%.o: %.cxx
	$(RHIDE_COMPILE.cxx.o)
%.o: %.C
	$(RHIDE_COMPILE.C.o)
%.o: %.ii
	$(RHIDE_COMPILE_CC)
%.o: %.s
	$(RHIDE_COMPILE.s.o)
%.o: %.S
	$(RHIDE_COMPILE_ASM)
%.s: %.c
	$(RHIDE_COMPILE.c.s)
%.s: %.i
	$(RHIDE_COMPILE.i.s)
%.s: %.cc
	$(RHIDE_COMPILE.cc.s)
%.s: %.cpp
	$(RHIDE_COMPILE.cpp.s)
%.s: %.cxx
	$(RHIDE_COMPILE.cxx.s)
%.s: %.C
	$(RHIDE_COMPILE.C.s)
%.o: %.pas
	$(RHIDE_COMPILE.pas.o)
%.o: %.p
	$(RHIDE_COMPILE.p.o)
%.o: %.pp
	$(RHIDE_COMPILE.pp.o)
%.s: %.pas
	$(RHIDE_COMPILE.pas.s)
%.o: %.m
	$(RHIDE_COMPILE_OBJC)
%.o: %.f
	$(RHIDE_COMPILE.f.o)
%.o: %.for
	$(RHIDE_COMPILE.for.o)
%.o: %.F
	$(RHIDE_COMPILE.F.o)
%.o: %.fpp
	$(RHIDE_COMPILE.fpp.o)
%.o: %.asm
	$(RHIDE_COMPILE.asm.o)
%.o: %.nsm
	$(RHIDE_COMPILE.nsm.o)
%.o: %.adb
	$(RHIDE_COMPILE.adb.o)
%.i: %.c
	$(RHIDE_COMPILE.c.i)
%.s: %.c
	$(RHIDE_COMPILE.c.s)
%.ii: %.cc
	$(RHIDE_COMPILE.cc.ii)
%.s: %.cc
	$(RHIDE_COMPILE.cc.s)
%.ii: %.cpp
	$(RHIDE_COMPILE.cpp.ii)
%.s: %.cpp
	$(RHIDE_COMPILE.cpp.s)
%.ii: %.cxx
	$(RHIDE_COMPILE.cxx.ii)
%.s: %.cxx
	$(RHIDE_COMPILE.cxx.s)
%.ii: %.C
	$(RHIDE_COMPILE.C.ii)
%.s: %.C
	$(RHIDE_COMPILE.C.s)
include rhide.env
all::
DEPS_0= debobj/commands.o debobj/fstrcmp.o debobj/ideapp.o debobj/idebug.o\
	debobj/idecheck.o debobj/idecolor.o debobj/idecomp.o\
	debobj/idedebug.o debobj/idedefau.o debobj/idedial.o\
	debobj/ideenv.o debobj/ideexter.o debobj/ideflags.o\
	debobj/ideforma.o debobj/idegcc.o debobj/idehelp.o\
	debobj/idehints.o debobj/idemain.o debobj/idemak.o debobj/idemenu.o\
	debobj/idemsg.o debobj/ideopt.o debobj/ideprj.o debobj/idercs.o\
	debobj/idespec.o debobj/idestatu.o debobj/idestrm.o\
	debobj/idesupp.o debobj/idesynta.o debobj/ideuser.o\
	debobj/ideutil.o debobj/ideversi.o debobj/openedit.o\
	debobj/rhassert.o libide/libide.a librhgdb/librhgdb.a\
	librhuti/librhuti.a libtvgdb/libtvgdb.a libtvuti/libtvuti.a\
	tvdemo/libtvdem.a
NO_LINK=libide/libide.a librhgdb/librhgdb.a librhuti/librhuti.a\
	libtvgdb/libtvgdb.a libtvuti/libtvuti.a tvdemo/libtvdem.a
LINK_FILES=$(filter-out $(NO_LINK),$(DEPS_0))
idegc.exe:: $(DEPS_0)
	$(RHIDE_COMPILE_LINK)
DEPS_1=commands.cc $(RHIDESRC)/include/ideconst.h\
	$(RHIDESRC)/include/rhide.h $(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/tvutilfu.h
debobj/commands.o:: $(DEPS_1)
	$(RHIDE_COMPILE.cc.o)
DEPS_2=fstrcmp.c
debobj/fstrcmp.o:: $(DEPS_2)
	$(RHIDE_COMPILE.c.o)
DEPS_3=ideapp.cc $(RHIDESRC)/include/ideapp.h $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/tideedit.h\
	$(RHIDESRC)/libide/include/tproject.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/tvutilfu.h $(RHIDESRC)/pal.c
debobj/ideapp.o:: $(DEPS_3)
	$(RHIDE_COMPILE.cc.o)
DEPS_4=idebug.cc $(RHIDESRC)/include/rhide.h $(RHIDESRC)/librhuti/rhutils.h
debobj/idebug.o:: $(DEPS_4)
	$(RHIDE_COMPILE.cc.o)
DEPS_5=idecheck.cc $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/tvutilfu.h
debobj/idecheck.o:: $(DEPS_5)
	$(RHIDE_COMPILE.cc.o)
DEPS_6=idecolor.cc $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tidefile.h $(RHIDESRC)/pal.c
debobj/idecolor.o:: $(DEPS_6)
	$(RHIDE_COMPILE.cc.o)
DEPS_7=idecomp.cc $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/idefunct.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/toptions.h\
	$(RHIDESRC)/libide/include/tproject.h\
	$(RHIDESRC)/librhgdb/include/librhgdb.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/msgrec.h\
	$(RHIDESRC)/libtvuti/include/tdirlist.h\
	$(RHIDESRC)/libtvuti/include/tenterli.h\
	$(RHIDESRC)/libtvuti/include/tmsgcoll.h\
	$(RHIDESRC)/libtvuti/include/tmsglist.h\
	$(RHIDESRC)/libtvuti/include/tscollec.h\
	$(RHIDESRC)/libtvuti/include/tvutilfu.h
debobj/idecomp.o:: $(DEPS_7)
	$(RHIDE_COMPILE.cc.o)
DEPS_8=idedebug.cc $(RHIDESRC)/include/ideconst.h\
	$(RHIDESRC)/include/rhide.h $(RHIDESRC)/include/rhidehis.h\
	$(RHIDESRC)/libide/include/idecomma.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/idefunct.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/tideedit.h\
	$(RHIDESRC)/libide/include/tidefile.h\
	$(RHIDESRC)/libide/include/toptions.h\
	$(RHIDESRC)/libide/include/tproject.h\
	$(RHIDESRC)/librhgdb/include/librhgdb.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvgdb/include/libtvgdb.h\
	$(RHIDESRC)/libtvgdb/include/tdiswin.h\
	$(RHIDESRC)/libtvgdb/include/tvgdbfun.h\
	$(RHIDESRC)/libtvgdb/include/twatchli.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/tdirlist.h\
	$(RHIDESRC)/libtvuti/include/tenterli.h\
	$(RHIDESRC)/libtvuti/include/tparamli.h\
	$(RHIDESRC)/libtvuti/include/tscollec.h\
	$(RHIDESRC)/libtvuti/include/tvutilfu.h
debobj/idedebug.o:: $(DEPS_8)
	$(RHIDE_COMPILE.cc.o)
DEPS_9=idedefau.cc $(RHIDESRC)/include/flags/ada_opt.h\
	$(RHIDESRC)/include/flags/c_opt.h\
	$(RHIDESRC)/include/flags/cxx_opt.h\
	$(RHIDESRC)/include/flags/deb_opt.h\
	$(RHIDESRC)/include/flags/f_opt.h\
	$(RHIDESRC)/include/flags/fpc_opt.h\
	$(RHIDESRC)/include/flags/fpcreser.h\
	$(RHIDESRC)/include/flags/gpcreser.h\
	$(RHIDESRC)/include/flags/opt_opt.h\
	$(RHIDESRC)/include/flags/pas_opt.h\
	$(RHIDESRC)/include/flags/reserved.h\
	$(RHIDESRC)/include/flags/warn_opt.h $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tflagcol.h\
	$(RHIDESRC)/libide/include/tflagent.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/toptions.h\
	$(RHIDESRC)/libide/include/tproject.h
debobj/idedefau.o:: $(DEPS_9)
	$(RHIDE_COMPILE.cc.o)
DEPS_10=idedial.cc $(RHIDESRC)/include/ideconst.h\
	$(RHIDESRC)/include/rhide.h $(RHIDESRC)/include/rhidehis.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/tproject.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/tlbutton.h\
	$(RHIDESRC)/libtvuti/include/tvutilfu.h
debobj/idedial.o:: $(DEPS_10)
	$(RHIDE_COMPILE.cc.o)
DEPS_11=ideenv.cc $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/librhuti/rhutils.h
debobj/ideenv.o:: $(DEPS_11)
	$(RHIDE_COMPILE.cc.o)
DEPS_12=ideexter.cc $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/include/rhidehis.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/toptions.h\
	$(RHIDESRC)/libide/include/tproject.h\
	$(RHIDESRC)/librhgdb/include/librhgdb.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/msgrec.h\
	$(RHIDESRC)/libtvuti/include/tdirlist.h\
	$(RHIDESRC)/libtvuti/include/tmsgcoll.h\
	$(RHIDESRC)/libtvuti/include/tparamli.h\
	$(RHIDESRC)/libtvuti/include/tscollec.h
debobj/ideexter.o:: $(DEPS_12)
	$(RHIDE_COMPILE.cc.o)
DEPS_13=ideflags.cc $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tflagcol.h\
	$(RHIDESRC)/libide/include/tflagent.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/toptions.h\
	$(RHIDESRC)/libide/include/tproject.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/tdirlist.h\
	$(RHIDESRC)/libtvuti/include/tparamli.h\
	$(RHIDESRC)/libtvuti/include/tscollec.h
debobj/ideflags.o:: $(DEPS_13)
	$(RHIDE_COMPILE.cc.o)
DEPS_14=ideforma.cc $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tideedit.h\
	$(RHIDESRC)/libide/include/tidefile.h\
	$(RHIDESRC)/librhgdb/include/librhgdb.h
debobj/ideforma.o:: $(DEPS_14)
	$(RHIDE_COMPILE.cc.o)
DEPS_15=idegcc.cc $(RHIDESRC)/include/ideconst.h\
	$(RHIDESRC)/include/rhide.h $(RHIDESRC)/libide/include/idecomma.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/idefunct.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/tideedit.h\
	$(RHIDESRC)/libide/include/tidefile.h\
	$(RHIDESRC)/libide/include/toptions.h\
	$(RHIDESRC)/libide/include/tprjlist.h\
	$(RHIDESRC)/libide/include/tprjwind.h\
	$(RHIDESRC)/libide/include/tproject.h\
	$(RHIDESRC)/librhgdb/include/librhgdb.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/msgrec.h\
	$(RHIDESRC)/libtvuti/include/tcheckdi.h\
	$(RHIDESRC)/libtvuti/include/tdirlist.h\
	$(RHIDESRC)/libtvuti/include/tenterli.h\
	$(RHIDESRC)/libtvuti/include/tmsgcoll.h\
	$(RHIDESRC)/libtvuti/include/tparamli.h\
	$(RHIDESRC)/libtvuti/include/tscollec.h\
	$(RHIDESRC)/libtvuti/include/tvutilfu.h\
	$(RHIDESRC)/libtvuti/include/twindowl.h
debobj/idegcc.o:: $(DEPS_15)
	$(RHIDE_COMPILE.cc.o)
DEPS_16=idehelp.cc $(RHIDESRC)/include/ideconst.h\
	$(RHIDESRC)/include/rhide.h $(RHIDESRC)/libide/include/idecomma.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tideedit.h\
	$(RHIDESRC)/libide/include/tidefile.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/tvutilco.h\
	$(RHIDESRC)/libtvuti/include/tvutilfu.h
debobj/idehelp.o:: $(DEPS_16)
	$(RHIDE_COMPILE.cc.o)
DEPS_17=idehints.cc $(RHIDESRC)/include/ideconst.h\
	$(RHIDESRC)/include/rhide.h $(RHIDESRC)/libide/include/idecomma.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h
debobj/idehints.o:: $(DEPS_17)
	$(RHIDE_COMPILE.cc.o)
DEPS_18=idemain.cc $(RHIDESRC)/include/ideapp.h\
	$(RHIDESRC)/include/ideconst.h $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/include/rhidehis.h\
	$(RHIDESRC)/libide/include/idecomma.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/idefunct.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/tideedit.h\
	$(RHIDESRC)/libide/include/tidefile.h\
	$(RHIDESRC)/libide/include/toptions.h\
	$(RHIDESRC)/libide/include/tproject.h\
	$(RHIDESRC)/librhgdb/include/librhgdb.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvgdb/include/inspect.h\
	$(RHIDESRC)/libtvgdb/include/libtvgdb.h\
	$(RHIDESRC)/libtvgdb/include/tvgdbcom.h\
	$(RHIDESRC)/libtvgdb/include/tvgdbfun.h\
	$(RHIDESRC)/libtvgdb/include/tvgdbhis.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/msgrec.h\
	$(RHIDESRC)/libtvuti/include/tcheckdi.h\
	$(RHIDESRC)/libtvuti/include/tdirlist.h\
	$(RHIDESRC)/libtvuti/include/tenterli.h\
	$(RHIDESRC)/libtvuti/include/thintsta.h\
	$(RHIDESRC)/libtvuti/include/tmeminfo.h\
	$(RHIDESRC)/libtvuti/include/tmsgcoll.h\
	$(RHIDESRC)/libtvuti/include/tscollec.h\
	$(RHIDESRC)/libtvuti/include/tvutilco.h\
	$(RHIDESRC)/libtvuti/include/tvutilfu.h\
	$(RHIDESRC)/libtvuti/include/twindowl.h\
	$(RHIDESRC)/tvdemo/include/libtvdem.h
debobj/idemain.o:: $(DEPS_18)
	$(RHIDE_COMPILE.cc.o)
DEPS_19=idemak.cc $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/toptions.h\
	$(RHIDESRC)/libide/include/tproject.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/tdirlist.h\
	$(RHIDESRC)/libtvuti/include/tparamli.h\
	$(RHIDESRC)/libtvuti/include/tscollec.h
debobj/idemak.o:: $(DEPS_19)
	$(RHIDE_COMPILE.cc.o)
DEPS_20=idemenu.cc $(RHIDESRC)/include/ideapp.h\
	$(RHIDESRC)/include/ideconst.h $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/libide/include/idecomma.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h
debobj/idemenu.o:: $(DEPS_20)
	$(RHIDE_COMPILE.cc.o)
DEPS_21=idemsg.cc $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/tideedit.h\
	$(RHIDESRC)/libide/include/tproject.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/msgrec.h\
	$(RHIDESRC)/libtvuti/include/tenterli.h\
	$(RHIDESRC)/libtvuti/include/tmsgcoll.h\
	$(RHIDESRC)/libtvuti/include/tmsglist.h\
	$(RHIDESRC)/libtvuti/include/tscollec.h\
	$(RHIDESRC)/libtvuti/include/tvutilfu.h\
	$(RHIDESRC)/libtvuti/include/twindowl.h
debobj/idemsg.o:: $(DEPS_21)
	$(RHIDE_COMPILE.cc.o)
DEPS_22=ideopt.cc $(RHIDESRC)/include/ideconst.h\
	$(RHIDESRC)/include/rhide.h $(RHIDESRC)/include/rhidehis.h\
	$(RHIDESRC)/libide/include/idecomma.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/idefunct.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tflagcol.h\
	$(RHIDESRC)/libide/include/tflagent.h\
	$(RHIDESRC)/libide/include/tflaglis.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/tidefile.h\
	$(RHIDESRC)/libide/include/toptions.h\
	$(RHIDESRC)/libide/include/tprjlist.h\
	$(RHIDESRC)/libide/include/tprjwind.h\
	$(RHIDESRC)/libide/include/tproject.h\
	$(RHIDESRC)/librhgdb/include/librhgdb.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/tdirlist.h\
	$(RHIDESRC)/libtvuti/include/tenterch.h\
	$(RHIDESRC)/libtvuti/include/tenterin.h\
	$(RHIDESRC)/libtvuti/include/tenterra.h\
	$(RHIDESRC)/libtvuti/include/tintinpu.h\
	$(RHIDESRC)/libtvuti/include/tlbutton.h\
	$(RHIDESRC)/libtvuti/include/tparamli.h\
	$(RHIDESRC)/libtvuti/include/tscollec.h\
	$(RHIDESRC)/libtvuti/include/tvutilco.h\
	$(RHIDESRC)/libtvuti/include/tvutilfu.h
debobj/ideopt.o:: $(DEPS_22)
	$(RHIDE_COMPILE.cc.o)
DEPS_23=ideprj.cc $(RHIDESRC)/include/ideconst.h\
	$(RHIDESRC)/include/rhide.h $(RHIDESRC)/include/rhidehis.h\
	$(RHIDESRC)/libide/include/idecomma.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/idefunct.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/tideedit.h\
	$(RHIDESRC)/libide/include/tidefile.h\
	$(RHIDESRC)/libide/include/toptions.h\
	$(RHIDESRC)/libide/include/tprjlist.h\
	$(RHIDESRC)/libide/include/tprjwind.h\
	$(RHIDESRC)/libide/include/tproject.h\
	$(RHIDESRC)/librhgdb/include/librhgdb.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvgdb/include/libtvgdb.h\
	$(RHIDESRC)/libtvgdb/include/tvgdbfun.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/tdirlist.h\
	$(RHIDESRC)/libtvuti/include/tenterli.h\
	$(RHIDESRC)/libtvuti/include/tparamli.h\
	$(RHIDESRC)/libtvuti/include/tscollec.h\
	$(RHIDESRC)/libtvuti/include/tvutilfu.h\
	$(RHIDESRC)/libtvuti/include/twindowl.h
debobj/ideprj.o:: $(DEPS_23)
	$(RHIDE_COMPILE.cc.o)
DEPS_24=idercs.cc $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/idefunct.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/toptions.h\
	$(RHIDESRC)/libide/include/tproject.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/tdirlist.h
debobj/idercs.o:: $(DEPS_24)
	$(RHIDE_COMPILE.cc.o)
DEPS_25=idespec.cc $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/include/rhidehis.h\
	$(RHIDESRC)/libide/include/idecomma.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/idefunct.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tflagcol.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/toptions.h\
	$(RHIDESRC)/libide/include/tproject.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/tdirlist.h\
	$(RHIDESRC)/libtvuti/include/tenterli.h\
	$(RHIDESRC)/libtvuti/include/tparamli.h\
	$(RHIDESRC)/libtvuti/include/tscollec.h\
	$(RHIDESRC)/libtvuti/include/tvutilfu.h\
	$(RHIDESRC)/libtvuti/include/twindowl.h
debobj/idespec.o:: $(DEPS_25)
	$(RHIDE_COMPILE.cc.o)
DEPS_26=idestatu.cc $(RHIDESRC)/include/ideapp.h\
	$(RHIDESRC)/include/ideconst.h $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/libide/include/idecomma.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libtvgdb/include/libtvgdb.h\
	$(RHIDESRC)/libtvgdb/include/tvgdbcom.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/thintsta.h\
	$(RHIDESRC)/libtvuti/include/tscollec.h\
	$(RHIDESRC)/libtvuti/include/tvutilco.h\
	$(RHIDESRC)/libtvuti/include/tvutilfu.h
debobj/idestatu.o:: $(DEPS_26)
	$(RHIDE_COMPILE.cc.o)
DEPS_27=idestrm.cc
debobj/idestrm.o:: $(DEPS_27)
	$(RHIDE_COMPILE.cc.o)
DEPS_28=idesupp.cc $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/librhuti/rhutils.h
debobj/idesupp.o:: $(DEPS_28)
	$(RHIDE_COMPILE.cc.o)
DEPS_29=idesynta.cc $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/tproject.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/tenterin.h\
	$(RHIDESRC)/libtvuti/include/tintinpu.h\
	$(RHIDESRC)/libtvuti/include/tlbutton.h\
	$(RHIDESRC)/libtvuti/include/tparamli.h
debobj/idesynta.o:: $(DEPS_29)
	$(RHIDE_COMPILE.cc.o)
DEPS_30=ideuser.cc $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tfname.h $(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/msgrec.h\
	$(RHIDESRC)/libtvuti/include/tmsgcoll.h
debobj/ideuser.o:: $(DEPS_30)
	$(RHIDE_COMPILE.cc.o)
DEPS_31=ideutil.cc $(RHIDESRC)/include/rhide.h\
	$(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/idefunct.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/toptions.h\
	$(RHIDESRC)/libide/include/tproject.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/tdirlist.h\
	$(RHIDESRC)/libtvuti/include/tvutilfu.h
debobj/ideutil.o:: $(DEPS_31)
	$(RHIDE_COMPILE.cc.o)
DEPS_32=ideversi.cc
debobj/ideversi.o:: $(DEPS_32)
	$(RHIDE_COMPILE.cc.o)
DEPS_33=
.PHONY: libide/libide.gpr.force
all:: libide/libide.gpr.force
libide/libide.gpr.force:
	$(MAKE) -C libide/ -f libide.mak
DEPS_34=
.PHONY: librhgdb/librhgdb.gpr.force
all:: librhgdb/librhgdb.gpr.force
librhgdb/librhgdb.gpr.force:
	$(MAKE) -C librhgdb/ -f librhgdb.mak
DEPS_35=
.PHONY: librhuti/librhuti.gpr.force
all:: librhuti/librhuti.gpr.force
librhuti/librhuti.gpr.force:
	$(MAKE) -C librhuti/ -f librhuti.mak
DEPS_36=
.PHONY: libtvgdb/libtvgdb.gpr.force
all:: libtvgdb/libtvgdb.gpr.force
libtvgdb/libtvgdb.gpr.force:
	$(MAKE) -C libtvgdb/ -f libtvgdb.mak
DEPS_37=
.PHONY: libtvuti/libtvuti.gpr.force
all:: libtvuti/libtvuti.gpr.force
libtvuti/libtvuti.gpr.force:
	$(MAKE) -C libtvuti/ -f libtvuti.mak
DEPS_38=openedit.cc $(RHIDESRC)/include/ideapp.h\
	$(RHIDESRC)/include/rhide.h $(RHIDESRC)/libide/include/ideenums.h\
	$(RHIDESRC)/libide/include/idefunct.h\
	$(RHIDESRC)/libide/include/libide.h\
	$(RHIDESRC)/libide/include/tdepende.h\
	$(RHIDESRC)/libide/include/tfname.h\
	$(RHIDESRC)/libide/include/tideedit.h\
	$(RHIDESRC)/libide/include/toptions.h\
	$(RHIDESRC)/libide/include/tproject.h\
	$(RHIDESRC)/librhuti/rhutils.h\
	$(RHIDESRC)/libtvuti/include/libtvuti.h\
	$(RHIDESRC)/libtvuti/include/tdirlist.h\
	$(RHIDESRC)/libtvuti/include/tvutilco.h\
	$(RHIDESRC)/libtvuti/include/tvutilfu.h
debobj/openedit.o:: $(DEPS_38)
	$(RHIDE_COMPILE.cc.o)
DEPS_39=rhassert.c
debobj/rhassert.o:: $(DEPS_39)
	$(RHIDE_COMPILE.c.o)
DEPS_40=
.PHONY: tvdemo/libtvdem.gpr.force
all:: tvdemo/libtvdem.gpr.force
tvdemo/libtvdem.gpr.force:
	$(MAKE) -C tvdemo/ -f libtvdem.mak
all:: idegc.exe
