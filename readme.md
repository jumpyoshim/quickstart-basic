# Quickstart: Compose and Lravel

## Run Locally
Make sure you have [Docker Compose](https://docs.docker.com/compose/install/).

```console
$ cp .env.example .env
$ docker-compose up
```

Your app should now be running on http://0.0.0.0:8000/

## Run Test

```console
$ docker-compose exec app bash
# vendor/bin/phpunit
```
