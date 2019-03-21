#!/bin/bash
echo 'Enter the path to the Repos Toolbox ie(/root/TheCollective/Toolbox/:'
read Path
cd $Path
git pull
