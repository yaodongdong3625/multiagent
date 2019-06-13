/*
   该例程将发布 chatter 话题，消息类型为 String
*/


#include <sstream>
#include "ros/ros.h"
#include "std_msgs/String.h"


ros::Publisher chatterpub;

int main(int argc, char *argv[])
{
    /* code for main function */
   
   // ros 节点初始化,"talker" 是节点运行起来之后的名称
   ros::init(argc, argv, "learntalker");
   
   // 创建节点句柄， 方便管理具体节点的资源，比如：发布者 订阅者 一些话题 都是通过句柄管理
   ros::NodeHandle nh;

   /*
     向ROS Master注册节点信息，创建一个 Publisher,发布话题名为 “chatter”的 topic，发布的消息类型是 std_msgs::String 
     1000 指的是发布者的队列长度，如果发布者发布的速度是非常快的，对方来不及接收，数据会放在队列中，队列满了或者超过一千之后，会把时间戳最早的一些数据删除，
     发布速度过快的话，可能会出现断帧的情况 
   */
//    ros::Publisher chatterpub = nh.advertise<std_msgs::String>("chatter", 1000);

    chatterpub = nh.advertise<std_msgs::String>("chatter", 100);

   // 设置循环的频率，定义具体的循环周期，10 代表的是 10HZ, 循环周期是 100ms
   ros::Rate loop_rate(10);

   int count=0;

   while (ros::ok)
   {
       /* code for loop body */

       // 初始化 std_msgs::String 类型的消息变量
       std_msgs::String msg;

       std::stringstream output;
       output<<"hello world"<<count;

          ROS_INFO("test enter ......");

       // 把需要发布的数据内容 放入 msg 里面
       msg.data=output.str();

       // 打印并发布数据
       if(count<4)
       {
          ROS_INFO("publish content =%s",msg.data.c_str());
          chatterpub.publish(msg);

       }
    
       
       // 等待一次回调函数， ros::spinOnce() 在此函数中无意义，只是为了保存代码的完整性
       ros::spinOnce();

       // 按照循环频率延时
       loop_rate.sleep();

       ++count;


   }
   
   


    return 0;
}
