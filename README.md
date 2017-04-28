# Phalcon Devtools

Command line devtools

This image is updated via pull requests to the `phalconphp/dockerfiles` [GitHub repo](https://github.com/phalcon/dockerfiles).

## How to use this image

You can run the default `phalcon` command simply:

```
$ docker run -it --rm phalconphp/devtools:7 help
```

And you can create alias in order to implement convenient runner. Create file called `/usr/local/bin/devtools` as follows:

```sh
#!/usr/bin/env bash

mkdir -p ${HOME}/.ssh
mkdir -p ${HOME}/.composer

docker run -it --rm \
    -v $(pwd):/app \
    gsviec/phalcontool
```

Make it executable:

```
##Add a alias to bash 
alias phalcon='docker run -ti --rm  -v $(pwd):/app gsviec/phalcontool'
```

Test:

```
$ phalcon
Phalcon DevTools (3.1.2)

Available commands:
  info             (alias of: i)
  commands         (alias of: list, enumerate)
  controller       (alias of: create-controller)
  module           (alias of: create-module)
  model            (alias of: create-model)
  all-models       (alias of: create-all-models)
  project          (alias of: create-project)
  scaffold         (alias of: create-scaffold)
  migration        (alias of: create-migration)
  webtools         (alias of: create-webtools)
```
