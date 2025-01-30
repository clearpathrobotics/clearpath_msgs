# Number on the bus (CAN ID).
uint8 can_id

# Name of joint controlled, or other identifier.
string joint_name

# Firmware version
string firmware_version

# Motor winding temperature (degC).
float32 motor_temperature

# BLDC MCU temperature (degC)
float32 mcu_temperature

# BLDC PCB temperature (degC)
float32 pcb_temperature

# Hardware triggered stop
bool stopped

# Status Flags
uint8 STATUS_FLAG_ADC_CALIBRATED=0
uint8 STATUS_FLAG_ROTOR_CALIBRATED=1
uint8 STATUS_FLAG_CALIBRATION_REQUESTED=2
uint8 STATUS_FLAG_CALIBRATION_CANCELLED=3
uint8 STATUS_FLAG_FIRST_VEL_RECEIVED=4
uint8 STATUS_FLAG_ESTOPPED=5

uint32 status_flags

# Error Flags
uint8 ERROR_FLAG_NOT_CALIBRATED=0
uint8 ERROR_FLAG_MOTOR_FAULT=1
uint8 ERROR_FLAG_MOTOR_STALLING=2
uint8 ERROR_FLAG_MOTOR_THERMISTOR=3
uint8 ERROR_FLAG_PCB_THERMISTOR=4
uint8 ERROR_FLAG_PHASE=5
uint8 ERROR_FLAG_PHASE_A=6
uint8 ERROR_FLAG_PHASE_B=7
uint8 ERROR_FLAG_PHASE_C=8
uint8 ERROR_FLAG_ENCODER_POWER=9
uint8 ERROR_FLAG_ENCODER_INDEX=10
uint8 ERROR_FLAG_ENCODER_OUTPUT_A=11
uint8 ERROR_FLAG_ENCODER_OUTPUT_B=12

uint32 error_flags
