#include "ros/ros.h"
#include "std_msgs/String.h"
#include "mutilagentsys/robotinfo.h"
#include "mutilagentsys/robotfeedback.h"
#include <vector>
#include <pthread.h>


using namespace std;

std::vector<int> tasklist(5,0); // value=0 表示还没开始，  1表示完成

struct robottaskinfo
{
    int taskid;
    int status;  // 没用到
};

ros::ServiceClient client_taskone;
ros::ServiceClient client_tasksec;

void *pthread_robotOne(void *arg)
{
    

    std::cout<<" enter pthread_robotOne "<<std::endl;
    struct robottaskinfo *temp;
    temp=(struct robottaskinfo*)arg;

    printf("robottaskinfo->taskid: %d\n",temp->taskid);

    mutilagentsys::robotfeedback reqsrv;
    reqsrv.request.taskid=temp->taskid;

    tasklist[temp->taskid]=2; // 表示正在占用执行

    if(client_taskone.call(reqsrv))
    {
        ROS_INFO("result is %s",reqsrv.response.taskstatus.c_str());
    }
    else
    {
        ROS_ERROR("failed to call server client_taskone");
    }

    return NULL;
}


void *pthread_robotSec(void *arg)
{
    std::cout<<" enter pthread_robotSec "<<std::endl;
    struct robottaskinfo *temp;
    temp=(struct robottaskinfo*)arg;

    printf("robottaskinfo->taskid: %d\n",temp->taskid);

    mutilagentsys::robotfeedback reqsrv;
    reqsrv.request.taskid=temp->taskid;

    tasklist[temp->taskid]=2; // 表示正在占用执行

    if(client_tasksec.call(reqsrv))
    {
        ROS_INFO("result is %s",reqsrv.response.taskstatus.c_str());
    }
    else
    {
        ROS_ERROR("failed to call server client_taskone");
    }

    return NULL;
}


void DealFeedback(const mutilagentsys::robotinfo& data_feedback)
{
      ROS_INFO("enter DealFeedback  ");
      int robotid= data_feedback.robotid;
      string robotstatus=data_feedback.robotstatus;
      int taskid= data_feedback.taskid;

      bool flag_find=false;

      // 查找下一个 需要执行的 task
      if(robotstatus=="ready")  
      {
        if(taskid>=5) // 表示刚开始
        {
            
        }
        else  // 执行完成的 task 标志先置1
        {
            tasklist[taskid]=1;
        }

        
        for(int i=0;i<tasklist.size();i++) // 查找还需要执行的 task
        {
            if(tasklist[i]==0)
            {
                taskid=i;
                flag_find=true;
                break;
            }
        }
      }

    if(!flag_find)
    {
        ROS_INFO("all task is finished !!!!!! ");
        return;
    }

      std::cout<< "robotid="<<robotid<<" ,robotstatus="<< robotstatus << " ,taskid="<< taskid << std::endl;

      pthread_t p_robotOne;
      pthread_t p_robotSec;

      struct robottaskinfo *tempdata;

     /* 为结构体变量b赋值 */
     tempdata = (struct robottaskinfo *)malloc(sizeof(struct robottaskinfo));           
     tempdata->taskid=taskid;
   

      if((robotid==1)&& (robotstatus=="ready") &&  tasklist[taskid]!=2)
      {
          std::cout<<"robotid = 1 "<<std::endl;
         int ret=pthread_create(&p_robotOne,NULL,pthread_robotOne,(void*)tempdata);
         if(ret)
         {
              std::cout<<"ERROR return code from pthread_create() is %d\n"<<ret<<std::endl;
         }

      }
      else if((robotid==2)&& (robotstatus=="ready") && tasklist[taskid]!=2)
      {
         std::cout<<"robotid = 2 "<<std::endl;
         int ret=pthread_create(&p_robotSec,NULL,pthread_robotSec,(void*)tempdata);
         if(ret)
         {
              std::cout<<"ERROR return code from pthread_create() is %d\n"<<ret<<std::endl;
         }
      }
}

int main(int argc, char *argv[])
{
    /* code for main function */
    ros::init(argc, argv, "node_mini_factory_server");

    ros::NodeHandle nh;

 
    std::vector<int>::iterator t;
    for(t=tasklist.begin();t!=tasklist.end();t++)
    {

        ROS_INFO("init tasklist status is: ");
        std::cout<< *t << std::endl;

    }

    ros::Subscriber feedback_sub = nh.subscribe("/agent_feedback", 1000, DealFeedback);

    client_taskone=nh.serviceClient<mutilagentsys::robotfeedback>("/agent_task_1");
    client_tasksec=nh.serviceClient<mutilagentsys::robotfeedback>("/agent_task_2");

    ros::Rate loop_rate(100);
    while (ros::ok)
    {
        /* code for loop body */
        ros::spinOnce();
        loop_rate.sleep();
    }

    // ros::spin();   

    
    return 0;
}