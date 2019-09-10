# Object Detection Overview

Object detection is a set of tasks and technique in Computer Vision domain. Popular object detection problems may inlcude one or combination of following tasks:
* object recognition - find and classify object(s) on the image;
* object localization - find object(s) on image and draw bounding box(es);
* object segmentation - find specific pixels associated with object(s).


Consider following typical problems when dealing with object detection:
* In real life production systems, you have to deal with images and videos of varying sizes, quality, and formats.
* Video can be represented as stream of individual images, and you can apply the same object detection algorithms. However, video frame rate (e.g. 24fps) presents high performance requirements for object detefction algorithms at inference time.
* You rarely know number of objects on the image or whether objects of interst are present at all.
* Objects from same class can greatly vary in sizes, space orientation, color etc.


# Available Algorithms 

## HOG
Proposed in 2005, Histogram of Oriented Gradients (HOG) provides a feture descriptor which can be used for object detection tasks. HOG is computationally inexpensive and is being used for  years in production systems. Typical tasks include but not limited to face detection, person detection.

## R-CNN
R-CNN ("Region-based Convolutional Neural Network") is a family of related algorithms. At the core is idea to nominate a specific regions which contain objects with high probability and run CNN on these candidate regions for further object classification. 

Currently, [Faster-RCNN](https://arxiv.org/abs/1506.01497) algorithm is considered a state of art for  object detection, combining high accuracy with good performance. 

A further extension, [Mask R-CNN] (https://github.com/matterport/Mask_RCNN) provides pixel segmentation capabilities.

## YOLO
YOLO ("you only look once")

## SSD
Single Shot Detector (SSD)

# Frameworks Overview
TBD.

#  Available datasets
* [MS COCO](http://cocodataset.org/#home)

# Proposed Labs
1. Object recognition using R-CNN;
2. Object segmentation using Mask RCNN;
4. Object detection on video stream using YOLO3.