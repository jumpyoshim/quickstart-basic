# Quickstart: Compose and Lravel

## Run Locally
Make sure you have [Docker Compose](https://docs.docker.com/compose/install/).

```console
$ cp .env.example .env
$ php artisan key:generate
$ docker-compose up
```

Your app should now be running on http://0.0.0.0:8000/

## Run Test

```console
$ docker-compose exec app bash
# composer test
```
