![](https://github.com/nu11secur1ty/openvpn-server/blob/master/Ubuntu20.04/logo/Ubuntu-Logo.png)

```bash
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=20.10
DISTRIB_CODENAME=groovy
DISTRIB_DESCRIPTION="Ubuntu 20.10"
NAME="Ubuntu"
VERSION="20.10 (Groovy Gorilla)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 20.10"
VERSION_ID="20.10"
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
VERSION_CODENAME=groovy
UBUNTU_CODENAME=groovy
```

**New: [wireguard-install](https://github.com/Nyr/wireguard-install) is also available.**

## openvpn-install
OpenVPN [road warrior](http://en.wikipedia.org/wiki/Road_warrior_%28computing%29) installer for Ubuntu, Debian, CentOS and Fedora.

This script will let you set up your own VPN server in no more than a minute, even if you haven't used OpenVPN before. It has been designed to be as unobtrusive and universal as possible.

### Installation
Run the script and follow the assistant:

`wget https://raw.githubusercontent.com/nu11secur1ty/openvpn-server/master/Ubuntu20.04/openvpn-install.sh`

or

`wget https://git.io/vpn -O openvpn-install.sh && bash openvpn-install.sh`


- - - Deployment

```bash
  cd Ubuntu20.04/
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
| Ubuntu >= 20.04 | ✅   | ✅    | ✅    | ✅    |
| Ubuntu >= 20.10 | ✅   | ✅    | ✅    | ✅    |

To be noted:

- The script requires `systemd`.
- The script is regularly tested against `amd64` only.
