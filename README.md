# IPv6hosts

![B|Solid](https://www.ipv6.com/wp-content/uploads/2018/06/ipv6-logo-2.png)

### About

This project was created, because some of the CDN services have IPv6 enabled, but does not serve IPv6 records using DNS.

My IPv6 only servers based on Europe uses this hosts file.

**NOTE: As this is bypassing DNS servers completely, this might make some of these services which uses geodns will be slow. you should definitely check the performance and change or comment out hosts accordingly.**

### How to use

Use the host file, no guide will be given to prevent muggles from using this. 

### Site Breakages

Create an issue with details.

### New Sites

Create a PR after checking for brakages, Use the IP scrape data in the folders for help.

### Major websites that does have IPv6 CDN in the front end, but does not support IPv6 in the back end (breaks the site)

* Github.com 🙄 (Faslty) *shame, shame*
* Zendesk (Cloudflare)
* Discord (Cloudflare) *Breaks App*
* Hacker News (Cloudflare) *Occasional 403 errors*

## Supported websites
* amazon.com
* imdb.com
* vimeo.com
* reddit.com 
* last.fm
* hulu.com
* quora.com
* onedrive.live.com
* last.fm
* hulu.com
* latimes.com
* squarespace.com
* amd.com
* nationalgeographic.com
* theverge.com
* nytimes.com
* developers.microsoft.com
* imgur.com
* twitch.tv
* ajax.aspnetcdn.com
* ipinfo.io
* db-ip.com
* lowendtalk.com 
* subscene.com
* blog.cloudflare.com
* troyhunt.com
 
## Supported CDN Services

![B|Solid](https://www.vectorlogo.zone/logos/fastly/fastly-ar21.svg)
![B|Solid](https://www.vectorlogo.zone/logos/cloudflare/cloudflare-ar21.svg)
![B|Solid](https://www.vectorlogo.zone/logos/akamai/akamai-ar21.svg)
![B|Solid](https://www.vectorlogo.zone/logos/amazon_aws/amazon_aws-ar21.svg) 

## Changing Akamai Range to a closer pop for faster performance

  1. **nslookup** *akamai.com* or *letsencrypt.org* with 8.8.8.8 eg: `nslookup letsencrypt.org 8.8.8.8`
  2. In the IPv6 address remove the last hextet. eg: `2600:1417:3f:280::ce0>>2600:1417:3f:280::`
  3. replace the ip range eg: `sed -i 's/2a02:26f0:6b:2a0/{IP range from above}/g'  hosts`
  
Some Akamai IP Ranges:
* 2a02:26f0:6b:2a0 (NL) Default
* 2600:1417:3f:288 (SIN)

**On fastly, the Anycast IPv6 range is used.**

Any help is very much appreciated.

*Hopefully one day mucking around with hosts file will not be necessary*
