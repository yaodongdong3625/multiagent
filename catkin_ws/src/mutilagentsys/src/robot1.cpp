#include "ros/ros.h"
#include "std_msgs/String.h"
#include "mutilagentsys/robotinfo.h"
#include "mutilagentsys/robotfeedback.h"
#include "mutilagentsys/robotfeedbackRequest.h"
#include "mutilagentsys/robotfeedbackResponse.h"

ros::Publisher pubrobot1status;

bool OneRobotProcessTask(mutilagentsys::robotfeedback::Request &req,mutilagentsys::robotfeedback::Response &res)
{
    ROS_INFO("robot1 receiced taskid=%ld ",(long int)req.taskid);
    res.taskstatus="executing";
    ROS_INFO("robot1 is executing taskid=%ld ",(long int)req.taskid);
    sleep(5);
    res.taskstatus="ready";

   // 
    int finishedtaskid=req.taskid;
    mutilagentsys::robotinfo robot_info_temp;
    robot_info_temp.robotid=1;
    robot_info_temp.robotstatus="ready";
    robot_info_temp.taskid=finishedtaskid;

    std::cout<<" finishedtaskid="<<finishedtaskid<<std::endl;

    pubrobot1status.publish(robot_info_temp);

    return true;
}


int main(int argc, char *argv[])
{
    /* code for main function */
    ros::init(argc, argv, "node_robot_1");
    
    ros::NodeHandle nh;

    ros::ServiceServer server_robot1=nh.advertiseService("/agent_task_1", OneRobotProcessTask);

    ROS_INFO("robot1 is wait for task request ......");

    pubrobot1status= nh.advertise<mutilagentsys::robotinfo>("/agent_feedback", 1000);


    mutilagentsys::robotinfo robot_info;
    robot_info.robotid=1;
    robot_info.robotstatus="ready";
    robot_info.taskid=100;

    ros::Rate loop_rate(10);
    int count=0;
    while (ros::ok)
    {
        if(count<4)
        {
            ROS_INFO("robot send init ready status ..");
            pubrobot1status.publish(robot_info);
        }
        if(count>=4)
            count=100;

        /* code for loop body */
        ros::spinOnce();
        loop_rate.sleep();

        ++count;
    }
    

    // ros::spin();

    return 0;
}