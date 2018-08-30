cmake_minimum_required(VERSION 3.8)
project(BCM2835_v4l2)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        bcm2835-camera.c
        bcm2835-camera.h
        controls.c
        mmal-common.h
        mmal-encodings.h
        mmal-msg-common.h
        mmal-msg-format.h
        mmal-msg-port.h
        mmal-msg.h
        mmal-parameters.h
        mmal-vchiq.c
        mmal-vchiq.h)

add_executable(BCM2835_v4l2 ${SOURCE_FILES})