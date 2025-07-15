# Number on the bus (CAN ID).
uint8 can_id

# Name of joint controlled, or other identifier.
string joint_name

# Protection states
uint8 NORMAL=0
uint8 THROTTLED=1
uint8 OVERHEATED=2
uint8 ERROR=3

# Protection state
uint8 state
