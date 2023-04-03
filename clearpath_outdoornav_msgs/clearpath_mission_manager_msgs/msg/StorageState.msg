# The entire contents of the Mission database
# Note that all of the following cases are valid:
# - a Task can be referenced in multiple Waypoints
# - a Waypoint can be referenced in multiple Missions
# - a Waypoint can be orphaned (i.e. not included in any Missions)
# - a Task can be orphaned (i.e. not included in any Waypoints)

# All missions defined in the database
clearpath_navigation_msgs/Mission[] missions

# All waypoints defined in the database
clearpath_navigation_msgs/Waypoint[] waypoints

# All tasks defined in the database
clearpath_navigation_msgs/Task[] tasks
