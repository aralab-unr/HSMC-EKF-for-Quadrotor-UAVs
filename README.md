# HSMC-EKF-for-Quadrotor-UAVs
This is the simulation for a novel methodology for controlling Quadrotor Unmanned Aerial Vehicles in Matlab/Simulink. A comparison with SO-SMC-EKF and PID-EKF is also attached. 

For the Extended Kalman filter, the linearization of the Quadrotor UAVs is calculated based on the previous working point. The details of the system's matrix are in the path: HSMC_Kalman Fillter/matrixAB/linearized.m

The simulation is tested under three scenarios as listed as follows:
![image](https://github.com/aralab-unr/HSMC-EKF-for-Quadrotor-UAVs/assets/43550092/714849b4-0e66-470e-8a8f-1bafee71960c)

Three types of Hierarchical sliding mode control: Aggregated HSMC (AHSMC), Incremental HSMC (IHSMC), and Combining HSMC (CHSMC) are investigated. A comparison is also provided.

The results of scenario 1 are in the path: HSMC_Kalman Fillter/setpoint

The results of scenario 2 are in the path: HSMC_Kalman Fillter/square

The results of scenario 3 are in the path: HSMC_Kalman Fillter/trajectory
