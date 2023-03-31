# A single task that can be executed at a Waypoint

# The human-readable name of this task
string name

# A UUID string to uniquely identify this Task
string uuid

# The ROS action that this task executes
string service_call

# The version of this task
string version

# Numerical/boolean data to be passed to the service_call
# The exact meaning of these values is dependent on the underlying service
float64[] floats

# String data to be passed to the service_call
# The exact meaning of these values is dependent on the underlying service
string[] strings
