# ROAR_Multi_Client_Sim
 Support Multiple Clients Simulation in a single World(Berkeley Minor Map).

## Author:
* Jingjing Wei    (jingjingwei@berkeley.edu)

## Environment Setup (Windows 10)

### Step 1: Download the Berkeley minor map:
- The zip file is [available here](https://drive.google.com/file/d/1hyI9SyjxFG7IV-c6RQxz26fs5LijRogY/view?usp=sharing). 
- Please make sure you download the engine from this link, since there are multiple carla version and engines within ROAR project.
- Please download it to a disk with more than 10GB available spaces, and then unzip the file.
- After that, you can get a `Carla` folder.

### Step 2: Install Anaconda
https://docs.anaconda.com/anaconda/install/index.html

### Step 3: Clone code and Setup Environment
1. Clone the repo
```
git clone https://github.com/Allison-1999/ROAR_Multi_Client_Sim.git
```
2. Create a new virtual environment and activate it
```
conda create -n roar_multi_client_3.7.7 python=3.7.7
conda activate roar_multi_client_3.7.7
```
3. Install packages
All dependencies have been put into requirements.txt
```
cd ROAR_Multi_Client_Sim
pip install -r requirements.txt
```

## Demo (Windows 10)

### 1. Start the UE4 simulator (server)
Step into the `Carla` folder you got in the Setup step 1
, which contains the following files, the file pointed by the arrow is the simulator we need to run later.

![](readme_figures/CarlaUE4.png)

Double click the `CarlaUE4`, then a simulator window with Berkeley minor map will be opened as followed:
![](readme_figures/CarlaUE4_Window.png)

### 2. Start clients
**You should get the same results as [this vedio](https://youtu.be/AVae--XGkb0)**

A Windows .bat script has been provided to generate the same demo.

Please step into the client folder under ROAR_Multi_Client_Sim
```
cd client
```
Then run the script:
```
.\run_example.bat
```
If the clients hasn't started as the demo vedio, please refer to the first entry under Common Problems and Solutions part below.

### 3. The expectation of the demo results:

* Four vehicles can be generated one by one into the same map.
* Each vehicle will be controlled by one client to run around the map one loop and then stop near the starting point
* The `information of all current vehicles` will be dynamically shown on the terminal every 200 frames (around 3 sec), including the id of each vehicle and their `location(x,y,z)`, `rotation(pitch, yall, roll)`, and `velocity(vx,vy,vz)`.




## [Important] Common Problems and Solutions:
1. 

2.
```RuntimeError: time-out of 2000ms while waiting for the simulator, make sure the simulator is ready and connected to 127.0.0.1:2000```

[**`Important`**] The server run on localhost port `2000` and `2001`. Client also been set to connect to these ports. If the Server doesn't run on the port `2000`.
