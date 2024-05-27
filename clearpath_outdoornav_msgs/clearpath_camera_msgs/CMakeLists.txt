cmake_minimum_required(VERSION 3.0.2)
project(clearpath_camera_msgs)

## Find catkin macros and libraries
find_package(catkin REQUIRED
  COMPONENTS
    actionlib_msgs
    message_generation
    std_msgs
)

#add_message_files(
#  FILES
#)

## Add actions
add_action_files(
  DIRECTORY
    action
  FILES
    InspectPOI.action
)

generate_messages(
  DEPENDENCIES
    actionlib_msgs
    std_msgs
)

catkin_package(
  CATKIN_DEPENDS
    message_runtime
    std_msgs
)

install(FILES
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
)
