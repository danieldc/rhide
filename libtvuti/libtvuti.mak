# Copyright (C) 1996-2000 Robert H�hne, see COPYING.RH for details 
# This file is part of RHIDE. 
# d:/obj/rhide/gpr2mak.exe -d -r- -o - libtvuti.gpr
ifeq ($(strip $(RHIDESRC)),)
RHIDESRC=s:/rho/rhide
endif
ifeq ($(strip $(TVSRC)),)
TVSRC=g:/DJGPP/include/rhtvision
endif
vpath_src=$(RHIDESRC)/libtvuti
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
vpath_header=$(RHIDESRC)/libtvuti/include $(RHIDESRC)/librhuti\
	$(TVSRC)/include $(TVSRC)
vpath %.h $(vpath_header)
vpath %.hpp $(vpath_header)
vpath %.ha $(vpath_header)
vpath %.hd $(vpath_header)
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
RHIDE_LD_FPC=$(RHIDE_FPC) -E+
RHIDE_GNATBIND=gnatbind
RHIDE_RM=rm
RHIDE_ARFLAGS=rcs
RHIDE_TYPED_LIBS.f=g2c m
RHIDE_TYPED_LIBS.for=$(RHIDE_TYPED_LIBS.f)
RHIDE_TYPED_LIBS.F=$(RHIDE_TYPED_LIBS.f)
RHIDE_TYPED_LIBS.fpp=$(RHIDE_TYPED_LIBS.f)
RHIDE_TYPED_LIBS_GPC=gpc m
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
	$(OUTFILE) --automake $(RHIDE_GPC_FLAGS)  $(SOURCE_NAME)\
	$(LIBRARIES) $(LDFLAGS) $(RHIDE_LDFLAGS) $(RHIDE_LIBS)
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
RHIDE_COMPILE_LINK_FPC=echo 'separate linking for FPK is not\
	supported.Please define a main source file in Project/Primary\
	file.' 1>&2
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
RHIDE_TYPED_LIBS_DJGPP.cc=stdcxx
RHIDE_TYPED_LIBS_DJGPP.cxx=stdcxx
RHIDE_TYPED_LIBS_DJGPP.cpp=stdcxx
RHIDE_TYPED_LIBS_DJGPP.f=g2c m
RHIDE_STDINC_C_DJGPP=$(DJDIR)/include
RHIDE_STDINC_CXX_DJGPP=$(DJDIR)/lang/cxx 
RHIDE_STDINC_GCC_DJGPP=$(DJDIR)/lib
RHIDE_STDINC_C_Linux=/usr/include /usr/local/include
RHIDE_STDINC_CXX_Linux=/usr/include/g++ /usr/local/include/g++
RHIDE_STDINC_GCC_Linux=/usr/lib/gcc-lib /usr/local/lib/gcc-lib
RHIDE_STDINC_C=$(RHIDE_STDINC_C_$(RHIDE_OS))
RHIDE_STDINC_CXX=$(RHIDE_STDINC_CXX_$(RHIDE_OS)) $(TVSRC)/include $(SETSRC)
RHIDE_STDINC_GCC=$(RHIDE_STDINC_GCC_$(RHIDE_OS))
RHIDE_STDINC=$(RHIDE_STDINC_C) $(RHIDE_STDINC_CXX) $(RHIDE_STDINC_GCC)\
	$(RHIDE_STDINC_EXTRA) $(dir $(LIBGDB_H))
RHIDE_OS_CFLAGS_Linux=-D_GNU_SOURCE
RHIDE_OS_CFLAGS=$(RHIDE_OS_CFLAGS_$(RHIDE_OS)) $(RH_WARN)
RHIDE_OS_CXXFLAGS_Linux=-D_GNU_SOURCE
RHIDE_OS_CXXFLAGS_DJGPP=
RHIDE_OS_CXXFLAGS=$(RHIDE_OS_CXXFLAGS_$(RHIDE_OS)) $(RH_WARN)\
	-fno-exceptions -fno-rtti
RHIDE_LIBDIRS=$(addprefix -L,$(dir $(LIBGDB_A)) $(LIB_DIRS))
PCRE_OBJ=$(subst Linux,linux,$(SETOBJ)/$(RHIDE_OS))
RHIDE_STDINC_C_DJGPP=$(DJDIR)/include
RHIDE_STDINC_CXX_DJGPP=$(DJDIR)/lang/cxx 
RHIDE_STDINC_GCC_DJGPP=$(DJDIR)/lib
RHIDE_STDINC_C_Linux=/usr/include /usr/local/include
RHIDE_STDINC_CXX_Linux=/usr/include/g++ /usr/local/include/g++
RHIDE_STDINC_GCC_Linux=/usr/lib/gcc-lib /usr/local/lib/gcc-lib
RHIDE_STDINC_C=$(RHIDE_STDINC_C_$(RHIDE_OS))
RHIDE_STDINC_CXX=$(RHIDE_STDINC_CXX_$(RHIDE_OS)) $(TVSRC)/include $(SETSRC)
RHIDE_STDINC_GCC=$(RHIDE_STDINC_GCC_$(RHIDE_OS))
RHIDE_STDINC=$(RHIDE_STDINC_C) $(RHIDE_STDINC_CXX) $(RHIDE_STDINC_GCC)\
	$(RHIDE_STDINC_EXTRA) $(dir $(LIBGDB_H))
