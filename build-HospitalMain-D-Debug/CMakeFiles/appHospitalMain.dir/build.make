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

# Include any dependencies generated for this target.
include CMakeFiles/appHospitalMain.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/appHospitalMain.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/appHospitalMain.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/appHospitalMain.dir/flags.make

meta_types/qt6apphospitalmain_debug_metatypes.json.gen: /usr/lib/qt6/moc
meta_types/qt6apphospitalmain_debug_metatypes.json.gen: meta_types/appHospitalMain_json_file_list.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Running moc --collect-json for target appHospitalMain"
	/usr/lib/qt6/moc -o /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/meta_types/qt6apphospitalmain_debug_metatypes.json.gen --collect-json @/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/meta_types/appHospitalMain_json_file_list.txt
	/usr/bin/cmake -E copy_if_different /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/meta_types/qt6apphospitalmain_debug_metatypes.json.gen /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/meta_types/qt6apphospitalmain_debug_metatypes.json

meta_types/qt6apphospitalmain_debug_metatypes.json: meta_types/qt6apphospitalmain_debug_metatypes.json.gen
	@$(CMAKE_COMMAND) -E touch_nocreate meta_types/qt6apphospitalmain_debug_metatypes.json

apphospitalmain_qmltyperegistrations.cpp: qmltypes/appHospitalMain_foreign_types.txt
apphospitalmain_qmltyperegistrations.cpp: meta_types/qt6apphospitalmain_debug_metatypes.json
apphospitalmain_qmltyperegistrations.cpp: /usr/lib/qt6/qmltyperegistrar
apphospitalmain_qmltyperegistrations.cpp: /usr/lib/metatypes/qt6core_release_metatypes.json
apphospitalmain_qmltyperegistrations.cpp: /usr/lib/metatypes/qt6qml_release_metatypes.json
apphospitalmain_qmltyperegistrations.cpp: /usr/lib/metatypes/qt6network_release_metatypes.json
apphospitalmain_qmltyperegistrations.cpp: /usr/lib/metatypes/qt6quick_release_metatypes.json
apphospitalmain_qmltyperegistrations.cpp: /usr/lib/metatypes/qt6gui_release_metatypes.json
apphospitalmain_qmltyperegistrations.cpp: /usr/lib/metatypes/qt6qmlmodels_release_metatypes.json
apphospitalmain_qmltyperegistrations.cpp: /usr/lib/metatypes/qt6opengl_release_metatypes.json
apphospitalmain_qmltyperegistrations.cpp: CMakeFiles/appHospitalMain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Automatic QML type registration for target appHospitalMain"
	/usr/lib/qt6/qmltyperegistrar --generate-qmltypes=/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/HospitalMain/appHospitalMain.qmltypes --import-_appointmentSchedule=HospitalMain --major-version=1 --minor-version=0 @/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/qmltypes/appHospitalMain_foreign_types.txt -o /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/apphospitalmain_qmltyperegistrations.cpp /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/meta_types/qt6apphospitalmain_debug_metatypes.json
	/usr/bin/cmake -E make_directory /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.generated
	/usr/bin/cmake -E touch /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.generated/appHospitalMain.qmltypes

HospitalMain/appHospitalMain.qmltypes: apphospitalmain_qmltyperegistrations.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate HospitalMain/appHospitalMain.qmltypes

.rcc/qrc_qmake_HospitalMain.cpp: HospitalMain/qmldir
.rcc/qrc_qmake_HospitalMain.cpp: .rcc/qmake_HospitalMain.qrc
.rcc/qrc_qmake_HospitalMain.cpp: /usr/lib/qt6/rcc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Running rcc for resource qmake_HospitalMain"
	/usr/lib/qt6/rcc --output "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qrc_qmake_HospitalMain.cpp" --_appointmentSchedule qmake_HospitalMain "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qmake_HospitalMain.qrc"

