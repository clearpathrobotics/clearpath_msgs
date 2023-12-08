cmake_minimum_required(VERSION 3.0.2)
project(clearpath_mission_manager_msgs)

find_package(catkin REQUIRED
  COMPONENTS
    clearpath_navigation_msgs
    message_generation
    std_msgs
)

add_message_files(
  FILES
    StorageState.msg
)

add_service_files(
  FILES
    AddRemoveById.srv
    CloneMission.srv
    CreateMission.srv
    CreateTask.srv
    CreateWaypoint.srv
    DeleteById.srv
    DeleteEverything.srv
    DeleteMultiple.srv
    ExportData.srv
    GetAllMissions.srv
    GetAllTasks.srv
    GetAllWaypoints.srv
    GetEverything.srv
    GetMission.srv
    GetTask.srv
    GetWaypoint.srv
    ImportData.srv
    ImportMission.srv
    UpdateMission.srv
    UpdateTask.srv
    UpdateWaypoint.srv
)

generate_messages(
  DEPENDENCIES
    clearpath_navigation_msgs
    std_msgs
)

catkin_package(
)

include_directories(
)
