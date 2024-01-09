# A Network of Paths mission
# Broadly the same as a standard Mission, but with additional fields to allow NoP planning

std_msgs/Header header

string name
string uuid

# The network of paths we use to plan routes from waypoint-to-waypoint
clearpath_navigation_msgs/NetworkMap planning_map

# The ordered list of waypoints to visit during this mission
clearpath_navigation_msgs/Waypoint[] waypoints

# An array of Tasks to execute on Mission start
clearpath_navigation_msgs/Task[] on_start

# An array of Tasks to execute on Mission stop
# These Tasks will execute regardless of mission success or failure
clearpath_navigation_msgs/Task[] on_stop

# Configuration parameters for the mission
# Additional details TBD
string onav_config