.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp: /usr/lib/qt6/qmlcachegen
.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp: .rcc/qmlcache/appHospitalMain_qml_loader_file_list.rsp
.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp: .rcc/qmake_HospitalMain.qrc
.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp: .rcc/appHospitalMain_raw_qml_0.qrc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Generating .rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp"
	/usr/lib/qt6/qmlcachegen --resource-_appointmentSchedule qmlcache_appHospitalMain --resource /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qmake_HospitalMain.qrc --resource /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/appHospitalMain_raw_qml_0.qrc -o /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp @/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qmlcache/appHospitalMain_qml_loader_file_list.rsp

.rcc/qmlcache/appHospitalMain_main_qml.cpp: /usr/lib/qt6/qmlcachegen
.rcc/qmlcache/appHospitalMain_main_qml.cpp: /home/mrhedghog/CLionProjects/S&DPA_courseProject/HospitalMain/main.qml
.rcc/qmlcache/appHospitalMain_main_qml.cpp: .rcc/qmake_HospitalMain.qrc
.rcc/qmlcache/appHospitalMain_main_qml.cpp: .rcc/appHospitalMain_raw_qml_0.qrc
.rcc/qmlcache/appHospitalMain_main_qml.cpp: HospitalMain/appHospitalMain.qmltypes
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Generating .rcc/qmlcache/appHospitalMain_main_qml.cpp"
	/usr/bin/cmake -E make_directory /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qmlcache
	/usr/lib/qt6/qmlcachegen --resource-path /HospitalMain/main.qml -I /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug -i /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/HospitalMain/appHospitalMain.qmltypes --resource /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qmake_HospitalMain.qrc --resource /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/appHospitalMain_raw_qml_0.qrc -o /home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qmlcache/appHospitalMain_main_qml.cpp /home/mrhedghog/CLionProjects/S&DPA_courseProject/HospitalMain/main.qml

.rcc/qrc_appHospitalMain_raw_qml_0.cpp: /home/mrhedghog/CLionProjects/S&DPA_courseProject/HospitalMain/main.qml
.rcc/qrc_appHospitalMain_raw_qml_0.cpp: .rcc/appHospitalMain_raw_qml_0.qrc
.rcc/qrc_appHospitalMain_raw_qml_0.cpp: /usr/lib/qt6/rcc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Running rcc for resource appHospitalMain_raw_qml_0"
	/usr/lib/qt6/rcc --output "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qrc_appHospitalMain_raw_qml_0.cpp" --_appointmentSchedule appHospitalMain_raw_qml_0 "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/appHospitalMain_raw_qml_0.qrc"

CMakeFiles/appHospitalMain.dir/appHospitalMain_autogen/mocs_compilation.cpp.o: CMakeFiles/appHospitalMain.dir/flags.make
CMakeFiles/appHospitalMain.dir/appHospitalMain_autogen/mocs_compilation.cpp.o: appHospitalMain_autogen/mocs_compilation.cpp
CMakeFiles/appHospitalMain.dir/appHospitalMain_autogen/mocs_compilation.cpp.o: CMakeFiles/appHospitalMain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/appHospitalMain.dir/appHospitalMain_autogen/mocs_compilation.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appHospitalMain.dir/appHospitalMain_autogen/mocs_compilation.cpp.o -MF CMakeFiles/appHospitalMain.dir/appHospitalMain_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/appHospitalMain.dir/appHospitalMain_autogen/mocs_compilation.cpp.o -c "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/appHospitalMain_autogen/mocs_compilation.cpp"

CMakeFiles/appHospitalMain.dir/appHospitalMain_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/appHospitalMain.dir/appHospitalMain_autogen/mocs_compilation.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/appHospitalMain_autogen/mocs_compilation.cpp" > CMakeFiles/appHospitalMain.dir/appHospitalMain_autogen/mocs_compilation.cpp.i

