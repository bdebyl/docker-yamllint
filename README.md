# Docker: bdebyl/yamllint

[![Build Status](https://ci.bdebyl.net/api/badges/bdebyl/docker-yamllint/status.svg)](https://ci.bdebyl.net/bdebyl/docker-yamllint)

Simple alpine-based Docker image for use with CI to lint yaml and ansible
files.

## Usage

### Docker Run

```
docker run --rm -it -v $PWD/src bdebyl/yamllint *.yml
```

## Drone CI (or similar)

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
      - export YML_FILES="$(find yamldir/ -name '*.yml' -not -name '*somefilename*')"
      - ansible-lint "$YML_FILES"
      - yamllint "$YML_FILES"
```

