# Robot Power readings

std_msgs/Header header

# AC Power
int8 NOT_APPLICABLE=-1

int8 shore_power_connected  # Indicates if AC power is connected.
int8 battery_connected      # Indicates if battery is connected.
int8 power_12v_user_nominal # Indicates if the 12V user power is good.
int8 charging_complete      # Indicates if charging is complete.

# Voltage rails, in volts
# Averaged over the message period

# Jackal
uint8 JACKAL_MEASURED_BATTERY=0
uint8 JACKAL_MEASURED_5V=1
uint8 JACKAL_MEASURED_12V=2

# Dingo
uint8 DINGO_MEASURED_BATTERY=0
uint8 DINGO_MEASURED_5V=1
uint8 DINGO_MEASURED_12V=2

# Warthog
uint8 WARTHOG_MEASURED_BATTERY=0
uint8 WARTHOG_MEASURED_12V=1
uint8 WARTHOG_MEASURED_24V=2
uint8 WARTHOG_MEASURED_48V=3

# Ridgeback
uint8 RIDGEBACK_MEASURED_BATTERY=0
uint8 RIDGEBACK_MEASURED_5V=1
uint8 RIDGEBACK_MEASURED_12V=2
uint8 RIDGEBACK_MEASURED_INVERTER=3
uint8 RIDGEBACK_MEASURED_FRONT_AXLE=4
uint8 RIDGEBACK_MEASURED_REAR_AXLE=5
uint8 RIDGEBACK_MEASURED_LIGHT=6

float32[] measured_voltages

# Current senses available on platform, in amps.
# Averaged over the message period

# Jackal
uint8 JACKAL_TOTAL_CURRENT=0
uint8 JACKAL_COMPUTER_CURRENT=1
uint8 JACKAL_DRIVE_CURRENT=2
uint8 JACKAL_USER_CURRENT=3

# Dingo
uint8 DINGO_TOTAL_CURRENT=0
uint8 DINGO_COMPUTER_CURRENT=1

# Warthog
uint8 WARTHOG_TOTAL_CURRENT=0
uint8 WARTHOG_COMPUTER_CURRENT=1
uint8 WARTHOG_12V_CURRENT=2
uint8 WARTHOG_24V_CURRENT=3
uint8 WARTHOG_48V_CURRENT=4

# Ridgeback
uint8 RIDGEBACK_TOTAL_CURRENT=0

float32[] measured_currents
