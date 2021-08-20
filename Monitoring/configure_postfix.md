First, update the package database:

    sudo apt update

 

Next, install mailtuils:

    sudo apt install mailutils

 

Finally, install postfix:

    sudo apt install postfix

Near the end of the installation process, you will be presented with a window that looks like the one in the image below. The default option is Internet Site. That’s the recommended option for this tutorial, so press TAB, then ENTER.
    
![](https://github.com/nu11secur1ty/openvpn-server/blob/master/Monitoring/docs/1.png)

After that, you’ll get another window just like the one in the next image. The System mail name should be the same as the name you assigned to the server when you were creating it. If it shows a subdomain like subdomain.example.com, change it to just example.com. When you’ve finished, press TAB, then ENTER.

![](https://github.com/nu11secur1ty/openvpn-server/blob/master/Monitoring/docs/2.png)
