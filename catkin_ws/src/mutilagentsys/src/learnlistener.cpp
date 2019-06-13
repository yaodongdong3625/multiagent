/*
    该例程将订阅 chatter 话题，消息类型为String
*/

#include "ros/ros.h"
#include "std_msgs/String.h"

void ChatterCallBack(const std_msgs::String::ConstPtr& msg)
{
    // 将接收到的消息打印出来，通过指针访问
    ROS_INFO("I heard : [%s] ",msg->data.c_str());
}

int main(int argc, char *argv[])
{
    /* code for main function */

    // 初始化 ROS 节点，listener 是节点运行之后的名称
    ros::init(argc, argv, "learnlistener");
    
    // 创建节点句柄
    ros::NodeHandle nh;

    /* 创建一个 Subscribe，订阅话题名为 chatter 的 topic,数据队列长度是 1000，注册回调函数 ChatterCallBack
       订阅者并不确定什么时候会有消息过来，所以它通过多线程的方式会在后台一直循环等待数据进来，一旦有具体的某个消息是它需要订阅的，
       它就会进入具体的 ChatterCallBack回调函数，在回调函数中进行具体的处理。
    */
    ros::Subscriber listenersub = nh.subscribe("chatter", 100, ChatterCallBack);
    
    /* 循环等待回调函数，等待发布者发布对应的消息，ros::spinOnce()只会查询一次回调函数队列是否当前有话题进来
       ros:spin()是循环等待，不需要我们在外围加入 while(ros::ok())循环等待，一旦有对应的消息发布出来，就会进入 ChatterCallBack()回调函数
    */
//    ros::spin();  // 与 32-40 行的代码等价

    // 就算设置成 5HZ，发布的数据是 10HZ,数据也不会丢失，因为有 1000的数据队列，只是接收到的数据 有延时
    ros::Rate loop_rate(10);
    while (ros::ok())
    {
        /* code for loop body */

        // 等待一次回调函数触发
        ros::spinOnce();
        loop_rate.sleep();
    }
    


    return 0;
}