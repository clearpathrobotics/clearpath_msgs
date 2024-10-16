cmake_minimum_required(VERSION 3.8)
project(clearpath_dock_msgs)

## Find catkin macros and libraries

find_package(rosidl_default_generators REQUIRED)
find_package(ament_cmake REQUIRED)
find_package(clearpath_navigation_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
set(CMAKE_CXX_STANDARD 17)

rosidl_generate_interfaces(
    ${PROJECT_NAME}
        action/LocalDock.action
        action/LocalUndock.action
        action/NetworkDock.action
        action/RadiusDock.action
        msg/DockInfo.msg
        msg/DockProperties.msg
        msg/DockState.msg
        msg/TargetTrackerState.msg
        srv/AddDock.srv
        srv/ExportData.srv
        srv/GetDockByUuid.srv
        srv/ImportData.srv
        srv/RemoveDock.srv
        srv/SetDockLocationById.srv
        srv/SetDockLocationByName.srv
    DEPENDENCIES
        geometry_msgs
        clearpath_navigation_msgs
)

ament_package()

install(FILES
  DESTINATION include/${PROJECT_NAME}
)
