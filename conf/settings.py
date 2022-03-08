import os

BASE_PATH = os.path.dirname(os.path.dirname(__file__))
OUT_DIR = os.path.join(BASE_PATH, 'out')
if not os.path.exists(OUT_DIR):
    os.makedirs(OUT_DIR)