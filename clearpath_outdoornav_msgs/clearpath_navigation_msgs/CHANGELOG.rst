^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package clearpath_navigation_msgs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

0.9.3 (2023-10-19)
------------------

0.9.2 (2023-10-17)
------------------
* [ONAV-1546] Add autonomy API option to start mission from current position
  - Changes to the ExecuteMissionByUuid.action and Mission.action to support 'Resuming' missions and starting missions from specified waypoints.
  - The combination of the 'from_start' and 'start_waypoint' field determine the behavior:
  - from_start == True will always force the mission to run from the beginning
  - from_start == False AND start_waypoint_uuid/start_waypoint == Null will let autonomy decide where to start the mission ('closest' waypoint)
  - from_start == False AND start_waypoint_uuid/start_waypoint != Null will tell autonomy to start the mission from the specified waypoint (useful in area-coverage type applications)
* Fix over & underline length in changelogs
* Contributors: Chris Iverach-Brereton, Stephen Phillips, Tony Baltovski

0.9.1 (2023-08-22)
------------------
* Add comments to Waypoint message to match documentation
* Added Metrics.msg
* Contributors: Chris Iverach-Brereton, José Mastrangelo

0.9.0 (2023-07-05)
------------------
* Initial release
