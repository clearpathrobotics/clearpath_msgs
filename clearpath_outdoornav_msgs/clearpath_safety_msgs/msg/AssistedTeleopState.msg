# Assisted teleoperation message indicating the current state of the protection

uint8 BYPASS_OFF = 0
uint8 BYPASS_SERVICE = 1
uint8 BYPASS_JOYSTICK_OVERRIDE = 2
uint8 BYPASS_SENSOR_TIMEOUT = 3

bool bypassed
uint8 bypass_trigger

bool collision_imminent
bool assisted_stop
