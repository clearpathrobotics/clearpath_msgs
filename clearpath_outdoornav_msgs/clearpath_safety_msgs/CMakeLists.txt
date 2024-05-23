cmake_minimum_required(VERSION 3.8)
project(clearpath_safety_msgs)

## Find catkin macros and libraries

find_package(rosidl_default_generators REQUIRED)
find_package(ament_cmake REQUIRED)
set(CMAKE_CXX_STANDARD 17)

rosidl_generate_interfaces(
    ${PROJECT_NAME}
        msg/AssistedTeleopState.msg
        msg/ObstacleMap.msg
        msg/Safety.msg
        msg/WatchdogStatus.msg
)

ament_package()

install(FILES
  DESTINATION include/${PROJECT_NAME}
)
