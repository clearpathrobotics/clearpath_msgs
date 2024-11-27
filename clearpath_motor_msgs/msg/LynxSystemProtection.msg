std_msgs/Header header

# Protection states
uint8 NORMAL=0
uint8 THROTTLED=1
uint8 OVERHEATED=2
uint8 ERROR=3

# System state based on highest protection state of motors
uint8 system_state

# A300
uint8 A300_MOTOR_REAR_LEFT=0
uint8 A300_MOTOR_FRONT_LEFT=1
uint8 A300_MOTOR_FRONT_RIGHT=2
uint8 A300_MOTOR_REAR_RIGHT=3

# Individual motor protection states
uint8[] motor_states
