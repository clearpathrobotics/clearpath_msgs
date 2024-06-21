# Watchdog status message containing information related to device 
# monitoring and what action has been taken to recover from an error

uint8 RECOVERY_NONE = 0
uint8 RECOVERY_STOP = 1
uint8 RECOVERY_PAUSE = 2
uint8 RECOVERY_WARN = 3
uint8 RECOVERY_RESTART = 4

DeviceWatchdogList[] device_watchdogs_list

uint8 recovery_action_taken