CMakeFiles/appHospitalMain.dir/appHospitalMain_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/appHospitalMain.dir/appHospitalMain_autogen/mocs_compilation.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/appHospitalMain_autogen/mocs_compilation.cpp" -o CMakeFiles/appHospitalMain.dir/appHospitalMain_autogen/mocs_compilation.cpp.s

CMakeFiles/appHospitalMain.dir/main.cpp.o: CMakeFiles/appHospitalMain.dir/flags.make
CMakeFiles/appHospitalMain.dir/main.cpp.o: /home/mrhedghog/CLionProjects/S&DPA_courseProject/HospitalMain/main.cpp
CMakeFiles/appHospitalMain.dir/main.cpp.o: CMakeFiles/appHospitalMain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/appHospitalMain.dir/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appHospitalMain.dir/main.cpp.o -MF CMakeFiles/appHospitalMain.dir/main.cpp.o.d -o CMakeFiles/appHospitalMain.dir/main.cpp.o -c "/home/mrhedghog/CLionProjects/S&DPA_courseProject/HospitalMain/main.cpp"

CMakeFiles/appHospitalMain.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/appHospitalMain.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/mrhedghog/CLionProjects/S&DPA_courseProject/HospitalMain/main.cpp" > CMakeFiles/appHospitalMain.dir/main.cpp.i

CMakeFiles/appHospitalMain.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/appHospitalMain.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/mrhedghog/CLionProjects/S&DPA_courseProject/HospitalMain/main.cpp" -o CMakeFiles/appHospitalMain.dir/main.cpp.s

CMakeFiles/appHospitalMain.dir/apphospitalmain_qmltyperegistrations.cpp.o: CMakeFiles/appHospitalMain.dir/flags.make
CMakeFiles/appHospitalMain.dir/apphospitalmain_qmltyperegistrations.cpp.o: apphospitalmain_qmltyperegistrations.cpp
CMakeFiles/appHospitalMain.dir/apphospitalmain_qmltyperegistrations.cpp.o: CMakeFiles/appHospitalMain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/appHospitalMain.dir/apphospitalmain_qmltyperegistrations.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appHospitalMain.dir/apphospitalmain_qmltyperegistrations.cpp.o -MF CMakeFiles/appHospitalMain.dir/apphospitalmain_qmltyperegistrations.cpp.o.d -o CMakeFiles/appHospitalMain.dir/apphospitalmain_qmltyperegistrations.cpp.o -c "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/apphospitalmain_qmltyperegistrations.cpp"

CMakeFiles/appHospitalMain.dir/apphospitalmain_qmltyperegistrations.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/appHospitalMain.dir/apphospitalmain_qmltyperegistrations.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/apphospitalmain_qmltyperegistrations.cpp" > CMakeFiles/appHospitalMain.dir/apphospitalmain_qmltyperegistrations.cpp.i

CMakeFiles/appHospitalMain.dir/apphospitalmain_qmltyperegistrations.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/appHospitalMain.dir/apphospitalmain_qmltyperegistrations.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/apphospitalmain_qmltyperegistrations.cpp" -o CMakeFiles/appHospitalMain.dir/apphospitalmain_qmltyperegistrations.cpp.s

CMakeFiles/appHospitalMain.dir/.rcc/qrc_qmake_HospitalMain.cpp.o: CMakeFiles/appHospitalMain.dir/flags.make
CMakeFiles/appHospitalMain.dir/.rcc/qrc_qmake_HospitalMain.cpp.o: .rcc/qrc_qmake_HospitalMain.cpp
CMakeFiles/appHospitalMain.dir/.rcc/qrc_qmake_HospitalMain.cpp.o: CMakeFiles/appHospitalMain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/appHospitalMain.dir/.rcc/qrc_qmake_HospitalMain.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appHospitalMain.dir/.rcc/qrc_qmake_HospitalMain.cpp.o -MF CMakeFiles/appHospitalMain.dir/.rcc/qrc_qmake_HospitalMain.cpp.o.d -o CMakeFiles/appHospitalMain.dir/.rcc/qrc_qmake_HospitalMain.cpp.o -c "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qrc_qmake_HospitalMain.cpp"

