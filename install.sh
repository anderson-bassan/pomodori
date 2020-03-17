#! /bin/bash


# install dependencies
sudo apt install sox libsox-fmt-mp3

# make the pomodori a command
sudo chmod +777 beep.mp3
sudo chmod +777 pomodori
sudo mkdir /usr/bin/bss_pomodori
sudo mv beep.mp3 /usr/bin/bss_pomodori/
sudo mv pomodori /usr/bin/bss_pomodori/

# update path
echo "export PATH=/usr/bin/bss_pomodori:$PATH" >> ~/.bashrc

# remove installer folder

cur_dir=$(pwd)
cd ../
sudo rm -r $cur_dir

