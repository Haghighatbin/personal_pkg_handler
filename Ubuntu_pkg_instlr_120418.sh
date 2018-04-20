sudo add-apt-repository -y ppa:kivy-team/kivy-daily
sudo add-apt-repository -y ppa:adrozdoff/emacs
sudo apt-get update && apt-get upgrade -y
sudo apt-get install python3 python3-pip python3-kivy libbluetooth-dev emacs25 -y
# fro emacs24 --> sudo  apt-get install emacs24 emacs24-el emacs24-common-non-dfsg
sudo pip3 install --upgrade pip
sudo pip3 install pybluez
sudo pip3 install elpy jedi flake8 rope_py3k importmagic autopep8 yapf
sudo rm -rf .emacs*
sudo mkdir ~/.emacs.d
cat <<EOF > ~/.emacs.d/init.el
;; Start
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; configure elpy
(elpy-enable)

;; py3
(setq elpy-rpc-python-command "python3")
(setq python-shell-interpreter "python3")

EOF