CMakeFiles/appHospitalMain.dir/.rcc/qrc_qmake_HospitalMain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/appHospitalMain.dir/.rcc/qrc_qmake_HospitalMain.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qrc_qmake_HospitalMain.cpp" > CMakeFiles/appHospitalMain.dir/.rcc/qrc_qmake_HospitalMain.cpp.i

CMakeFiles/appHospitalMain.dir/.rcc/qrc_qmake_HospitalMain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/appHospitalMain.dir/.rcc/qrc_qmake_HospitalMain.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qrc_qmake_HospitalMain.cpp" -o CMakeFiles/appHospitalMain.dir/.rcc/qrc_qmake_HospitalMain.cpp.s

CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp.o: CMakeFiles/appHospitalMain.dir/flags.make
CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp.o: .rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp
CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp.o: CMakeFiles/appHospitalMain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp.o -MF CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp.o.d -o CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp.o -c "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp"

CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp" > CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp.i

CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp" -o CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp.s

CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_main_qml.cpp.o: CMakeFiles/appHospitalMain.dir/flags.make
CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_main_qml.cpp.o: .rcc/qmlcache/appHospitalMain_main_qml.cpp
CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_main_qml.cpp.o: CMakeFiles/appHospitalMain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_main_qml.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_main_qml.cpp.o -MF CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_main_qml.cpp.o.d -o CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_main_qml.cpp.o -c "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qmlcache/appHospitalMain_main_qml.cpp"

CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_main_qml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_main_qml.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qmlcache/appHospitalMain_main_qml.cpp" > CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_main_qml.cpp.i

CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_main_qml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_main_qml.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qmlcache/appHospitalMain_main_qml.cpp" -o CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_main_qml.cpp.s

CMakeFiles/appHospitalMain.dir/.rcc/qrc_appHospitalMain_raw_qml_0.cpp.o: CMakeFiles/appHospitalMain.dir/flags.make
CMakeFiles/appHospitalMain.dir/.rcc/qrc_appHospitalMain_raw_qml_0.cpp.o: .rcc/qrc_appHospitalMain_raw_qml_0.cpp
CMakeFiles/appHospitalMain.dir/.rcc/qrc_appHospitalMain_raw_qml_0.cpp.o: CMakeFiles/appHospitalMain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/appHospitalMain.dir/.rcc/qrc_appHospitalMain_raw_qml_0.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/appHospitalMain.dir/.rcc/qrc_appHospitalMain_raw_qml_0.cpp.o -MF CMakeFiles/appHospitalMain.dir/.rcc/qrc_appHospitalMain_raw_qml_0.cpp.o.d -o CMakeFiles/appHospitalMain.dir/.rcc/qrc_appHospitalMain_raw_qml_0.cpp.o -c "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qrc_appHospitalMain_raw_qml_0.cpp"

CMakeFiles/appHospitalMain.dir/.rcc/qrc_appHospitalMain_raw_qml_0.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/appHospitalMain.dir/.rcc/qrc_appHospitalMain_raw_qml_0.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qrc_appHospitalMain_raw_qml_0.cpp" > CMakeFiles/appHospitalMain.dir/.rcc/qrc_appHospitalMain_raw_qml_0.cpp.i

CMakeFiles/appHospitalMain.dir/.rcc/qrc_appHospitalMain_raw_qml_0.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/appHospitalMain.dir/.rcc/qrc_appHospitalMain_raw_qml_0.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/.rcc/qrc_appHospitalMain_raw_qml_0.cpp" -o CMakeFiles/appHospitalMain.dir/.rcc/qrc_appHospitalMain_raw_qml_0.cpp.s

