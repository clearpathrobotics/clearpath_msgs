cmake_minimum_required(VERSION 3.0.2)
project(cpr_dock_msgs)

## Find catkin macros and libraries
find_package(catkin REQUIRED
  COMPONENTS
    actionlib_msgs
    geographic_msgs
    geometry_msgs
    message_generation
    std_msgs
)

add_message_files(
  FILES
    DockLocation.msg
    DockProperties.msg
)

## Add actions
add_action_files(
  DIRECTORY
    action
  FILES
    ApproachDock.action
    Dock.action
    Predock.action
)

generate_messages(
  DEPENDENCIES
    actionlib_msgs
    geographic_msgs
    geometry_msgs
    std_msgs
)

catkin_package(
  CATKIN_DEPENDS
    geographic_msgs
    geometry_msgs
    message_runtime
    std_msgs
)

install(FILES
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
)
