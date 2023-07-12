cmake_minimum_required(VERSION 3.0.2)
project(clearpath_navigation_msgs)

## Find catkin macros and libraries
find_package(catkin REQUIRED
  COMPONENTS
		actionlib_msgs
		geometry_msgs
		message_generation
		nav_msgs
		std_msgs
)

add_message_files(
  FILES
    DistanceToGoal.msg
    Mission.msg
		MissionStatus.msg
		MotionState.msg
    NavigationState.msg
    OdomIntent.msg
    PointVector.msg
    Progress.msg
    ScanPoints.msg
    Task.msg
    TrackError.msg
    Vector2D.msg
    Waypoint.msg
		WaypointStatus.msg
)

add_service_files(
  FILES
    AutonomyTaskSrv.srv
    SetDelayCompensation.srv
    SetPathShifter.srv
    SetPathSmoother.srv
    SetStopDistance.srv
)

## Add actions
add_action_files(
	DIRECTORY
    action
	FILES
		ExecuteMissionByUuid.action
		GetWaypointPath.action
		Mission.action
		SmoothPath.action
    UITask.action
)

generate_messages(
  DEPENDENCIES
    actionlib_msgs
		geometry_msgs
    nav_msgs
    std_msgs
)

catkin_package(
  CATKIN_DEPENDS
    actionlib_msgs
		geometry_msgs
    message_runtime
    nav_msgs
    std_msgs
)

install(FILES
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
)
