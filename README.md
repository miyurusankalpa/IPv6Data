# IPv6hosts

![B|Solid](https://www.ipv6.com/wp-content/uploads/2018/06/ipv6-logo-2.png)

### About

This project was created, because some of the CDN services have IPv6 enabled, but does not serve IPv6 records using DNS.

**NOTE: As this is bypassing DNS servers completely, this might make some of these services slow. you should definitely check the performance and change or comment out hosts accordingly.**

### How to use

![copy the file hosts](https://raw.githubusercontent.com/miyurusankalpa/IPv6hosts/master/hosts) to your systems hosts file
![This article on howtogeek](https://www.howtogeek.com/howto/27350/beginner-geek-how-to-edit-your-hosts-file/) explains how to edit the hosts file on your system.

### Major websites that does have IPv6 in the front end, but does not support IPv6 in the back end

* github.com 🙄 (Faslty)
* Stackexchange (Faslty)
* Zendesk (Cloudflare)

## Supported CDN Services

![B|Solid](https://www.vectorlogo.zone/logos/fastly/fastly-ar21.svg)
![B|Solid](https://www.vectorlogo.zone/logos/cloudflare/cloudflare-ar21.svg)
![B|Solid](https://www.vectorlogo.zone/logos/akamai/akamai-ar21.svg)
![B|Solid](https://www.vectorlogo.zone/logos/amazon_aws/amazon_aws-ar21.svg) 

## Changing Akamai Range

  1. **nslookup** *akamai.com* or *letsencrypt.org* with 8.8.8.8 eg: `nslookup letsencrypt.org 8.8.8.8`
  2. In the IPv6 address remove the last hextet. eg: `2600:1417:3f:280::ce0>>2600:1417:3f:280::`
  3. replace the ip range eg: `sed -i 's/2a02:26f0:6b:2a0/{IP range from above}/g'  hosts`
  
Some Akamai IP Ranges:
* 2a02:26f0:6b:2a0 (NL) Default
* 2600:1417:3f:288 (SIN)

Any help is appreciated.

*Hopefully one day mucking around with hosts file will not be necessary*
