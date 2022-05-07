# Meaning of these folder and files

* `way_data`:               storing the maual labelled waypoints. According to the CARLA, a waypoint is generated densly along the way, and need to at least contain the `Location` and `Rotation` infos.
* `waypoints_generator.py`: the special manual agent that can generate the waypoints by a human driver (write to waypoints.yaml by default). You can control the car using `up, down, left, right` key. **When you want to save the way, please press `S` key.**. If you want to use the waypoints you generated, please modify the path to waypoints in `auto_agent_run.py` from `waypoints_saved.yaml` to `waypoints.yaml`
* `auto_agent_run.py`:      the client that can control a vehicle run following the way point (read waypoints_saved.yaml by default)
* `run_example.bat`:        a auto script that can run demo, can be run on Anaconda Powershell Prompt. Set the interval between starting different client to avoid collision.

