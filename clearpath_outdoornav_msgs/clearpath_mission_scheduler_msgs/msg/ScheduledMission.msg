# Multiple kinds of missions can be scheduled
# This provides the necessary information to get the actual mission object from the appropriate
# Mission Manager service

# The types of mission we support
# May be expanded in future
int8 MISSION_TYPE_NORMAL = 1
int8 MISSION_TYPE_NETWORK_OF_PATHS = 2

# The type of mission; dictates what service & action we need to call to operate on the mission itself
int8 mission_type

# The ID of the mission, to provide to the appropriate service
string uuid
