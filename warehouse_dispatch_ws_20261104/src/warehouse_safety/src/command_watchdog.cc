// The vehicle-side simulation watchdog keeps the stock DiffDrive from latching
// the last nonzero command forever if the ROS bridge or motion guard disappears.
#include <chrono>
#include <mutex>
#include <stdexcept>
#include <string>
#include <gz/msgs/twist.pb.h>
#include <gz/plugin/Register.hh>
#include <gz/sim/System.hh>
#include <gz/transport/Node.hh>

namespace warehouse
{
class CommandWatchdog final : public gz::sim::System,
  public gz::sim::ISystemConfigure, public gz::sim::ISystemPreUpdate
{
  using Steady = std::chrono::steady_clock;
  gz::transport::Node node;
  gz::transport::Node::Publisher output;
  std::mutex mutex;
  gz::msgs::Twist command;
  Steady::time_point received = Steady::time_point::min();
  Steady::time_point published = Steady::time_point::min();
  bool haveCommand = false;

 public: void Configure(const gz::sim::Entity &,
    const std::shared_ptr<const sdf::Element> &sdf,
    gz::sim::EntityComponentManager &, gz::sim::EventManager &) override
  {
    const auto input = sdf->Get<std::string>("input_topic");
    const auto topic = sdf->Get<std::string>("output_topic");
    if (input.empty() || topic.empty() || input == topic)
      throw std::runtime_error("CommandWatchdog requires distinct input/output topics");
    output = node.Advertise<gz::msgs::Twist>(topic);
    node.Subscribe(input, &CommandWatchdog::OnCommand, this);
  }

 public: void OnCommand(const gz::msgs::Twist &msg)
  {
    std::lock_guard<std::mutex> lock(mutex);
    command = msg;
    received = Steady::now();
    haveCommand = true;
  }

 public: void PreUpdate(const gz::sim::UpdateInfo &,
    gz::sim::EntityComponentManager &) override
  {
    const auto now = Steady::now();
    if (published != Steady::time_point::min() &&
        now - published < std::chrono::milliseconds(40)) return;
    gz::msgs::Twist safe;
    {
      std::lock_guard<std::mutex> lock(mutex);
      if (haveCommand && now - received < std::chrono::milliseconds(500))
        safe = command;
    }
    output.Publish(safe);
    published = now;
  }
};
}
GZ_ADD_PLUGIN(warehouse::CommandWatchdog, gz::sim::System,
  warehouse::CommandWatchdog::ISystemConfigure,
  warehouse::CommandWatchdog::ISystemPreUpdate)
GZ_ADD_PLUGIN_ALIAS(warehouse::CommandWatchdog, "warehouse::CommandWatchdog")
