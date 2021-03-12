add_library(apriltag_opencv SHARED apriltag_opencv.cpp)
target_link_libraries(apriltag_opencv apriltag ${CMAKE_THREAD_LIBS_INIT} ${OPENCV_LDFLAGS} m)

add_executable(apriltag_opencv_demo apriltag_opencv_demo.cpp)
target_link_libraries(apriltag_opencv_demo apriltag apriltag_opencv ${CMAKE_THREAD_LIBS_INIT} ${OPENCV_LDFLAGS} m)

add_executable(apriltag_opencv_test apriltag_opencv_test.cpp)
target_link_libraries(apriltag_opencv_test apriltag apriltag_opencv ${CMAKE_THREAD_LIBS_INIT} ${OPENCV_LDFLAGS} m)

add_executable(apriltag_image apriltag_image.cpp)
target_link_libraries(apriltag_image apriltag apriltag_opencv ${CMAKE_THREAD_LIBS_INIT} ${OPENCV_LDFLAGS} m)

add_executable(apriltag_video apriltag_video.cpp)
target_link_libraries(apriltag_video apriltag apriltag_opencv ${CMAKE_THREAD_LIBS_INIT} ${OPENCV_LDFLAGS} m)

add_executable(box_test box_test.cpp)
target_link_libraries(box_test apriltag apriltag_opencv ${CMAKE_THREAD_LIBS_INIT} ${OPENCV_LDFLAGS} m)

add_executable(contour_line_sweep_test contour_line_sweep_test.cpp)
target_link_libraries(contour_line_sweep_test apriltag apriltag_opencv ${CMAKE_THREAD_LIBS_INIT} ${OPENCV_LDFLAGS} m)

add_executable(contour_bench contour_bench.cpp)
target_link_libraries(contour_bench apriltag apriltag_opencv ${CMAKE_THREAD_LIBS_INIT} ${OPENCV_LDFLAGS} m)

install(TARGETS apriltag_opencv DESTINATION lib)
install(TARGETS apriltag_opencv_demo apriltag_opencv_test apriltag_image apriltag_video DESTINATION bin)
