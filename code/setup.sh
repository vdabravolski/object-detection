#!/bin/bash

# Cleaning work dir
WORK_DIR=$1
cd $WORK_DIR
rm -rf $WORK_DIR/Mask_RCNN
rm -rf $WORK_DIR/coco
rm -r $WORK_DIR/mask_rcnn_coco.h5

# Download and install Mask_RCNN implementations
git clone https://github.com/matterport/Mask_RCNN
cd $WORK_DIR/Mask_RCNN
python setup.py install

# Download pretrained model weights for COCO dataset
wget -P $WORK_DIR https://github.com/matterport/Mask_RCNN/releases/download/v2.0/mask_rcnn_coco.h5
    
# Install pycocotools to work with MS COCO data set. 
cd $WORK_DIR
git clone https://github.com/pdollar/coco.git
cd $WORK_DIR/coco/PythonAPI
make
sudo make install
sudo python setup.py install