RHIDE_OS_CFLAGS_Linux=-D_GNU_SOURCE
RHIDE_OS_CFLAGS=$(RHIDE_OS_CFLAGS_$(RHIDE_OS)) $(RH_WARN)
RHIDE_OS_CXXFLAGS_Linux=-D_GNU_SOURCE
RHIDE_OS_CXXFLAGS_DJGPP=
RHIDE_OS_CXXFLAGS=$(RHIDE_OS_CXXFLAGS_$(RHIDE_OS)) $(RH_WARN)\
	-fno-exceptions -fno-rtti
RHIDE_LIBDIRS=$(addprefix -L,$(dir $(LIBGDB_A)) $(LIB_DIRS))
PCRE_OBJ=$(subst Linux,linux,$(SETOBJ)/$(RHIDE_OS))
INCLUDE_DIRS=$(RHIDESRC)/libtvuti/include $(RHIDESRC)/librhuti\
	$(TVSRC)/include $(TVSRC)
LIB_DIRS=
C_DEBUG_FLAGS=-g
C_OPT_FLAGS=-O2
C_WARN_FLAGS=
C_C_LANG_FLAGS=
C_CXX_LANG_FLAGS=
C_P_LANG_FLAGS=
C_FPC_LANG_FLAGS=
C_F_LANG_FLAGS=
C_ADA_LANG_FLAGS=
LIBS=tv
LD_EXTRA_FLAGS=
C_EXTRA_FLAGS=-DRHIDE
LOCAL_OPT=$(subst ___~~~___, ,$(subst $(notdir $<)___,,$(filter $(notdir\
	$<)___%,$(LOCAL_OPTIONS))))

OBJFILES=bigmessa.o cmd.o commands.o editdirl.o editpara.o execdial.o\
	history.o ihistory.o msgrec.o names/ndirlist.o names/nparamli.o\
	stream/sdirlist.o stream/sparamli.o tcheckdi.o tdirlist.o\
	tenterch.o tenterin.o tenterli.o tenterra.o tintinpu.o tlbutton.o\
	tmeminfo.o tmemstrm.o tmsgcoll.o tmsglist.o tparamli.o tscollec.o\
	twindowl.o windowli.o
ALL_OBJFILES=bigmessa.o cmd.o commands.o editdirl.o editpara.o execdial.o\
	history.o ihistory.o msgrec.o names/ndirlist.o names/nparamli.o\
	stream/sdirlist.o stream/sparamli.o tcheckdi.o tdirlist.o\
	tenterch.o tenterin.o tenterli.o tenterra.o tintinpu.o tlbutton.o\
	tmeminfo.o tmemstrm.o tmsgcoll.o tmsglist.o tparamli.o tscollec.o\
	twindowl.o windowli.o
LIBRARIES=
SOURCE_NAME=$<
OUTFILE=$@
SPECIAL_CFLAGS=
SPECIAL_LDFLAGS=
PROG_ARGS=
SRC_DIRS=$(RHIDESRC)/libtvuti
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

MAIN_TARGET=libtvuti.a
PROJECT_ITEMS=bigmessa.cc cmd.cc commands.cc editdirl.cc editpara.cc\
	execdial.cc history.cc ihistory.cc msgrec.cc names/names.gpr\
	stream/stream.gpr tcheckdi.cc tdirlist.cc tenterch.cc tenterin.cc\
	tenterli.cc tenterra.cc tintinpu.cc tlbutton.cc tmeminfo.cc\
	tmemstrm.cc tmsgcoll.cc tmsglist.cc tparamli.cc tscollec.cc\
	twindowl.cc windowli.cc
DEFAULT_MASK=*.[cgh]*
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
DEPS_0= bigmessa.o cmd.o commands.o editdirl.o editpara.o execdial.o\
	history.o ihistory.o msgrec.o names/ndirlist.o names/nparamli.o\
	stream/sdirlist.o stream/sparamli.o tcheckdi.o tdirlist.o\
	tenterch.o tenterin.o tenterli.o tenterra.o tintinpu.o tlbutton.o\
	tmeminfo.o tmemstrm.o tmsgcoll.o tmsglist.o tparamli.o tscollec.o\
	twindowl.o windowli.o 
NO_LINK=
LINK_FILES=$(filter-out $(NO_LINK),$(DEPS_0))
libtvuti.a:: $(DEPS_0)
	$(RHIDE_COMPILE_ARCHIVE)
DEPS_1=bigmessa.cc libtvuti.h tvutilfu.h
bigmessa.o:: $(DEPS_1)
	$(RHIDE_COMPILE.cc.o)
