cmake_minimum_required(VERSION 3.0.2)
project(clearpath_localization_msgs)

## Find catkin macros and libraries
find_package(catkin REQUIRED
  COMPONENTS
    actionlib_msgs
    geometry_msgs
    message_generation
    sensor_msgs
    std_msgs
)

add_message_files(
  FILES
    GNSSStatus.msg
    LocalizationStatus.msg
    SurveyProperties.msg
)

## Add actions
add_action_files(
  DIRECTORY
    action
  FILES
    SurveyBaseStation.action
)

add_service_files(
  FILES
    ConvertCartesianToLatLon.srv
    ConvertCartesianToLatLonArray.srv
    ConvertLatLonToCartesian.srv
    ConvertLatLonToCartesianArray.srv
    ResetLocalization.srv
    SetDatum.srv
)

generate_messages(
  DEPENDENCIES
    actionlib_msgs
    geometry_msgs
    sensor_msgs
    std_msgs
)

catkin_package(
  CATKIN_DEPENDS
    actionlib_msgs
    geometry_msgs
    message_runtime
    sensor_msgs
    std_msgs
)

install(FILES
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
)
