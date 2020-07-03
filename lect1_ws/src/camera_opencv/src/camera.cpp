#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <chrono>
#include <functional>
#include <memory>
#include <opencv2/opencv.hpp>
#include <sensor_msgs/msg/image.hpp>
#include <std_msgs/msg/bool.hpp>
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
    status_pub_ = nh_->create_publisher<std_msgs::msg::Bool>("camera/status", 1);
    if (!cap_->isOpened())
    {
      RCLCPP_ERROR(nh_->get_logger(), "Couldn't open camera");
      status_.data = false;
      status_pub_->publish(status_);
    }
    else
    {
      status_.data = true;
      status_pub_->publish(status_);
    }
  }

private:
  void timer_callback();
  rclcpp::Node::SharedPtr nh_;
  cv::VideoCapture *cap_;
  cv::Mat frame_;
  image_transport::Publisher pub_;
  rclcpp::Publisher<std_msgs::msg::Bool>::SharedPtr status_pub_;
  std_msgs::msg::Bool status_;
  cv_bridge::CvImage cv_ptr_;
  image_transport::ImageTransport it_;
  rclcpp::TimerBase::SharedPtr timer_;
};

void Camera::timer_callback()
{
  *cap_ >> frame_;
  std_msgs::msg::Header header;
  header.frame_id = "camera";
  header.stamp = nh_->now();
  cv_ptr_ = cv_bridge::CvImage(header, sensor_msgs::image_encodings::BGR8, frame_);
  pub_.publish(cv_ptr_.toImageMsg());
  status_.data = true;
  status_pub_->publish(status_);
}

int main(int argc, char **argv)
{
  rclcpp::init(argc, argv);
  rclcpp::Node::SharedPtr private_node = std::make_shared<rclcpp::Node>("cv_camera");
  RCLCPP_INFO(private_node->get_logger(), "Welcome from your first ROS2 Node, You made it !!");
  Camera cam(private_node);
  rclcpp::spin(private_node);
  rclcpp::shutdown();
  return 0;
}
