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
    AddRemoveTag.srv
    CloneMission.srv
    CloneNetworkMap.srv
    CloneNetworkMission.srv
    ClonePointOfInterest.srv
    CreateMission.srv
    CreateNetworkMap.srv
    CreateNetworkMission.srv
    CreatePointOfInterest.srv
    CreateTask.srv
    CreateWaypoint.srv
    CreateWaypointFromPoi.srv
    DeleteById.srv
    DeleteEverything.srv
    DeleteMultiple.srv
    ExportData.srv
    GetAllMissions.srv
    GetAllNetworkMaps.srv
    GetAllNetworkMissions.srv
    GetAllPointsOfInterest.srv
    GetAllTasks.srv
    GetAllWaypoints.srv
    GetEverything.srv
    GetMission.srv
    GetNetworkMap.srv
    GetNetworkMission.srv
    GetPointOfInterest.srv
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
    UpdatePointOfInterest.srv
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
