#!/bin/bash
#SBATCH --job-name=quda_install%j
#SBATCH --partition=cpueicc
#SBATCH --nodes=1
# #SBATCH --cpus-per-task=1
# #SBATCH -n 48
#SBATCH --ntasks-per-node=48
# #SBATCH --nodelist=node[3,4]
# #SBATCH --exclude=node[1,5-6]
#SBATCH --time=00-00:30:00
#SBATCH --output=quda_install%j.out
#SBATCH --error=quda_install%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=zhangxin8069@qq.com

source ./env.sh
bash ./install.sh
