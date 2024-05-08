#!/bin/bash

python utils/data_prepare_s3dis.py

python main_S3DIS.py --mode train --gpu 0 --test_area 5 --labeled_point 0.1%
python main_S3DIS.py --mode test --gpu 0 --test_area 5

python main_S3DIS.py --mode test --gpu 0 --test_area 1 --gen_pesudo
python main_S3DIS.py --mode test --gpu 0 --test_area 2 --gen_pesudo
python main_S3DIS.py --mode test --gpu 0 --test_area 3 --gen_pesudo
python main_S3DIS.py --mode test --gpu 0 --test_area 4 --gen_pesudo
python main_S3DIS.py --mode test --gpu 0 --test_area 6 --gen_pesudo
python main_S3DIS.py --mode train --gpu 0 --test_area 5 --labeled_point 0.1% --retrain
python main_S3DIS.py --mode test --gpu 0 --test_area 5 --labeled_point 0.1%