# Object files for target appHospitalMain
appHospitalMain_OBJECTS = \
"CMakeFiles/appHospitalMain.dir/appHospitalMain_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/appHospitalMain.dir/main.cpp.o" \
"CMakeFiles/appHospitalMain.dir/apphospitalmain_qmltyperegistrations.cpp.o" \
"CMakeFiles/appHospitalMain.dir/.rcc/qrc_qmake_HospitalMain.cpp.o" \
"CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp.o" \
"CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_main_qml.cpp.o" \
"CMakeFiles/appHospitalMain.dir/.rcc/qrc_appHospitalMain_raw_qml_0.cpp.o"

# External object files for target appHospitalMain
appHospitalMain_EXTERNAL_OBJECTS =

appHospitalMain: CMakeFiles/appHospitalMain.dir/appHospitalMain_autogen/mocs_compilation.cpp.o
appHospitalMain: CMakeFiles/appHospitalMain.dir/main.cpp.o
appHospitalMain: CMakeFiles/appHospitalMain.dir/apphospitalmain_qmltyperegistrations.cpp.o
appHospitalMain: CMakeFiles/appHospitalMain.dir/.rcc/qrc_qmake_HospitalMain.cpp.o
appHospitalMain: CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp.o
appHospitalMain: CMakeFiles/appHospitalMain.dir/.rcc/qmlcache/appHospitalMain_main_qml.cpp.o
appHospitalMain: CMakeFiles/appHospitalMain.dir/.rcc/qrc_appHospitalMain_raw_qml_0.cpp.o
appHospitalMain: CMakeFiles/appHospitalMain.dir/build.make
appHospitalMain: /usr/lib/libQt6Quick.so.6.2.2
appHospitalMain: /usr/lib/libQt6QmlModels.so.6.2.2
appHospitalMain: /usr/lib/libQt6Qml.so.6.2.2
appHospitalMain: /usr/lib/libQt6Network.so.6.2.2
appHospitalMain: /usr/lib/libQt6OpenGL.so.6.2.2
appHospitalMain: /usr/lib/libQt6Gui.so.6.2.2
appHospitalMain: /usr/lib/libQt6Core.so.6.2.2
appHospitalMain: /usr/lib/libGLX.so
appHospitalMain: /usr/lib/libOpenGL.so
appHospitalMain: CMakeFiles/appHospitalMain.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable appHospitalMain"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/appHospitalMain.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/appHospitalMain.dir/build: appHospitalMain
.PHONY : CMakeFiles/appHospitalMain.dir/build

CMakeFiles/appHospitalMain.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/appHospitalMain.dir/cmake_clean.cmake
.PHONY : CMakeFiles/appHospitalMain.dir/clean

CMakeFiles/appHospitalMain.dir/depend: .rcc/qmlcache/appHospitalMain_main_qml.cpp
CMakeFiles/appHospitalMain.dir/depend: .rcc/qmlcache/appHospitalMain_qmlcache_loader.cpp
CMakeFiles/appHospitalMain.dir/depend: .rcc/qrc_appHospitalMain_raw_qml_0.cpp
CMakeFiles/appHospitalMain.dir/depend: .rcc/qrc_qmake_HospitalMain.cpp
CMakeFiles/appHospitalMain.dir/depend: HospitalMain/appHospitalMain.qmltypes
CMakeFiles/appHospitalMain.dir/depend: apphospitalmain_qmltyperegistrations.cpp
CMakeFiles/appHospitalMain.dir/depend: meta_types/qt6apphospitalmain_debug_metatypes.json
CMakeFiles/appHospitalMain.dir/depend: meta_types/qt6apphospitalmain_debug_metatypes.json.gen
	cd "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/mrhedghog/CLionProjects/S&DPA_courseProject/HospitalMain" "/home/mrhedghog/CLionProjects/S&DPA_courseProject/HospitalMain" "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug" "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug" "/home/mrhedghog/CLionProjects/S&DPA_courseProject/build-HospitalMain-D-Debug/CMakeFiles/appHospitalMain.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/appHospitalMain.dir/depend

