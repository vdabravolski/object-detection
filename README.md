# Object Detection Overview

Object detection is a set of tasks and techniques in Computer Vision domain. Typical object detection tasks are:
* object recognition - find and classify object(s) on the image;
* object localization - find object(s) on image and draw bounding box(es);
* object segmentation - find specific pixels associated with object(s).


When implementing object detection algorithms, consider following challenges:
* In real life production systems, you have to deal with images and videos of varying sizes, quality, and formats.
* Objects from same class can greatly vary in sizes, space orientation, color (e.g a single bird vs flock of birds)
* You rarely know number of objects on the image or whether objects of interest are present at all.
* Video can be represented as stream of individual images, and you can apply the same object detection algorithms. However, video frame rate (e.g. 24fps) sets higher performance requirements for object detefction algorithms at inference time.


# Available Algorithms 

## HOG
Proposed in 2005, Histogram of Oriented Gradients (HOG) provides a feture descriptor which can be used for object detection tasks. HOG is computationally inexpensive and is being used for years in production systems. Typical tasks include but not limited to face detection, person detection.

## R-CNN
R-CNN ("Region-based Convolutional Neural Network") is a family of related algorithms. These algorithms have two stages:
* first stage - nominate region candidates for object locations;
* second stage - classify objects in the nominated regions.

Currently, [Faster-RCNN](https://arxiv.org/abs/1506.01497) algorithm is considered a state of art for approach, combining high accuracy with good performance. 

A further extension, [Mask R-CNN](https://github.com/matterport/Mask_RCNN) provides pixel segmentation capabilities.

## YOLO
[YOLO](https://arxiv.org/abs/1506.02640) ("you only look once") - unlike RCNN algorithms, YOLO uses single CNN to analyze the whole image, detect regions of interest, and perform classification. Thus achieving low latency at inference time comparing to R-CNN algorithms.

## SSD
[Single Shot Detector](https://arxiv.org/abs/1512.02325)

## F-RCN
Unlike other region-based algorithms, Region-based Fully Convolutional Network ([F-RCN](https://arxiv.org/pdf/1605.06409.pdf)) applies computation to entire images. This significantly reduces algorithmic complexity and inference latency while keeping accuracy on-par with state of art R-CNN.

#  Available datasets
* [MS COCO](http://cocodataset.org/#home)
* [OPen Images v5](https://storage.googleapis.com/openimages/web/download.html)

# Proposed Labs
## 1. Object recognition for images
**Lab outline**: using Sagemaker capabilities, train and deploy object recongnition models using one of the available algorithms. While selecting algorithm, need to consider if this algorithm can be applied to video and at edge (further labs). Therefore, worth considering YOLO3, F-RCN or SSD.

## 2. Object recognition on video stream
**Lab outline**: using Sagemaker and Kinesis Video Streams, create end-to-end video processing pipeline which recognizes objects in near-real time and playback video stream with object detection overlay. This lab will re-use model trained in Lab1.

## 3. Object recognition at the edge
**Lab outline**: using Sagemaker Neo capabilites, optimize and deploy object recongnition model at your edge device. 