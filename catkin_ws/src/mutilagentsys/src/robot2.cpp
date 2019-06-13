#include "ros/ros.h"
#include "std_msgs/String.h"
#include "mutilagentsys/robotinfo.h"
#include "mutilagentsys/robotfeedback.h"
#include "mutilagentsys/robotfeedbackRequest.h"
#include "mutilagentsys/robotfeedbackResponse.h"

ros::Publisher pubrobot2status;

bool SecondRobotProcessTask(mutilagentsys::robotfeedback::Request &req,mutilagentsys::robotfeedback::Response &res)
{
    ROS_INFO("robot2  receiced taskid=%ld ",(long int)req.taskid);
    res.taskstatus="executing";
    ROS_INFO("robot2 is executing taskid=%ld ",(long int)req.taskid);
    sleep(3);
    res.taskstatus="ready";

   // 
    int finishedtaskid=req.taskid;
    mutilagentsys::robotinfo robot_info_temp;
    robot_info_temp.robotid=2;
    robot_info_temp.robotstatus="ready";
    robot_info_temp.taskid=finishedtaskid;

    std::cout<<" finishedtaskid="<<finishedtaskid<<std::endl;

    pubrobot2status.publish(robot_info_temp);

    return true;
}

int main(int argc, char *argv[])
{
    /* code for main function */
    ros::init(argc, argv, "node_robot_2");
    
    ros::NodeHandle nh;

    ros::ServiceServer server_robot1=nh.advertiseService("/agent_task_2", SecondRobotProcessTask);

    ROS_INFO("robot2 is wait for task request ......");

    
    pubrobot2status = nh.advertise<mutilagentsys::robotinfo>("/agent_feedback", 1000);

    mutilagentsys::robotinfo robot_info;
    robot_info.robotid=2;
    robot_info.robotstatus="ready";
    robot_info.taskid=100;

  
    int count=0;
    ros::Rate loop_rate(10);
    while (ros::ok())
    {
        /* code for loop body */
        if(count<4)
        {
            ROS_INFO("robot2 send init ready status ..");
            pubrobot2status.publish(robot_info);
        }
         
        if(count>=4)
            count=100;

        // 等待一次回调函数触发
        ros::spinOnce();
        loop_rate.sleep();

        ++count;
    }

    // ros::spin();

    return 0;
}