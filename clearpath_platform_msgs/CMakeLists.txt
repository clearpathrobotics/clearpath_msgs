cmake_minimum_required(VERSION 3.5)
project(clearpath_platform_msgs)

find_package(catkin REQUIRED COMPONENTS
  genmsg
  std_msgs
)

add_message_files(
  FILES
  Drive.msg
  DriveFeedback.msg
  Fans.msg
  Feedback.msg
  Lights.msg
  PlatformID.msg
  Power.msg
  RGB.msg
  RYG.msg
  StackLightState.msg
  Status.msg
  StopStatus.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(CATKIN_DEPENDS genmsg std_msgs)
