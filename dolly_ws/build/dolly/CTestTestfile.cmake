# CMake generated Testfile for 
# Source directory: /home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly
# Build directory: /home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(lint_cmake "/usr/bin/python3" "-u" "/opt/ros/eloquent/share/ament_cmake_test/cmake/run_test.py" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly/test_results/dolly/lint_cmake.xunit.xml" "--package-name" "dolly" "--output-file" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly/ament_lint_cmake/lint_cmake.txt" "--command" "/opt/ros/eloquent/bin/ament_lint_cmake" "--xunit-file" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly/test_results/dolly/lint_cmake.xunit.xml")
set_tests_properties(lint_cmake PROPERTIES  LABELS "lint_cmake;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly" _BACKTRACE_TRIPLES "/opt/ros/eloquent/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/eloquent/share/ament_cmake_lint_cmake/cmake/ament_lint_cmake.cmake;41;ament_add_test;/opt/ros/eloquent/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;21;ament_lint_cmake;/opt/ros/eloquent/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;0;;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/eloquent/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/eloquent/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly/CMakeLists.txt;10;ament_package;/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly/CMakeLists.txt;0;")
add_test(xmllint "/usr/bin/python3" "-u" "/opt/ros/eloquent/share/ament_cmake_test/cmake/run_test.py" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly/test_results/dolly/xmllint.xunit.xml" "--package-name" "dolly" "--output-file" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly/ament_xmllint/xmllint.txt" "--command" "/opt/ros/eloquent/bin/ament_xmllint" "--xunit-file" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly/test_results/dolly/xmllint.xunit.xml")
set_tests_properties(xmllint PROPERTIES  LABELS "xmllint;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly" _BACKTRACE_TRIPLES "/opt/ros/eloquent/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/eloquent/share/ament_cmake_xmllint/cmake/ament_xmllint.cmake;50;ament_add_test;/opt/ros/eloquent/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;18;ament_xmllint;/opt/ros/eloquent/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;0;;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/eloquent/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/eloquent/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly/CMakeLists.txt;10;ament_package;/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly/CMakeLists.txt;0;")
