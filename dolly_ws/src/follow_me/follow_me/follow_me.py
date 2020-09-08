import rclpy
from rclpy.node import Node
from rclpy.qos import qos_profile_system_default, qos_profile_sensor_data
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist
import numpy as np


class Follower(Node):
    def __init__(self):
        super().__init__("follow_me")
        self.pub_ = self.create_publisher(Twist, "/ankhbot/cmd_vel", 1)
        self.sub_ = self.create_subscription(
            LaserScan, "/ankhbot/laser_scan", self.clk_, qos_profile=qos_profile_sensor_data)
        self.min_dist_ = 1
        self.linear_kp = 0.1
        self.angular_k_ = 0.08
        self.get_logger().info("Follower Node is Created!!")

    def clk_(self, msg):
        min_idx = -1
        min_dist = msg.range_max
        for idx, range_ in enumerate(msg.ranges):
            if(range_ > msg.range_min and range_ < msg.range_max and range_ < min_dist):
                min_dist = range_
                min_idx = idx
        turn = msg.angle_min + msg.angle_increment * min_idx
        cmd_msg = Twist()
        if(min_idx < 0):
            cmd_msg.linear.x = 0.0
            cmd_msg.angular.z = 0.0
        elif (min_dist < self.min_dist_):
            cmd_msg.linear.x = 0.0
            cmd_msg.angular.z = turn * self.angular_k_
        else:
            cmd_msg.linear.x = (min_dist - self.min_dist_) * self.linear_kp
            cmd_msg.angular.z = turn * self.angular_k_
        self.pub_.publish(cmd_msg)


def main(args=None):
    rclpy.init(args=args)
    follower_node = Follower()
    rclpy.spin(follower_node)
    follower_node.destroy_node()
    rclpy.shutdown()


if __name__ == "__main__":
    main()
