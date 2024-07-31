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
    ObstacleMap.msg
    Safety.msg
    WatchdogConfigArray.msg
    WatchdogConfigCommon.msg
    WatchdogConfigCommunication.msg
    WatchdogConfigHeartbeat.msg
    WatchdogConfigInclination.msg
    WatchdogConfigNodeletStatus.msg
    WatchdogConfigNodeStatus.msg
    WatchdogConfigNumPoints.msg
    WatchdogConfigOdomCovariance.msg
    WatchdogConfigRtkFix.msg
    WatchdogConfigTopicData.msg
    WatchdogStatus.msg
    WatchdogStatusArray.msg
)

add_service_files(
  FILES
    AddCommunicationWatchdog.srv
    AddHeartbeatWatchdog.srv
    AddInclinationWatchdog.srv
    AddNodeletStatusWatchdog.srv
    AddNodeStatusWatchdog.srv
    AddNumPointsWatchdog.srv
    AddOdomCovarianceWatchdog.srv
    AddRtkFixWatchdog.srv
    AddTopicDataWatchdog.srv
    RemoveWatchdog.srv
    UpdateCommunicationWatchdog.srv
    UpdateHeartbeatWatchdog.srv
    UpdateInclinationWatchdog.srv
    UpdateNodeletStatusWatchdog.srv
    UpdateNodeStatusWatchdog.srv
    UpdateNumPointsWatchdog.srv
    UpdateOdomCovarianceWatchdog.srv
    UpdateRtkFixWatchdog.srv
    UpdateTopicDataWatchdog.srv
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
