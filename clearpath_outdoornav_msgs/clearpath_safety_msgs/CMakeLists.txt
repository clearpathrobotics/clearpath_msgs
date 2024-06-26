cmake_minimum_required(VERSION 3.0.2)
project(clearpath_safety_msgs)

## Find catkin macros and libraries
find_package(catkin REQUIRED
  COMPONENTS
    message_generation
    std_msgs
)

add_message_files(
  FILES
    AssistedTeleopState.msg
    DeviceWatchdogList.msg
    ObstacleMap.msg
    Safety.msg
    Watchdog.msg
    WatchdogState.msg
)

add_service_files(
  FILES
    UpdateRecovery.srv
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
