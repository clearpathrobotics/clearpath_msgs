cmake_minimum_required(VERSION 3.0.2)
project(clearpath_dock_msgs)

## Find catkin macros and libraries
find_package(catkin REQUIRED
  COMPONENTS
    actionlib_msgs
    message_generation
    geometry_msgs
    std_msgs
)

add_message_files(
  FILES
    DockInfo.msg
    DockProperties.msg
    DockState.msg
    TargetTrackerState.msg
)

add_service_files(
  FILES
    AddDock.srv
    ExportData.srv
    GetDockByUuid.srv
    ImportData.srv
    RemoveDock.srv
    SetDockLocationById.srv
    SetDockLocationByName.srv
)

## Add actions
add_action_files(
  DIRECTORY
    action
  FILES
    Dock.action
    Undock.action
)

generate_messages(
  DEPENDENCIES
    actionlib_msgs
    geometry_msgs
    std_msgs
)

catkin_package(
  CATKIN_DEPENDS
    message_runtime
)

install(FILES
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
)
