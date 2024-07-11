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
    HeartbeatConfig.msg
    InclinationConfig.msg
    NodeletStatusConfig.msg
    NodeStatusConfig.msg
    ObstacleMap.msg
    Safety.msg
    TopicDataConfig.msg
    Watchdog.msg
    WatchdogConfig.msg
    WatchdogState.msg
    WatchdogStatus.msg
)

add_service_files(
  FILES
    UpdateInclinationWatchdog.srv
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
