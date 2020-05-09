# getfem-docker
[![License: LGPL v3](https://img.shields.io/badge/License-LGPL%20v3-blue.svg)](https://www.gnu.org/licenses/lgpl-3.0)
[![GitHub issues](https://img.shields.io/github/issues/getfem-doc/docker.svg?style=flat-square)](https://img.shields.io/github/issues/getfem-doc/docker?style=flat-square)
![GitHub contributors](https://img.shields.io/github/contributors/getfem-doc/docker?style=flat-square)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](CODE_OF_CONDUCT.md)
![Publish Docker](https://github.com/getfem-doc/docker/workflows/Publish%20Docker/badge.svg)
![Docker Image CI](https://github.com/getfem-doc/docker/workflows/Docker%20Image%20CI/badge.svg)

Docker images for [GetFEM](http://getfem.org/).

## Images

* getfemdoc/getfem

## Tips

If you would like to install dependencies, use ``getfemdoc/getfem`` as a base image::

```dockerfile
# in your Dockerfile
FROM getfemdoc/getfem
ENV PYTHONPATH="/usr/local/lib/python3.6/site-packages:$PYTHONPATH"
```
