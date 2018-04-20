echo "Initiating Raspberry Pi personal package manager: "
echo
sudo apt-get install software-properties-common -y
sudo apt-get update && apt-get upgrade -y
sudo apt-get install libbluetooth-dev git python3 python3-pip emacs25 emacs25-el emacs25-common-non-dfsg -y
# fro emacs24 --> sudo  apt-get install emacs24 emacs24-el emacs24-common-non-dfsg
sudo pip3 install --upgrade pip
sudo pip3 install pybluez
sudo pip3 install elpy jedi flake8 rope_py3k importmagic autopep8 yapf
sudo rm -rf .emacs*
sudo mkdir ~/.emacs.d
cat <<EOF > ~/.emacs.d/init.el
";; Start
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; configure elpy
(elpy-enable)

;; py3
(setq elpy-rpc-python-command "python3")
(setq python-shell-interpreter "python3")

EOF

echo "Python-kivy installation: "
echo
sudo apt-get install libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev \
   pkg-config libgl1-mesa-dev libgles2-mesa-dev \
   python-setuptools libgstreamer1.0-dev git-core \
   gstreamer1.0-plugins-base gstreamer1.0-plugins-bad gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly  \
   gstreamer1.0-omx gstreamer1.0-alsa python-dev libmtdev-dev \
   xclip xsel

sudo pip install -U Cython==0.27.3
sudo pip install git+https://github.com/kivy/kivy.git@master
