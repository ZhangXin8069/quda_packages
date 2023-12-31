source ./env.sh

pushd ${install_path}
tar xzf ${file_path}/quda-develop.tar.gz && pushd quda-develop
mkdir build -p && pushd build
cmake .. -DQUDA_DIRAC_DOMAIN_WALL=OFF -DQUDA_CLOVER_DYNAMIC=OFF -DQUDA_CLOVER_RECONSTRUCT=OFF -DQUDA_DIRAC_NDEG_TWISTED_CLOVER=OFF -DQUDA_DIRAC_NDEG_TWISTED_MASS=OFF -DQUDA_DIRAC_TWISTED_CLOVER=OFF -DQUDA_DIRAC_TWISTED_MASS=OFF -DQUDA_INTERFACE_MILC=OFF -DQUDA_LAPLACE=ON -DQUDA_MULTIGRID=ON -DQUDA_GPU_ARCH=sm_80 -DQUDA_MPI=ON
# cmake --build . -j160 #rely on:lscpu,more is better. 
cmake --build . -j16 #in the case of login node, it is better not to have too much.
cmake --install .
popd
popd
popd
