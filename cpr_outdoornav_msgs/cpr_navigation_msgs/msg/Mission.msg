# Message definition for an OutdoorNav mission

std_msgs/Header header

# The goal's final waypoint
cpr_navigation_msgs/Waypoint goalpoint

# If a final heading is to be set for the goal, the following fields are required
bool enable_final_heading
float64 goalpoint_heading

# If a goal tolerance is to be set for the goal, the following fields are required
bool enable_goal_tolerance
float64 position_tolerance
float64 yaw_tolerance

# The intermediate waypoints on the way to the goal
cpr_navigation_msgs/Waypoint[] viapoints

# The list of internal/external software calls that can be assigned to the goal. These will be called in the order that they are added to the list.
cpr_navigation_msgs/Task[] tasks
