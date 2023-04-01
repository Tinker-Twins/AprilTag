# AprilTag

![Github Stars](https://badgen.net/github/stars/Tinker-Twins/AprilTag?icon=github&label=stars)
![Github Forks](https://badgen.net/github/forks/Tinker-Twins/AprilTag?icon=github&label=forks)

### AprilTag Detection and Pose Estimation Library for C, C++ and Python
### Robot Operating System (ROS): [ROS 1](https://github.com/Tinker-Twins/AprilTag-ROS-1) and [ROS 2](https://github.com/Tinker-Twins/AprilTag-ROS-2) Packages

<p align="justify">
This repository hosts the C library for AprilTag, a visual fiducial system popular in robotics research. It can be used to develop high performance software for autonomous systems pertaining to perception, localization, mapping, SLAM as well as extended reality applications.
</p>
<p align="justify">
This library supports C, C++ and Python for extended user support and seamless integration with existing software. It is capable of detecting and tracking single as well as multiple tags and computing their pose (homogeneous transformation matrix) w.r.t. camera in real-time.
</p>

| Type | Single Tag | Multiple Tags |
| :---:| :--------: | :-----------: |
| Image | ![Single Tag](/media/single_tag.jpg) | ![Multiple Tags](/media/multiple_tags.jpg) |
| Video | ![Single Tag](/media/single_tag.gif) | ![Multiple Tags](/media/multiple_tags.gif) |

## DEPENDENCIES

`OpenCV` (optional) - Note that the C library will compile successfully without this dependency. However, it is required in order to run certain example/demo code.

## SETUP

1. Clone this `AprilTag` repository to your local machine.
    ```bash
    $ git clone https://github.com/Tinker-Twins/AprilTag.git
    ```
2. Install the library (build the source code) using the `install.sh` shell script (requires [CMake](https://cmake.org/)).
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
3. Calibrate your camera and note its intrinsic parameters `fx, fy, cx, cy`. You might find [this](https://github.com/Tinker-Twins/Camera-Calibration) repository helpful.

## USAGE

<p align="justify">
Once the C/C++ source code is built, the executables and Python wrapper can be executed in order to run detections on image(s) or video stream(s). Following are some examples/demos of utilizing this library.
</p>

### C

#### Executable: `apriltag_demo`

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

### C++

#### Executable: `apriltag_opencv_demo`
```bash
Usage: ./apriltag_opencv_demo [options] <input files>
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
  -n | --no-gui         [ false ]      Suppress GUI output from OpenCV   
  -B | --benchmark      [ false ]      Benchmark mode (assumes -n)
```
Example:
```bash
$ cd ~/AprilTag/build/bin
$ ./apriltag_opencv_demo ../../media/input/*.jpg
```

#### Executable: `apriltag_image`
```bash
Usage: ./apriltag_image [options] <path to image file>
  -h | --help           [ true ]       Show this help   
  -q | --quiet          [ false ]      Reduce output   
  -f | --family         [ tag36h11 ]   Tag family to use   
       --border         [ 1 ]          Set tag family border size   
  -t | --threads        [ 4 ]          Use this many CPU threads   
  -x | --decimate       [ 1.0 ]        Decimate input image by this factor   
  -b | --blur           [ 0.0 ]        Apply low-pass blur to input   
  -0 | --refine-edges   [ true ]       Spend more time aligning edges of tags   
  -1 | --refine-decode  [ true ]       Spend more time decoding tags   
  -2 | --refine-pose    [ true ]       Spend more time computing pose of tags   
  -c | --contours       [ true ]       Use new contour-based quad detection
```
Examples:
```bash
$ cd ~/AprilTag/build/bin
$ ./apriltag_image ../../media/input/single_tag.jpg
$ ./apriltag_image ../../media/input/multiple_tags.jpg
```

#### Executable: `apriltag_video`
```bash
Usage: ./apriltag_video [options] <camera index or path to movie file>
  -h | --help           [ true ]       Show this help   
  -q | --quiet          [ false ]      Reduce output   
  -f | --family         [ tag36h11 ]   Tag family to use   
       --border         [ 1 ]          Set tag family border size   
  -t | --threads        [ 4 ]          Use this many CPU threads   
  -x | --decimate       [ 1.0 ]        Decimate input image by this factor   
  -b | --blur           [ 0.0 ]        Apply low-pass blur to input   
  -0 | --refine-edges   [ true ]       Spend more time aligning edges of tags   
  -1 | --refine-decode  [ false ]      Spend more time decoding tags   
  -2 | --refine-pose    [ false ]      Spend more time computing pose of tags   
  -c | --contours       [ false ]      Use new contour-based quad detection
```
Examples:
```bash
$ cd ~/AprilTag/build/bin
$ ./apriltag_video 0
$ ./apriltag_video ../../media/input/single_tag.mp4
$ ./apriltag_video ../../media/input/multiple_tags.mp4
```

### Python

<p align="justify">
Note that you must build the software per the instructions above before the Python wrapper can be used. If you did not install the libraries to the system-wide library directory and you are not running Python code from the <code>scripts</code> directory in this repository, your Python code must specify the path for the apriltag shared library when constructing an <code>apriltag.Detector</code> object.
</p>

#### Script: `apriltag.py`

- `class Detector()`
  
  <p align="justify">
  Python class for AprilTag detector. Initialize by passing in the output of an <code>argparse.ArgumentParser</code> on which you have called
  <code>add_arguments</code>; or an instance of the <code>DetectorOptions</code> class.  You can also optionally pass in a list of paths to
  search for the C dynamic library used by ctypes.
  </p>
  
- `function detect_tags()`

  Detect AprilTags from image.

  ```
  Args:   image [image]: Input image to run detection algorithm on
          detector [detector]: AprilTag Detector object
          camera_params [_camera_params]: Intrinsic parameters for camera (fx, fy, cx, cy)
          tag_size [float]: Physical size of tag in user defined units (m or mm recommended)
          vizualization [int]: 0 - Highlight
                               1 - Highlight + Boxes
                               2 - Highlight + Axes
                               3 - Highlight + Boxes + Axes
          verbose [int]: 0 - Silent
                         1 - Number of detections
                         2 - Detection data
                         3 - Detection and pose data
          annotation [bool]: Render annotated text on detection window
  ```

#### Script: `apriltag_image.py`

- `function apriltag_image()`

  Detect AprilTags from static images.

  ```
  Args:   input_images [list(str)]: List of images to run detection algorithm on
          output_images [bool]: Boolean flag to save/not images annotated with detections
          display_images [bool]: Boolean flag to display/not images annotated with detections
          detection_window_name [str]: Title of displayed (output) tag detection window
  ```
- Usage:
  
  ```bash
  $ cd ~/AprilTag/scripts
  $ python3 apriltag_image.py
  ```
  

#### Script: `apriltag_video.py`

- `function apriltag_video()`

  Detect AprilTags from video stream.

  ```
  Args:   input_streams [list(int/str)]: Camera index or movie name to run detection algorithm on
          output_stream [bool]: Boolean flag to save/not stream annotated with detections
          display_stream [bool]: Boolean flag to display/not stream annotated with detections
          detection_window_name [str]: Title of displayed (output) tag detection window
  ```
- Usage:
  
  ```bash
  $ cd ~/AprilTag/scripts
  $ python3 apriltag_video.py
  ```

## DEMO

Implementation demonstrations are available on [YouTube](https://youtu.be/cG5c2yfupLI).

## ACKNOWLEDGEMENT

The development of this library and the examples has been hugely inspired by the following sources:
- https://github.com/AprilRobotics/apriltag
- https://github.com/swatbotics/apriltag
