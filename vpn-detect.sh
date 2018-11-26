#!/bin/bash
##Script created and maintained by RootPrivacy.com##
##Release 1.0##

##Forgive me, for this is most likely the ugliest fucking script I have ever written.##
##I was too fucking lazy to do it properly, this was a rush project, but it works.##
###If you have any problems or suggestions please feel free to contact me (contact@rootprivacy.com)###
                                     ####Enjoy####




clear
##coloring
tput setab 0;
tput bold;
echo "$(tput setaf 2)"
##
read -p 'Are you currently connected to your VPN? (Y/N):' -e CHECK
if [[ "$CHECK" = "Y" || "$CHECK" = "y" ]];then

    ##Connection Assumed##
    vpn=$(curl -s https://api.ipify.org)
    vpncheck=$(curl -s https://api.ipify.org)

    while [[ "$vpncheck" = "$vpn" ]];do
     vpncheck=$(curl -s https://api.ipify.org)
     echo VPN Connected!
     sleep 5
     clear
    done

    if [[ "$vpncheck" != "$vpn" ]];then
            tput blink;
            tput smso;
            echo "YOU ARE NOT PROTECTED!"
            tput sgr0
            echo "$(tput setaf 2)"
            tput bold;
            nmcli networking off
            echo For your security we have disabled all network interfaces.
            read -p 'Would you like to enable interfaces now? (Y/N)' -e NetworkStatus
            if [[ "$NetworkStatus" = 'Y' || "$NetworkStatus" = 'y' ]];then 
                clear
                nmcli networking on
                echo 'Interfaces enabled.'
                read -p 'Press enter to continue.'

                else
    
                     echo 'We have left the network disabled,'
                     echo You may re-enable it at any time with this command. 
                     echo 'nmcli networking on'
                     sudo bash ${0}
                fi
               fi
              fi
                    

        



    
     
    
##Disconnected Assumed##
if [[ "$CHECK" = "N" || "$CHECK" = "n" ]];then
    localhost=$(curl -s https://api.ipify.org)
    echo 'Current IP Address:'$localhost
    echo 'Please connect to VPN...'
    read -p 'Press enter to continue...'
    clear
    ip=$(curl -s https://api.ipify.org)
    while [[ "$ip" != "$localhost" ]];do
        ip=$(curl -s https://api.ipify.org)
        echo VPN Connected!
        sleep 5
        clear
    done
    if [[ "$ip" = "$localhost" ]];then
        tput blink;
        tput smso;
        echo "YOU ARE NOT PROTECTED!"
        tput sgr0
        echo "$(tput setaf 2)"
        tput bold;
        nmcli networking off
        echo For your security we have disabled all network interfaces.
        read -p 'Would you like to enable interfaces now? (Y/N)' -e NetworkStatus
        if [[ "$NetworkStatus" = 'Y' || "$NetworkStatus" = 'y' ]];then 
            clear
            nmcli networking on
            echo 'Interfaces enabled.'
            read -p 'Press enter to continue.'
            else

        echo 'We have left the network disabled,'
        echo You may re-enable it at any time with this command. 
        echo 'nmcli networking on'
    fi
   fi
  fi
  #  sudo bash ${0}
        
        