DEPS_2=cmd.cc libtvuti.h rhutils.h tvutilfu.h
cmd.o:: $(DEPS_2)
	$(RHIDE_COMPILE.cc.o)
DEPS_3=commands.cc libtvuti.h tvutilco.h tvutilfu.h
commands.o:: $(DEPS_3)
	$(RHIDE_COMPILE.cc.o)
DEPS_4=editdirl.cc libtvuti.h rhutils.h tdirlist.h tvutilfu.h
editdirl.o:: $(DEPS_4)
	$(RHIDE_COMPILE.cc.o)
DEPS_5=editpara.cc libtvuti.h rhutils.h tparamli.h tvutilfu.h
editpara.o:: $(DEPS_5)
	$(RHIDE_COMPILE.cc.o)
DEPS_6=execdial.cc libtvuti.h tvutilfu.h
execdial.o:: $(DEPS_6)
	$(RHIDE_COMPILE.cc.o)
DEPS_7=history.cc libtvuti.h tvutilfu.h
history.o:: $(DEPS_7)
	$(RHIDE_COMPILE.cc.o)
DEPS_8=ihistory.cc libtvuti.h tvutilfu.h
ihistory.o:: $(DEPS_8)
	$(RHIDE_COMPILE.cc.o)
DEPS_9=msgrec.cc libtvuti.h msgrec.h rhutils.h
msgrec.o:: $(DEPS_9)
	$(RHIDE_COMPILE.cc.o)
DEPS_10=
.PHONY: names/names.gpr.force
all:: names/names.gpr.force
names/names.gpr.force:
	$(MAKE) -C names/ -f names.mak
DEPS_11=
.PHONY: stream/stream.gpr.force
all:: stream/stream.gpr.force
stream/stream.gpr.force:
	$(MAKE) -C stream/ -f stream.mak
DEPS_12=tcheckdi.cc libtvuti.h tcheckdi.h
tcheckdi.o:: $(DEPS_12)
	$(RHIDE_COMPILE.cc.o)
DEPS_13=tdirlist.cc libtvuti.h rhutils.h tdirlist.h
tdirlist.o:: $(DEPS_13)
	$(RHIDE_COMPILE.cc.o)
DEPS_14=tenterch.cc libtvuti.h tenterch.h tvutilco.h
tenterch.o:: $(DEPS_14)
	$(RHIDE_COMPILE.cc.o)
DEPS_15=tenterin.cc libtvuti.h tenterin.h
tenterin.o:: $(DEPS_15)
	$(RHIDE_COMPILE.cc.o)
DEPS_16=tenterli.cc libtvuti.h tenterli.h tvutilco.h
tenterli.o:: $(DEPS_16)
	$(RHIDE_COMPILE.cc.o)
DEPS_17=tenterra.cc libtvuti.h tenterra.h tvutilco.h
tenterra.o:: $(DEPS_17)
	$(RHIDE_COMPILE.cc.o)
DEPS_18=tintinpu.cc libtvuti.h tenterin.h tintinpu.h
tintinpu.o:: $(DEPS_18)
	$(RHIDE_COMPILE.cc.o)
DEPS_19=tlbutton.cc libtvuti.h tlbutton.h
tlbutton.o:: $(DEPS_19)
	$(RHIDE_COMPILE.cc.o)
DEPS_20=tmeminfo.cc libtvuti.h tmeminfo.h
tmeminfo.o:: $(DEPS_20)
	$(RHIDE_COMPILE.cc.o)
DEPS_21=tmemstrm.cc libtvuti.h tmemstrm.h
tmemstrm.o:: $(DEPS_21)
	$(RHIDE_COMPILE.cc.o)
DEPS_22=tmsgcoll.cc libtvuti.h msgrec.h tmsgcoll.h
tmsgcoll.o:: $(DEPS_22)
	$(RHIDE_COMPILE.cc.o)
DEPS_23=tmsglist.cc libtvuti.h msgrec.h rhutils.h tenterli.h tmsgcoll.h\
	tmsglist.h tvutilco.h
tmsglist.o:: $(DEPS_23)
	$(RHIDE_COMPILE.cc.o)
DEPS_24=tparamli.cc libtvuti.h rhutils.h tparamli.h
tparamli.o:: $(DEPS_24)
	$(RHIDE_COMPILE.cc.o)
DEPS_25=tscollec.cc libtvuti.h tscollec.h
tscollec.o:: $(DEPS_25)
	$(RHIDE_COMPILE.cc.o)
DEPS_26=twindowl.cc libtvuti.h rhutils.h tenterli.h tscollec.h tvutilco.h\
	twindowl.h
twindowl.o:: $(DEPS_26)
	$(RHIDE_COMPILE.cc.o)
DEPS_27=windowli.cc libtvuti.h rhutils.h tenterli.h tmemstrm.h tscollec.h\
	tvutilco.h tvutilfu.h twindowl.h
windowli.o:: $(DEPS_27)
	$(RHIDE_COMPILE.cc.o)
all:: libtvuti.a
