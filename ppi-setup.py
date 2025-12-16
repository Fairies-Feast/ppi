import requests
import os
import time


def main():
    os.remove("install.sh")
    os.system('clear')
    print("Installing PPI...")
    os.system("unalias ppi")
    os.system('alias ppi="cd ~ && python3 ppi-app.py"')
    os.system("curl https://ppi-source.pages.dev/ppi-app.py >> ppi-app.py")
    os.system("clear")
    print("PPI is installed!")
    print("Use 'ppi' in the terminal to use PPI!")

if __name__ == "__main__":
    main()
 
