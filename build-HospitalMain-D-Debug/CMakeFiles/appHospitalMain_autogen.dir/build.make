# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/mrhedghog/CLionProjects/S&DPA_courseProject/HospitalMain"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug"

# Utility rule file for appHospitalMain_autogen.

# Include any custom commands dependencies for this target.
include CMakeFiles/appHospitalMain_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/appHospitalMain_autogen.dir/progress.make

CMakeFiles/appHospitalMain_autogen: .rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target appHospitalMain"
	/usr/bin/cmake -E cmake_autogen "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles/appHospitalMain_autogen.dir/AutogenInfo.json" Debug

.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp: /usr/lib/qt6/qmlcachegen
.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp: .rcc/qmlcache/appHospitalMain_qml_loader_file_list.rsp
.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp: .rcc/qmake_HospitalMain.qrc
.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp: .rcc/appHospitalMain_raw_qml_0.qrc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Generating .rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp"
	/usr/lib/qt6/qmlcachegen --resource-_appointmentSchedule qmlcache_appHospitalMain --resource /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qmake_HospitalMain.qrc --resource /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/appHospitalMain_raw_qml_0.qrc -o /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp @/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qmlcache/appHospitalMain_qml_loader_file_list.rsp

appHospitalMain_autogen: .rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp
appHospitalMain_autogen: CMakeFiles/appHospitalMain_autogen
appHospitalMain_autogen: CMakeFiles/appHospitalMain_autogen.dir/build.make
.PHONY : appHospitalMain_autogen

# Rule to build all files generated by this target.
CMakeFiles/appHospitalMain_autogen.dir/build: appHospitalMain_autogen
.PHONY : CMakeFiles/appHospitalMain_autogen.dir/build

CMakeFiles/appHospitalMain_autogen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/appHospitalMain_autogen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/appHospitalMain_autogen.dir/clean

CMakeFiles/appHospitalMain_autogen.dir/depend:
	cd "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/mrhedghog/CLionProjects/S&DPA_courseProject/HospitalMain" "/home/mrhedghog/CLionProjects/S&DPA_courseProject/HospitalMain" "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug" "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug" "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles/appHospitalMain_autogen.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/appHospitalMain_autogen.dir/depend

