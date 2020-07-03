from launch import LaunchDescription
from launch_ros.actions import Node


def generate_launch_description():
    return LaunchDescription([
        Node(
            package='camera_opencv',
            node_executable='camera',
        ),
        Node(
            package='object_detection',
            node_executable='detector',
        ),
        Node(
            package='rviz2',
            node_executable='rviz2'

        )
    ])
