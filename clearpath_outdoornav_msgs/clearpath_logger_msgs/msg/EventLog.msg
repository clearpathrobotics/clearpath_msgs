################################################################################
## A log representing a single mission execution
################################################################################

# The time the log started recording
time start_time

# The time the log stopped recording
time end_time

# This execution's unique ID
string uuid

# The UUID of the waypoint or network of paths mission (or other mission type)
# being executed
string mission_uuid

# The total percentage of the battery used during the execution
# This measures only negative changes, not positive ones
# e.g. if the robot uses 75% of the battery, returns to dock to recharge to full
# and then finishes the mission using another 75% of the battery, this value
# will read 1.5
float32 battery_percent_used

# The total distance driven by the robot (approximate) during the execution (meters)
# The exact path used to calculate the distance may be simplified and subject to
# sensor noise/error
float32 distance_driven

# The list of events recorded in this execution
clearpath_logger_msgs/Event[] events
