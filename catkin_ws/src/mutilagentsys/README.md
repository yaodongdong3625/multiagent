Step1: 首先从 git 中 clone 代码
Step2: 配置 工程目录中的 setup.bash 到 ~/.bashrc 中 ，source 之后保存
Step3: 进入 catkin_ws 目录，使用 catkin_make 指令编译
Step4: cd catkin_ws, 启动 launch 文件，roslaunch mutilagentsys start.launch ，建议自动补全，可能写错
Step5: 如果有问题，删除 MakeLists 的缓存文件