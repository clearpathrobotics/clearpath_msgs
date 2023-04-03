# Localization status message for all sources of localization

# the localization accuracy as a percentage value (covariance?)
float32 accuracy

# status information related to the GPS receiver units
GPSStatus[] gps

bool dead_reckoning

uint8 sensors_used	# IN DEVELOPMENT # Bitfield denoting which sensors are used in the localization
