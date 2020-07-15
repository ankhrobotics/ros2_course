# Dolly ROS2 Simulation

## Install dependencies:
 * [Gazebo 9](http://gazebosim.org/tutorials?tut=install_ubuntu&cat=install)
 * [Gazebo ROS pacakges](http://gazebosim.org/tutorials?tut=ros2_installing&cat=connect_ros)
 * `rosdep install --from-paths src --ignore-src -r -y \
     --skip-keys=ignition-math6 \
     --skip-keys=ignition-msgs5 \
     --skip-keys=ignition-transport8 \
     --skip-keys=ignition-gazebo3`


