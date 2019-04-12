import sys

def add_path(path):
    if path not in sys.path:
        sys.path.insert(0,path)

pycaffe_path = '/home/wen/caffe-master/python'
add_path(pycaffe_path)
