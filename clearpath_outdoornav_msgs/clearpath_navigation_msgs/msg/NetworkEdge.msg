# A directed edge connecting two NetworkPoint instances

# The unique ID for this edge
string uuid

# The points on either end of this edge
clearpath_navigation_msgs/NetworkPoint start_point
clearpath_navigation_msgs/NetworkPoint end_point

# The deviation radius allowed arouind this edge in meters
float32 radius

# The speed limit for the zone covered by this edge in m/s
float32 speed_limit
