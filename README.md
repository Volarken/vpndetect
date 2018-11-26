# vpndetect
##VPN Detect, by RootPrivacy.com##

Script built for Linux - Windows version comming soon.

Can be installed with this command: wget http://bit.do/0vpndetect -O vpn-detect.sh && bash vpn-detect.sh

Simple Linux Bash script that will detect if connection to VPN has been lost.

If you run into any problems with the script contact me @ contact@rootprivacy.com

Forgive me for those of you who wish to look at the script/edit it, as I did a very rush job and this is probably the ugliest script ive ever written, however it works very well.

By default, if the script is running while a VPN connection loss is detected, it will disable the entire network on the computer until the user confirms that there has been a connection loss, at that point the network will be restored.
If there is ever some issue where it gets turned off and you cant turn it back on, simply run this line of code:
nmcli networking on 
