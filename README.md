[![Release](https://img.shields.io/github/v/release/bloodhunterd/froxlor-mail-dkim?style=for-the-badge)](https://github.com/bloodhunterd/froxlor-mail-dkim/releases)
[![Docker Build](https://img.shields.io/github/workflow/status/bloodhunterd/froxlor-mail-dkim/Docker?style=for-the-badge&label=Docker%20Build)](https://github.com/bloodhunterd/froxlor-mail-dkim/actions?query=workflow%3ADocker)
[![Docker Pulls](https://img.shields.io/docker/pulls/bloodhunterd/froxlor-mail-dkim?style=for-the-badge)](https://hub.docker.com/r/bloodhunterd/froxlor-mail-dkim)
[![License](https://img.shields.io/github/license/bloodhunterd/froxlor-mail-dkim?style=for-the-badge)](https://github.com/bloodhunterd/froxlor-mail-dkim/blob/master/LICENSE)

[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/bloodhunterd)

# Froxlor Mail DKIM

Docker image of OpenDKIM for Froxlor Server Management Panel.

This image is meant to be used with the [Froxlor Mail](https://github.com/bloodhunterd/froxlor-mail) image.

## Deployment

### Docker Compose

```dockerfile
version: '2.4'

services:
  dkim:
    image: bloodhunterd/froxlor-mail-dkim
    ports:
      - '8891:8891'
    volumes:
      - ./keys/:/etc/dkimkeys/:ro
```

### Configuration

The `keys` folder must contain the following three files.

* keytable
* signingtable
* trustedhosts

The `keytable` file is a lookup table to match DNS records with the correct selector and key file.

~~~
mail._domainkey.example.com example.com:mail:/etc/dkimkeys/example.com/mail.private
~~~

The `signingtable` file contains which email domain matches which DNS record.

~~~
*@domain.tld mail._domainkey.example.com
~~~

The `trustedhosts` file contains a list of all host IP addresses which do not need a DKIM signature.

To generate a key for your domain with the selector `mail` run this command.

```bash
opendkim-genkey -s mail -b 2048 -d example.com -D /etc/dkimkeys/
```

### Ports

| Port | Description
| ---: | -----------
| 8891 | OpenDKIM

### Volumes

| Volume | Path | Read only | Description
| ------ | ---- | :-------: | -----------
| Keys | /etc/dkimkeys/ | &#10004; | OpenDKIM key store.

## Update

Please note the [changelog](https://github.com/bloodhunterd/froxlor-mail-dkim/blob/master/CHANGELOG.md) to check for configuration changes before updating.

```bash
docker-compose pull
docker-compose up -d
```

## Build With

* [OpenDKIM](http://opendkim.org/)
* [OpenSSL](https://www.openssl.org/)
* [Debian](https://www.debian.org/)
* [Docker](https://www.docker.com/)

## Authors

* [BloodhunterD](https://github.com/bloodhunterd)

## License

This project is licensed under the MIT - see [LICENSE.md](https://github.com/bloodhunterd/froxlor-mail-dkim/blob/master/LICENSE) file for details.
