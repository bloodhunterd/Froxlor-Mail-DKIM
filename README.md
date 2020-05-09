[![Release](https://img.shields.io/github/v/release/bloodhunterd/froxlor-mail-dkim-docker?include_prereleases&style=for-the-badge)](https://github.com/bloodhunterd/froxlor-mail-dkim-docker/releases)
[![Docker Build](https://img.shields.io/docker/cloud/build/bloodhunterd/froxlor-mail-dkim?style=for-the-badge)](https://hub.docker.com/r/bloodhunterd/froxlor-mail-dkim)
[![License](https://img.shields.io/github/license/bloodhunterd/froxlor-mail-dkim-docker?style=for-the-badge)](https://github.com/bloodhunterd/froxlor-mail-dkim-docker/blob/master/LICENSE)

# DKIM for Froxlor Mail

Docker Image of OpenDKIM for Froxlor Mail Server.

## Configuration

See example [Docker Compose file](https://github.com/bloodhunterd/froxlor-mail-dkim-docker/blob/master/docker-compose.yml).

### Volumes

Mount the key directory and put the keys into it.

```bash
volumes:
  - ./keys/:/etc/dkimkeys/:ro
```

## Update

Please note the [changelog](https://github.com/bloodhunterd/froxlor-mail-dkim-docker/blob/master/CHANGELOG.md) to check for configuration changes before updating.

```bash
docker-compose pull
docker-compose up -d
```

## Build With

* [OpenDKIM](http://opendkim.org/)
* [Debian](https://www.debian.org/)
* [Docker](https://www.docker.com/)

## Authors

* [BloodhunterD](https://github.com/bloodhunterd)

## License

This project is licensed under the Unlicense - see [LICENSE.md](https://github.com/bloodhunterd/froxlor-mail-dkim-docker/blob/master/LICENSE) file for details.
