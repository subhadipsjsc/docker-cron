import time 
import os


def your_function():
    PY_VAR = os.environ.get('DOCKER_PY_VAR', '--')
    print("Hello, World : "+PY_VAR)

your_function()

# while True:
#     your_function()
#     time.sleep(10) 