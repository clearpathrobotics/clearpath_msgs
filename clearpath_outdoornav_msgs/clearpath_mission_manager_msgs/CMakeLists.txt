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
    NetworkEdgeReq.msg
    NetworkMapValidityState.msg
    NetworkMapState.msg
    StorageState.msg
)

add_service_files(
  FILES
    AddNetworkEdge.srv
    AddNetworkPoint.srv
    AddNetworkPath.srv
    AddRemoveById.srv
    CloneMission.srv
    CloneNetworkMap.srv
    CloneNetworkMission.srv
    CreateMission.srv
    CreateNetworkMap.srv
    CreateNetworkMission.srv
    CreateTask.srv
    CreateWaypoint.srv
    DeleteById.srv
    DeleteEverything.srv
    DeleteMultiple.srv
    ExportData.srv
    GetAllMissions.srv
    GetAllNetworkMaps.srv
    GetAllNetworkMissions.srv
    GetAllTasks.srv
    GetAllWaypoints.srv
    GetEverything.srv
    GetMission.srv
    GetNetworkMap.srv
    GetNetworkMission.srv
    GetTask.srv
    GetWaypoint.srv
    ImportData.srv
    ImportMission.srv
    ImportNetworkMap.srv
    ImportNetworkMission.srv
    SplitNetworkEdge.srv
    UpdateMission.srv
    UpdateNetworkEdge.srv
    UpdateNetworkEdges.srv
    UpdateNetworkMap.srv
    UpdateNetworkMission.srv
    UpdateNetworkPoint.srv
    UpdateNetworkPoints.srv
    UpdateTask.srv
    UpdateWaypoint.srv
    ValidateNetworkMap.srv
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
