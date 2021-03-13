# AprilTag
### AprilTag Detection and Pose Estimation Library for C, C++ and Python

<p align="justify">
This repository hosts the C library for AprilTag, a visual fiducial system popular in robotics research. It can be used to develop high performance software for autonomous systems pertaining to perception, localization, mapping, SLAM as well as extended reality applications.
</p>
<p align="justify">
This library supports C, C++ and Python for extended user support and seamless integration with existing software. It is capable of detecting and tracking single as well as multiple tags and computing their pose (homogeneous transformation matrix) w.r.t. camera in real-time.
</p>

## DEPENDENCIES

`OpenCV` (optional) - Note that the C library will compile successfully without this dependency. However, this dependency is required in order to run certain example/demo code.

## SETUP

1. Clone this `AprilTag` repository to your local machine.
    ```bash
    $ git clone https://github.com/Tinker-Twins/AprilTag.git
    ```
2. Install the library (build the source code) using the `install.sh` shell script.
    ```bash
    $ cd ~/AprilTag
    $ ./install.sh
    ```
  
    _**Note:** To uninstall (clean) and rebuild the entire source code, use the the `uninstall.sh` and `install.sh` shell scripts._
    ```bash
    $ cd ~/AprilTag
    $ ./uninstall.sh
    $ ./install.sh
    ```
## USAGE

<p align="justify">
Once the C/C++ source code is built, the executables and python wrapper can be executed in order to run detections on image(s) or video stream(s). Following are some examples/demos of utilizing this library.
</p>

### C
```bash
Usage: ./apriltag_demo [options] <input files>
  -h | --help           [ true ]       Show this help   
  -d | --debug          [ false ]      Enable debugging output (slow)   
  -q | --quiet          [ false ]      Reduce output   
  -f | --family         [ tag36h11 ]   Tag family to use   
       --border         [ 1 ]          Set tag family border size   
  -i | --iters          [ 1 ]          Repeat processing this many times   
  -t | --threads        [ 4 ]          Use this many CPU threads   
  -x | --decimate       [ 1.0 ]        Decimate input image by this factor   
  -b | --blur           [ 0.0 ]        Apply low-pass blur to input   
  -0 | --refine-edges   [ true ]       Spend more time aligning edges of tags   
  -1 | --refine-decode  [ false ]      Spend more time decoding tags   
  -2 | --refine-pose    [ false ]      Spend more time computing pose of tags   
  -c | --contours       [ false ]      Use new contour-based quad detection   
  -B | --benchmark      [ false ]      Benchmark mode
```
Example:
```bash
$ cd ~/AprilTag/build/bin
$ ./apriltag_demo ../../media/input/*.pnm
```
