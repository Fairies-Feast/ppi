echo "Welcome to the PPI installer!"
echo "This software is provided As Is. We are not responsible for any malfunction or problem caused by this software"
echo "WARNING! PPI will be installed in the ~ folder."
echo "When you are ready to continue, press ENTER."
read
clear
echo "This tool will attempt to install Python, if not already installed."
cd ~
if command -v apt >/dev/null; then
    apt update
    apt install -y python3 curl

elif command -v dnf >/dev/null; then
    dnf install -y python3 curl

elif command -v pacman >/dev/null; then
    pacman -Sy --noconfirm python curl

elif command -v zypper >/dev/null; then
    zypper install -y python3 curl

elif command -v apk >/dev/null; then
    apk add python3 curl

else
    echo "Unsupported package manager"
    echo "Try using Ubuntu."
    exit 1
fi

rm ppi-app.py
unalias ppi
alias ppi="cd ~ && python3 ppi-app.py"
curl https://ppi-source.pages.dev/ppi-app.py >> ppi-app.py
apt install python3.13-venv
python3 -m venv venv
source venv/bin/activate
pip install requests
clear
python ppi-app.py
