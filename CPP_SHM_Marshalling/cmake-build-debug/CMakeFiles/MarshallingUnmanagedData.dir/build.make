# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/dev/Downloads/clion-2018.2.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/dev/Downloads/clion-2018.2.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /VM_Shared/VM_Shared/repos/Utilities/MarshallingUnmanagedData

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /VM_Shared/VM_Shared/repos/Utilities/MarshallingUnmanagedData/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/MarshallingUnmanagedData.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MarshallingUnmanagedData.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MarshallingUnmanagedData.dir/flags.make

CMakeFiles/MarshallingUnmanagedData.dir/src/dnc_wrapper.cc.o: CMakeFiles/MarshallingUnmanagedData.dir/flags.make
CMakeFiles/MarshallingUnmanagedData.dir/src/dnc_wrapper.cc.o: ../src/dnc_wrapper.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/VM_Shared/VM_Shared/repos/Utilities/MarshallingUnmanagedData/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MarshallingUnmanagedData.dir/src/dnc_wrapper.cc.o"
	/opt/rh/devtoolset-7/root/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MarshallingUnmanagedData.dir/src/dnc_wrapper.cc.o -c /VM_Shared/VM_Shared/repos/Utilities/MarshallingUnmanagedData/src/dnc_wrapper.cc

CMakeFiles/MarshallingUnmanagedData.dir/src/dnc_wrapper.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MarshallingUnmanagedData.dir/src/dnc_wrapper.cc.i"
	/opt/rh/devtoolset-7/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /VM_Shared/VM_Shared/repos/Utilities/MarshallingUnmanagedData/src/dnc_wrapper.cc > CMakeFiles/MarshallingUnmanagedData.dir/src/dnc_wrapper.cc.i

CMakeFiles/MarshallingUnmanagedData.dir/src/dnc_wrapper.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MarshallingUnmanagedData.dir/src/dnc_wrapper.cc.s"
	/opt/rh/devtoolset-7/root/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /VM_Shared/VM_Shared/repos/Utilities/MarshallingUnmanagedData/src/dnc_wrapper.cc -o CMakeFiles/MarshallingUnmanagedData.dir/src/dnc_wrapper.cc.s

# Object files for target MarshallingUnmanagedData
MarshallingUnmanagedData_OBJECTS = \
"CMakeFiles/MarshallingUnmanagedData.dir/src/dnc_wrapper.cc.o"

# External object files for target MarshallingUnmanagedData
MarshallingUnmanagedData_EXTERNAL_OBJECTS =

MarshallingUnmanagedData: CMakeFiles/MarshallingUnmanagedData.dir/src/dnc_wrapper.cc.o
MarshallingUnmanagedData: CMakeFiles/MarshallingUnmanagedData.dir/build.make
MarshallingUnmanagedData: CMakeFiles/MarshallingUnmanagedData.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/VM_Shared/VM_Shared/repos/Utilities/MarshallingUnmanagedData/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MarshallingUnmanagedData"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MarshallingUnmanagedData.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MarshallingUnmanagedData.dir/build: MarshallingUnmanagedData

.PHONY : CMakeFiles/MarshallingUnmanagedData.dir/build

CMakeFiles/MarshallingUnmanagedData.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MarshallingUnmanagedData.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MarshallingUnmanagedData.dir/clean

CMakeFiles/MarshallingUnmanagedData.dir/depend:
	cd /VM_Shared/VM_Shared/repos/Utilities/MarshallingUnmanagedData/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /VM_Shared/VM_Shared/repos/Utilities/MarshallingUnmanagedData /VM_Shared/VM_Shared/repos/Utilities/MarshallingUnmanagedData /VM_Shared/VM_Shared/repos/Utilities/MarshallingUnmanagedData/cmake-build-debug /VM_Shared/VM_Shared/repos/Utilities/MarshallingUnmanagedData/cmake-build-debug /VM_Shared/VM_Shared/repos/Utilities/MarshallingUnmanagedData/cmake-build-debug/CMakeFiles/MarshallingUnmanagedData.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MarshallingUnmanagedData.dir/depend

