# Docker: bdebyl/yamllint

[![Build Status](https://ci.bdebyl.net/api/badges/bdebyl/docker-yamllint/status.svg)](https://ci.bdebyl.net/bdebyl/docker-yamllint)

Simple alpine-based Docker image for use with CI to lint yaml and ansible
files.

## Usage
Commands that are typically used running this container

- `ansible-lint`
- `make`
- `yamllint`

### Docker Run

```
docker run --rm -it -v $PWD/src bdebyl/yamllint 'ansible-lint *.yml'
```

### Drone CI (or similar)

```
---
kind: pipeline
type: docker
name: default

...

steps:
  - name: lint
    image: bdebyl/yamllint
    command:
      - ansible-lint *.yml
      # or use a make targeT:
      - make lint-ci
```

