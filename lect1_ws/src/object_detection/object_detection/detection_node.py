import rclpy
from rclpy.node import Node
import cv2
from cv_bridge import CvBridge
from sensor_msgs.msg import Image
import cvlib as cv
from cvlib.object_detection import draw_bbox
import time


class DetectorNode(Node):
    def __init__(self, node_name="detector_node"):
        super().__init__(node_name)
        self.subscriber = self.create_subscription(
            Image, "/camera/image", self.callback)
        self.pub = self.create_publisher(Image, "/object_detection/output")
        self.cv_bridge = CvBridge()

    def callback(self, msg):
        time_now = time.time()
        img_opencv = self.cv_bridge.imgmsg_to_cv2(msg)
        bbox, label, conf = cv.detect_common_objects(
            img_opencv, enable_gpu=False)
        output_image = draw_bbox(img_opencv, bbox, label, conf)
        img_msg = self.cv_bridge.cv2_to_imgmsg(output_image)
        img_msg.header = msg.header
        self.pub.publish(img_msg)
        self.get_logger().info("Detection took {}s ".format(time.time() - time_now))


def main(args=None):
    rclpy.init(args=args)
    detector = DetectorNode()
    rclpy.spin(detector)
    detector.destroy_node()
    rclpy.shutdown()


if __name__ == '__main__':
    main()
