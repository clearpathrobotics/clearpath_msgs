cmake_minimum_required(VERSION 3.0.2)
project(clearpath_control_msgs)

## Find catkin macros and libraries
find_package(catkin REQUIRED
  COMPONENTS
    message_generation
    std_msgs
)

add_message_files(
  FILES
    AutonomySync.msg
    ControlSelectionState.msg
    ControlState.msg
    ControlMode.msg
)

add_service_files(
  FILES
    SetControlMode.srv
)

generate_messages(
  DEPENDENCIES
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
