cmake_minimum_required(VERSION 3.0.2)
project(clearpath_logger_msgs)

## Find catkin macros and libraries
find_package(catkin REQUIRED
  COMPONENTS
    message_generation
    geometry_msgs
    nav_msgs
    sensor_msgs
    std_msgs
)

add_message_files(
  FILES
  Event.msg
  EventLog.msg
  EventLogs.msg
)

add_service_files(
  FILES
  DeleteLog.srv
  DownloadLog.srv
  GetAllLogs.srv
  RecordEvent.srv
  RecordCustomEvent.srv
  RecordErrorEvent.srv
  RecordLocationEvent.srv
  RecordMediaEvent.srv
  RecordPowerEvent.srv
  StartRecording.srv
  StopRecording.srv
)

generate_messages(
  DEPENDENCIES
  geometry_msgs
  nav_msgs
  sensor_msgs
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS
    message_runtime
    geometry_msgs
    nav_msgs
    sensor_msgs
    std_msgs
)

install(FILES
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
)
