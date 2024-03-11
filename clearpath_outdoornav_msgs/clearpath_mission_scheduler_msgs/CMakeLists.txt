cmake_minimum_required(VERSION 3.0.2)
project(clearpath_mission_scheduler_msgs)

find_package(catkin REQUIRED
  COMPONENTS
    clearpath_mission_manager_msgs
    clearpath_navigation_msgs
    message_generation
    std_msgs
)

add_message_files(
  FILES
    NextSchedule.msg
    Schedule.msg
    ScheduledMission.msg
    StorageState.msg
    UtcTime.msg
)

add_service_files(
  FILES
  AddMissionToSchedule.srv
  CloneSchedule.srv
  CreateSchedule.srv
  EnableSchedule.srv
  ExportData.srv
  GetAllSchedules.srv
  GetNextSchedule.srv
  GetSchedule.srv
  ImportData.srv
  UpdateSchedule.srv
)

## Add actions
add_action_files(
  DIRECTORY
    action
  FILES
    RunScheduleByUuid.action
)

generate_messages(
  DEPENDENCIES
    clearpath_mission_manager_msgs
    clearpath_navigation_msgs
    std_msgs
)

catkin_package(
)

include_directories(
)
