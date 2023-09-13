# rob599-av-project

## Run
### Simulator:
```bash
$ cd docker
$ chmod +x run.sh
$ ./run.sh
```
The first run will be quite slow, as the docker container has to be built.

### Scripts
The CARLA Python API requires Python3.8 or lower. I suggest using conda to create a python3.8 environment. 

Then, install the CARLA API:
```bash
$ python3.8 -m pip install carla==0.9.14
```

Run a script of your chosing in the ```scripts/``` directory, while the simulator is running through docker. You may need to install other python libs (like pygame for the manual control script).

### Troubleshooting
If you get this error when running scripts: *libGL error: MESA-LOADER: failed to open iris*
```bash
$ conda install -c conda-forge libstdcxx-ng
```
