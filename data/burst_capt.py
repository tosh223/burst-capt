import os
import sys
import time
from datetime import datetime

import cv2

def main(dir_path, sec):
    cap = cv2.VideoCapture(0)

    if not cap.isOpened():
        print('No camera detected')
        return

    while True:
        ret, frame = cap.read()
        shoot_time = datetime.now()
        image_file = dir_path + shoot_time.strftime('%Y%m%d_%H%M%S%f') +'.jpg'
        cv2.imwrite(image_file, frame)
        time.sleep(sec)

if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2])
