# A Network of Paths mission
# Broadly the same as a standard Mission, but with additional fields to allow NoP planning

std_msgs/Header header

string name
string uuid

# The ordered list of waypoints to visit during this mission
clearpath_navigation_msgs/Waypoint[] waypoints

# An array of Tasks to execute on Mission start
clearpath_navigation_msgs/Task[] on_start

# An array of Tasks to execute on Mission stop
# These Tasks will execute regardless of mission success or failure
clearpath_navigation_msgs/Task[] on_stop

# Dock UUID that the robot should return to when battery level drops
# below 'return_to_dock_battery_level'
string return_to_dock_id

# Value from 0 to 1 indicating what charge level the robot will return to dock at
# Setting this value to -1 will ensure the robot never automatically returns to dock while
# a mission is being executed
float32 return_to_dock_battery_level

# Value from 0 to 1 indicating what charge level the robot should resume this mission at
# after returning to dock for recharging
float32 resume_mission_battery_level

# Boolean value indicating whether 'network' level replanning should be performed
# in the event that a network edge is deemed un-traversable (e.g., due to obstacles)
bool network_replan_enabled

# Configuration parameters for the mission
# Additional details TBD
string onav_config
