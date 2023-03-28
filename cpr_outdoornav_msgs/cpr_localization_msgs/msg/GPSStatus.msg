# GPS receiver status message

uint8 MODE_NO_FIX = 0
uint8 MODE_SPP = 1
uint8 MODE_SBAS = 2
uint8 MODE_FLOAT_RTK = 3
uint8 MODE_FIXED_RTK = 4

uint8 fix_mode				# No Fix, Single Point Position (SPP), SBAS, Float RTK, Fixed RTK according to enum above.

uint8 num_connected_sats	# Number of satellites connected to the antenna/receiver
uint8[] cnr_sats			# The carrier-to-noise ratio of each connected satellite

float64 correction_age		# IN DEVELOPMENT
