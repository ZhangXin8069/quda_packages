#!/bin/bash                     #指定运行shell
#SBATCH --job-name=sub_install%j      #指定作业名称
#SBATCH --partition=gpu-debug       #指定分区
#SBATCH --nodes=1               #指定节点数量
# #SBATCH --cpus-per-task=1       #指定每个进程使用核数，不指定默认为1
# #SBATCH -n 48       #指定总进程数；不使用cpus-per-task，可理解为进程数即为核数
#SBATCH --ntasks-per-node=48    #指定每个节点进程数/核数,使用-n参数（优先级更高），变为每个节点最多运行的任务数
# #SBATCH --nodelist=node[3,4]    #指定优先使用节点
# #SBATCH --exclude=node[1,5-6]   #指定避免使用节点
#SBATCH --time=00-00:30:00      #作业最大运行时长，参考格式填写
#SBATCH --output=sub_install%j.out      #指定输出文件输出
#SBATCH --error=sub_install%j.err       #指定错误文件输出
#SBATCH --mail-type=ALL         #邮件提醒,可选:END,FAIL,ALL
#SBATCH --mail-user=zhangxin8069@qq.com     #通知邮箱地址

source ${HOME}/.bashrc   #导入环境变量文件

bash ./install.sh #运行命令
