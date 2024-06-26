# The message definition for a Watchdog including the type of watchdog, whether it
# has been triggered or not and the recovery taken.
string RECOVERY_NONE = 'none'
string RECOVERY_WARN = 'warn'
string RECOVERY_PAUSE = 'pause'
string RECOVERY_STOP = 'stop'
string RECOVERY_RESTART = 'restart'

string type

bool triggered
string trigger_message

string[] recovery_options
string recovery_taken
