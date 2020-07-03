#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <chrono>
#include <functional>
#include <memory>
#include <opencv2/opencv.hpp>
#include <sensor_msgs/msg/image.hpp>
#include "rclcpp/rclcpp.hpp"
using namespace std::chrono_literals;
class Camera
{
public:
  Camera(rclcpp::Node::SharedPtr nh) : nh_(nh), it_(nh_)
  {
    cap_ = new cv::VideoCapture(0);
    pub_ = it_.advertise("/camera/image", 1);
    timer_ = nh_->create_wall_timer(33ms, std::bind(&Camera::timer_callback, this));
    if (!cap_->isOpened())  // check if we succeeded
      RCLCPP_ERROR(nh_->get_logger(), "Couldn't open camera");
  }

private:
  void timer_callback()
  {
    *cap_ >> frame_;
    std_msgs::msg::Header header;
    header.frame_id = "camera";
    header.stamp = nh_->now();
    cv_ptr_ = cv_bridge::CvImage(header, sensor_msgs::image_encodings::BGR8, frame_);
    pub_.publish(cv_ptr_.toImageMsg());
  }
  rclcpp::Node::SharedPtr nh_;
  cv::VideoCapture *cap_;
  cv::Mat frame_;
  image_transport::Publisher pub_;
  cv_bridge::CvImage cv_ptr_;
  image_transport::ImageTransport it_;
  rclcpp::TimerBase::SharedPtr timer_;
};

int main(int argc, char **argv)
{
  rclcpp::init(argc, argv);
  rclcpp::Node::SharedPtr private_node = std::make_shared<rclcpp::Node>("cv_camera");
  Camera cam(private_node);
  rclcpp::spin(private_node);
  rclcpp::shutdown();
  return 0;
}
