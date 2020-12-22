![](https://github.com/nu11secur1ty/openvpn-server/blob/master/Debian/logo/Debian_logo.png)

# WARNING: ***Minimal Requirements*** Debian 9
```
PRETTY_NAME="Debian GNU/Linux 9 (stretch)"
NAME="Debian GNU/Linux"
VERSION_ID="9"
VERSION="9 (stretch)"
VERSION_CODENAME=stretch
ID=debian
HOME_URL="https://www.debian.org/"
SUPPORT_URL="https://www.debian.org/support"
BUG_REPORT_URL="https://bugs.debian.org/"
```
---------------------------------------------------------------------------

```bash
PRETTY_NAME="Debian GNU/Linux 10 (buster)"
NAME="Debian GNU/Linux"
VERSION_ID="10"
VERSION="10 (buster)"
VERSION_CODENAME=buster
ID=debian
HOME_URL="https://www.debian.org/"
SUPPORT_URL="https://www.debian.org/support"
BUG_REPORT_URL="https://bugs.debian.org/"
```

**New: [wireguard-install](https://github.com/Nyr/wireguard-install) is also available.**

## openvpn-install
OpenVPN [road warrior](http://en.wikipedia.org/wiki/Road_warrior_%28computing%29) installer for Ubuntu, Debian, CentOS and Fedora.

- - - How to

![](https://github.com/nu11secur1ty/openvpn-server/blob/master/Debian/logo/Capture.PNG)

This script will let you set up your own VPN server in no more than a minute, even if you haven't used OpenVPN before. It has been designed to be as unobtrusive and universal as possible.

### Installation
Run the script and follow the assistant:

`wget https://raw.githubusercontent.com/nu11secur1ty/openvpn-server/master/Debian/openvpn-install.sh`

or 

`wget https://git.io/vpn -O openvpn-install.sh && bash openvpn-install.sh`

- - - Deployment

```bash
  cd Debian/
  bash openvpn-install.sh # example user: admin
  cp /etc/openvpn/client/admin.ovpn /var/www/html/ # transfer your admin.ovpn config
  systemctl status openvpn-server@server.service # checking the status
 ```
------------------------------------------------------------------------------------------------------------

Once it ends, you can run it again to add more users, remove some of them or even completely uninstall OpenVPN.

### I want to run my own VPN but don't have a server for that
You can get a VPS from just $1/month at [VirMach](https://billing.virmach.com/aff.php?aff=4109&url=billing.virmach.com/cart.php?gid=18).

### Donations

If you want to show your appreciation, you can donate via [PayPal](https://www.paypal.com/donate?hosted_button_id=T9UA4R3FS4T9C)
Thanks!

## Compatibility

The script supports these OS and architectures:

|                 | i386 | amd64 | armhf | arm64 |
| --------------- | ---- | ----- | ----- | ----- |
| Amazon Linux 2  | ❔   | ✅    | ❔    | ❔    |
| Arch Linux      | ❔   | ✅    | ❔    | ✅    |
| CentOS 7        | ✅   | ✅    | ✅    | ✅    |
| CentOS 8        | ❌   | ✅    | ❌    | ✅    |
| Debian >= 9     | ✅   | ✅    | ✅    | ✅    |
| Debian >= 10     | ✅   | ✅    | ✅    | ✅    |
| Fedora >= 27    | ❔   | ✅    | ❔    | ❔    |
| Ubuntu 16.04    | ✅   | ✅    | ❌    | ❌    |
| Ubuntu >= 18.04 | ✅   | ✅    | ✅    | ✅    |

To be noted:

- It should work on Ubuntu 16.04+. But versions not in the table above are not officially supported.
- The script requires `systemd`.
- The script is regularly tested against `amd64` only.
