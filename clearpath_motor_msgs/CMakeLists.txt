cmake_minimum_required(VERSION 3.5)
project(clearpath_motor_msgs)

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(action_msgs REQUIRED)
find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  action/LynxCalibrate.action
  action/LynxUpdate.action
  msg/LynxDebug.msg
  msg/LynxFeedback.msg
  msg/LynxMultiDebug.msg
  msg/LynxMultiFeedback.msg
  msg/LynxMultiStatus.msg
  msg/LynxStatus.msg
  msg/LynxSystemProtection.msg
  msg/PumaFeedback.msg
  msg/PumaStatus.msg
  msg/PumaMultiFeedback.msg
  msg/PumaMultiStatus.msg
  DEPENDENCIES action_msgs std_msgs builtin_interfaces
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()
