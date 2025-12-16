import requests
import os
import time


def main():
    os.remove("install.sh")

    for i in range(5):
        print("PPI Setup has been installed!")
        print("Please wait while we set up PPI.")
        print(i*20 + "% done")
        time.sleep(1)

if __name__ == "__main__":
    main()
 
