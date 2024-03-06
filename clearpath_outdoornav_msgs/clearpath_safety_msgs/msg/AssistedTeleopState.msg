# Assisted teleoperation message indicating the current state of the protection

uint8 STATE_ACTIVE = 0
uint8 STATE_BYPASSED = 1
uint8 STATE_COLLISION_IMMINENT = 2
uint8 STATE_STOPPED = 3
uint8 STATE_COLLISION = 4
uint8 state

uint8 BYPASS_OFF = 100
uint8 BYPASS_SERVICE = 101
uint8 BYPASS_JOYSTICK_OVERRIDE = 102
uint8 BYPASS_SENSOR_TIMEOUT = 103
uint8 bypass_trigger
