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

# Utility rule file for appHospitalMain_tooling.

# Include any custom commands dependencies for this target.
include CMakeFiles/appHospitalMain_tooling.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/appHospitalMain_tooling.dir/progress.make

HospitalMain/main.qml: /home/mrhedghog/CLionProjects/S&DPA_courseProject/HospitalMain/main.qml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Generating HospitalMain/main.qml"
	cd "/home/mrhedghog/CLionProjects/S&DPA_courseProject/HospitalMain" && /usr/bin/cmake -E copy main.qml /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/HospitalMain/main.qml

appHospitalMain_tooling: HospitalMain/main.qml
appHospitalMain_tooling: CMakeFiles/appHospitalMain_tooling.dir/build.make
.PHONY : appHospitalMain_tooling

# Rule to build all files generated by this target.
CMakeFiles/appHospitalMain_tooling.dir/build: appHospitalMain_tooling
.PHONY : CMakeFiles/appHospitalMain_tooling.dir/build

CMakeFiles/appHospitalMain_tooling.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/appHospitalMain_tooling.dir/cmake_clean.cmake
.PHONY : CMakeFiles/appHospitalMain_tooling.dir/clean

CMakeFiles/appHospitalMain_tooling.dir/depend:
	cd "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/mrhedghog/CLionProjects/S&DPA_courseProject/HospitalMain" "/home/mrhedghog/CLionProjects/S&DPA_courseProject/HospitalMain" "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug" "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug" "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles/appHospitalMain_tooling.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/appHospitalMain_tooling.dir/depend

