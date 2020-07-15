# CMake generated Testfile for 
# Source directory: /home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow
# Build directory: /home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(copyright "/usr/bin/python3" "-u" "/opt/ros/eloquent/share/ament_cmake_test/cmake/run_test.py" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/test_results/dolly_follow/copyright.xunit.xml" "--package-name" "dolly_follow" "--output-file" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/ament_copyright/copyright.txt" "--command" "/opt/ros/eloquent/bin/ament_copyright" "--xunit-file" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/test_results/dolly_follow/copyright.xunit.xml")
set_tests_properties(copyright PROPERTIES  LABELS "copyright;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow" _BACKTRACE_TRIPLES "/opt/ros/eloquent/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/eloquent/share/ament_cmake_copyright/cmake/ament_copyright.cmake;41;ament_add_test;/opt/ros/eloquent/share/ament_cmake_copyright/cmake/ament_cmake_copyright_lint_hook.cmake;31;ament_copyright;/opt/ros/eloquent/share/ament_cmake_copyright/cmake/ament_cmake_copyright_lint_hook.cmake;0;;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/eloquent/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/eloquent/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow/CMakeLists.txt;35;ament_package;/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow/CMakeLists.txt;0;")
add_test(cppcheck "/usr/bin/python3" "-u" "/opt/ros/eloquent/share/ament_cmake_test/cmake/run_test.py" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/test_results/dolly_follow/cppcheck.xunit.xml" "--package-name" "dolly_follow" "--output-file" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/ament_cppcheck/cppcheck.txt" "--command" "/opt/ros/eloquent/bin/ament_cppcheck" "--xunit-file" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/test_results/dolly_follow/cppcheck.xunit.xml")
set_tests_properties(cppcheck PROPERTIES  LABELS "cppcheck;linter" TIMEOUT "120" WORKING_DIRECTORY "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow" _BACKTRACE_TRIPLES "/opt/ros/eloquent/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/eloquent/share/ament_cmake_cppcheck/cmake/ament_cppcheck.cmake;55;ament_add_test;/opt/ros/eloquent/share/ament_cmake_cppcheck/cmake/ament_cmake_cppcheck_lint_hook.cmake;67;ament_cppcheck;/opt/ros/eloquent/share/ament_cmake_cppcheck/cmake/ament_cmake_cppcheck_lint_hook.cmake;0;;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/eloquent/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/eloquent/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow/CMakeLists.txt;35;ament_package;/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow/CMakeLists.txt;0;")
add_test(cpplint "/usr/bin/python3" "-u" "/opt/ros/eloquent/share/ament_cmake_test/cmake/run_test.py" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/test_results/dolly_follow/cpplint.xunit.xml" "--package-name" "dolly_follow" "--output-file" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/ament_cpplint/cpplint.txt" "--command" "/opt/ros/eloquent/bin/ament_cpplint" "--xunit-file" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/test_results/dolly_follow/cpplint.xunit.xml")
set_tests_properties(cpplint PROPERTIES  LABELS "cpplint;linter" TIMEOUT "120" WORKING_DIRECTORY "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow" _BACKTRACE_TRIPLES "/opt/ros/eloquent/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/eloquent/share/ament_cmake_cpplint/cmake/ament_cpplint.cmake;63;ament_add_test;/opt/ros/eloquent/share/ament_cmake_cpplint/cmake/ament_cmake_cpplint_lint_hook.cmake;27;ament_cpplint;/opt/ros/eloquent/share/ament_cmake_cpplint/cmake/ament_cmake_cpplint_lint_hook.cmake;0;;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/eloquent/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/eloquent/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow/CMakeLists.txt;35;ament_package;/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow/CMakeLists.txt;0;")
add_test(lint_cmake "/usr/bin/python3" "-u" "/opt/ros/eloquent/share/ament_cmake_test/cmake/run_test.py" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/test_results/dolly_follow/lint_cmake.xunit.xml" "--package-name" "dolly_follow" "--output-file" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/ament_lint_cmake/lint_cmake.txt" "--command" "/opt/ros/eloquent/bin/ament_lint_cmake" "--xunit-file" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/test_results/dolly_follow/lint_cmake.xunit.xml")
set_tests_properties(lint_cmake PROPERTIES  LABELS "lint_cmake;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow" _BACKTRACE_TRIPLES "/opt/ros/eloquent/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/eloquent/share/ament_cmake_lint_cmake/cmake/ament_lint_cmake.cmake;41;ament_add_test;/opt/ros/eloquent/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;21;ament_lint_cmake;/opt/ros/eloquent/share/ament_cmake_lint_cmake/cmake/ament_cmake_lint_cmake_lint_hook.cmake;0;;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/eloquent/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/eloquent/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow/CMakeLists.txt;35;ament_package;/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow/CMakeLists.txt;0;")
add_test(uncrustify "/usr/bin/python3" "-u" "/opt/ros/eloquent/share/ament_cmake_test/cmake/run_test.py" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/test_results/dolly_follow/uncrustify.xunit.xml" "--package-name" "dolly_follow" "--output-file" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/ament_uncrustify/uncrustify.txt" "--command" "/opt/ros/eloquent/bin/ament_uncrustify" "--xunit-file" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/test_results/dolly_follow/uncrustify.xunit.xml")
set_tests_properties(uncrustify PROPERTIES  LABELS "uncrustify;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow" _BACKTRACE_TRIPLES "/opt/ros/eloquent/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/eloquent/share/ament_cmake_uncrustify/cmake/ament_uncrustify.cmake;47;ament_add_test;/opt/ros/eloquent/share/ament_cmake_uncrustify/cmake/ament_cmake_uncrustify_lint_hook.cmake;27;ament_uncrustify;/opt/ros/eloquent/share/ament_cmake_uncrustify/cmake/ament_cmake_uncrustify_lint_hook.cmake;0;;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/eloquent/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/eloquent/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow/CMakeLists.txt;35;ament_package;/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow/CMakeLists.txt;0;")
add_test(xmllint "/usr/bin/python3" "-u" "/opt/ros/eloquent/share/ament_cmake_test/cmake/run_test.py" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/test_results/dolly_follow/xmllint.xunit.xml" "--package-name" "dolly_follow" "--output-file" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/ament_xmllint/xmllint.txt" "--command" "/opt/ros/eloquent/bin/ament_xmllint" "--xunit-file" "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/build/dolly_follow/test_results/dolly_follow/xmllint.xunit.xml")
set_tests_properties(xmllint PROPERTIES  LABELS "xmllint;linter" TIMEOUT "60" WORKING_DIRECTORY "/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow" _BACKTRACE_TRIPLES "/opt/ros/eloquent/share/ament_cmake_test/cmake/ament_add_test.cmake;118;add_test;/opt/ros/eloquent/share/ament_cmake_xmllint/cmake/ament_xmllint.cmake;50;ament_add_test;/opt/ros/eloquent/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;18;ament_xmllint;/opt/ros/eloquent/share/ament_cmake_xmllint/cmake/ament_cmake_xmllint_lint_hook.cmake;0;;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/eloquent/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;21;ament_execute_extensions;/opt/ros/eloquent/share/ament_lint_auto/cmake/ament_lint_auto_package_hook.cmake;0;;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_execute_extensions.cmake;48;include;/opt/ros/eloquent/share/ament_cmake_core/cmake/core/ament_package.cmake;66;ament_execute_extensions;/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow/CMakeLists.txt;35;ament_package;/home/hema/ankhrobotics.github.io/Lectures/ros2_course/dolly_ws/src/dolly/dolly_follow/CMakeLists.txt;0;")
