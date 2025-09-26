##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=CPP_OOP_PROJ
ConfigurationName      :=Debug
WorkspaceConfiguration :=Debug
WorkspacePath          :=E:/CCourse/Workspaces/WorkspaceCPP
ProjectPath            :=E:/CCourse/Workspaces/WorkspaceCPP/CPP_OOP_PROJ
IntermediateDirectory  :=../build-$(WorkspaceConfiguration)/CPP_OOP_PROJ
OutDir                 :=$(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=marek
Date                   :=9/26/2025
CodeLitePath           :="C:/Program Files/CodeLite"
MakeDirCommand         :=mkdir -p
LinkerName             :=C:/cygwin64/bin/g++.exe
SharedObjectLinkerName :=C:/cygwin64/bin/gcc.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputDirectory        :=E:/CCourse/Workspaces/WorkspaceCPP/build-$(WorkspaceConfiguration)/bin
OutputFile             :=..\build-$(WorkspaceConfiguration)\bin\$(ProjectName).exe
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
RcCmpOptions           := 
RcCompilerName         :=windres
LinkOptions            :=  -O0
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)SDL2 
ArLibs                 :=  "SDL2" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch). $(LibraryPathSwitch)Debug 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overridden using an environment variable
##
AR       := C:/cygwin64/bin/ar.exe rcu
CXX      := C:/cygwin64/bin/g++.exe
CC       := C:/cygwin64/bin/gcc.exe
CXXFLAGS :=  -g -Wall $(Preprocessors)
CFLAGS   :=   $(Preprocessors)
ASFLAGS  := 
AS       := C:/cygwin64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/shape.cpp$(ObjectSuffix) $(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IntermediateDirectory)/sdl_app.cpp$(ObjectSuffix) $(IntermediateDirectory)/triangle.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) "$(IntermediateDirectory)"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "$(IntermediateDirectory)"
	@$(MakeDirCommand) "$(OutputDirectory)"

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "$(IntermediateDirectory)"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/shape.cpp$(ObjectSuffix): shape.cpp $(IntermediateDirectory)/shape.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "E:/CCourse/Workspaces/WorkspaceCPP/CPP_OOP_PROJ/shape.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/shape.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/shape.cpp$(DependSuffix): shape.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/shape.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/shape.cpp$(DependSuffix) -MM shape.cpp

$(IntermediateDirectory)/shape.cpp$(PreprocessSuffix): shape.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/shape.cpp$(PreprocessSuffix) shape.cpp

$(IntermediateDirectory)/main.cpp$(ObjectSuffix): main.cpp $(IntermediateDirectory)/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "E:/CCourse/Workspaces/WorkspaceCPP/CPP_OOP_PROJ/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/main.cpp$(DependSuffix) -MM main.cpp

$(IntermediateDirectory)/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.cpp$(PreprocessSuffix) main.cpp

$(IntermediateDirectory)/sdl_app.cpp$(ObjectSuffix): sdl_app.cpp $(IntermediateDirectory)/sdl_app.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "E:/CCourse/Workspaces/WorkspaceCPP/CPP_OOP_PROJ/sdl_app.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/sdl_app.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/sdl_app.cpp$(DependSuffix): sdl_app.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/sdl_app.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/sdl_app.cpp$(DependSuffix) -MM sdl_app.cpp

$(IntermediateDirectory)/sdl_app.cpp$(PreprocessSuffix): sdl_app.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/sdl_app.cpp$(PreprocessSuffix) sdl_app.cpp

$(IntermediateDirectory)/triangle.cpp$(ObjectSuffix): triangle.cpp $(IntermediateDirectory)/triangle.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "E:/CCourse/Workspaces/WorkspaceCPP/CPP_OOP_PROJ/triangle.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/triangle.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/triangle.cpp$(DependSuffix): triangle.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/triangle.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/triangle.cpp$(DependSuffix) -MM triangle.cpp

$(IntermediateDirectory)/triangle.cpp$(PreprocessSuffix): triangle.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/triangle.cpp$(PreprocessSuffix) triangle.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


