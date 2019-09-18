#!/bin/bash
# Download and install Mask_RCNN implementations
git clone https://github.com/matterport/Mask_RCNN
cd Mask_RCNN
python setup.py install

# Download pretrained model weights for COCO dataset
wget https://github.com/matterport/Mask_RCNN/releases/download/v2.0/mask_rcnn_coco.h5
    
# Install pycocotools to work with MS COCO data set. 
git clone https://github.com/pdollar/coco.git
cd coco/PythonAPI
make
sudo make install
sudo python setup.py install
