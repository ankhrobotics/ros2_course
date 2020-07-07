import rclpy
from rclpy.node import Node
from sensor_msgs.msg import Image
from std_msgs.msg import Bool
from cv_bridge import CvBridge
import cv2


class Camera(Node):
    def __init__(self):
        super().__init__("cv_camera")
        self.image_pub = self.create_publisher(Image, "camera/image", 1)
        self.status_pub = self.create_publisher(Bool, "camera/status", 1)
        self.cv_brdige = CvBridge()
        self.timer = self.create_timer(1/15, self.timer_clk)
        self.cap = cv2.VideoCapture(0)

    def timer_clk(self):
        ret, mat = self.cap.read()
        image_msg = self.cv_brdige.cv2_to_imgmsg(mat)
        image_msg.header.frame_id = "camera"
        self.image_pub.publish(image_msg)

        status_msg = Bool()
        status_msg.data = ret
        self.status_pub.publish(status_msg)


def main(args=None):
    rclpy.init(args=args)
    camera = Camera()
    rclpy.spin(camera)
    camera.destroy_node()
    rclpy.shutdown()


if __name__ == "__main__":
    main()
