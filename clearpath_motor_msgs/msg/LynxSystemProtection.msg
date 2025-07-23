std_msgs/Header header

# System state based on highest protection state of motors
uint8 system_state

# Individual motor protection states
clearpath_motor_msgs/LynxMotorProtection[] motor_states
