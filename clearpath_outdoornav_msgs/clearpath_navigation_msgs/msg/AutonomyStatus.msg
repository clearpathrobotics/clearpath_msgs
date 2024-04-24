# Message containing status of individual Waypoint in NetworkMission

std_msgs/Header header
std_msgs/Time last_start
std_msgs/String mission_uuid
std_msgs/String map_uuid
bool paused

uint8 IDLE = 0
uint8 MISSION_DIRECT = 1
uint8 MISSION_BY_ID = 2
uint8 NETWORK_MISSION = 3
uint8 NETWORK_GOTO = 4
uint8 NETWORK_GOTO_POI = 5
uint8 LOCAL_DOCKING = 6
uint8 LOCAL_UNDOCKING = 7
uint8 RADIUS_DOCKING = 8
uint8 NETWORK_DOCKING = 9

uint8 state
