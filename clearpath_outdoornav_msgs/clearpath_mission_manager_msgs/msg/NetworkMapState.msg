# The UUID of the map
string uuid

# True if the map actually exists and was found
bool exists

# The number of disconnected sub-graphs of the map
# Normally this will be 1 (i.e. the map is a single graph that is connected)
# but there are circumstances where the user may intentionally want 2+ disconnected graphs
# (e.g. a separate graph for each side of a fence, where the only connection between the two
# sides is an out-of-bounds, teleop-only road)
int32 num_subgraphs

# If the map has any disconnected vertices, we enumerate them here by their ID
string[] disconnected_point_ids
