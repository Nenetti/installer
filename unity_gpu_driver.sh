#!/bin/sh
# GPU_APIのVulkanのインストール

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
sudo apt-get install mesa-utils
sudo apt-get install vulkan-utils libvulkan1 libvulkan-dev
