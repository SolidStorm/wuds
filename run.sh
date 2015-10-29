#iface=`grep IFACE config.py | cut -d'=' -f 2 | sed "s/['\" ]//g"`
#sudo iw dev wlan0 interface add $iface type monitor
#sudo ifconfig $iface up
sudo python ./core.py
#sudo ifconfig $iface down
#sudo iw dev $iface del

# or : ifconfig wlan0 down && iwconfig wlan0 mode Monitor && ifconfig wlan0 up

aircrack-ng start wlan0
sudo python ./core.py

airmon-ng stop mon0
airmon-ng stop wlan0
