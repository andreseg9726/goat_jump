#!/bin/bash  

roslaunch goat_launch imu.launch &
roslaunch goat_launch encoders.launch &
roslaunch goat_launch laser.launch &
roslaunch goat_launch state.launch &
roslaunch goat_launch localization_imu_encoders.launch &
roslaunch goat_launch mapping.launch &

roslaunch goat_launch move_base.launch &

roslaunch goat_launch make_goal.launch &

roslaunch goat_launch teleop_ps4.launch serial_port:=/dev/ttyACM0 joy_device:=/dev/input/js1 &

cd ~/catkin_ws || exit
rosbag record -a
