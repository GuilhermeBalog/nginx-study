# Nginx Study

The goal of this project is to study [nginx](https://www.nginx.com/).

## Run locally

Requisites:

- Docker version 24.0.7, build afdd53b (I didn't tested in other versions)

To run locally, execute the script `run.sh`. It will remove the running container (if exists), build a new image and run a new container.

## Conditional based on cookies

It is possible to check the request cookies and make `returns` or `rewrites`, testing the `$http_cookie` variable against a regex:

```conf
location = /check-user {
  if ($http_cookie ~ "IS_USER=") {
    return 200 'Is user';
  }

  return 200 'Is NOT user';
}
```

The `test.sh` script makes some tests with different cookie values. You can also access the address http://localhost/check-user in your browser and change cookie values via developer tools.