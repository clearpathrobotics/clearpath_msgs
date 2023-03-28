# Message contains an identifier for the goal, as well as the final goal heading and tolerances

string goal_id
cpr_navigation_msgs/Waypoint goal
float64 goal_heading
float64 goal_position_tolerance
float64 goal_heading_tolerance
cpr_navigation_msgs/Waypoint[] viapoints
float64[] viapoint_headings
float64[] viapoint_position_tolerances
float64[] viapoint_heading_tolerances
