cmake_minimum_required(VERSION 3.0.2)
project(cpr_mission_scheduler_msgs)

find_package(catkin REQUIRED
  COMPONENTS
    cpr_mission_manager_msgs
    cpr_navigation_msgs
    message_generation
    std_msgs
)

add_message_files(
  FILES
    NextSchedule.msg
    Schedule.msg
    StorageState.msg
    UtcTime.msg
)

add_service_files(
  FILES
  CreateSchedule.srv
  EnableSchedule.srv
  GetAllSchedules.srv
  GetNextSchedule.srv
  GetSchedule.srv
  UpdateSchedule.srv
)

generate_messages(
  DEPENDENCIES
    cpr_mission_manager_msgs
    cpr_navigation_msgs
    std_msgs
)

catkin_package(
)

include_directories(
)
