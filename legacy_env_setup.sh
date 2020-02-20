# Default Python venv
# **run commands with pip3/python3 as appropriate**
# sudo apt-get install python3-venv
# python3 -m venv unet-env
# source unet-env/bin/activate

# Conda venv
conda create --name unet-env-conda
conda activate unet-env-conda

pip install keras==1.2.0
pip install theano==1.0.4

pip install matplotlib
pip install tifffile
pip install shapely
pip install opencv-python
pip install pandas

conda install -c anaconda pygpu=0.6.4
pip install nose
pip install numpy==1.18.0

pip install h5py

export THEANO_FLAGS='device=cuda,floatX=float32'
KERAS_BACKEND=theano python training.py
