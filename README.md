# getfem-docker
[![License: LGPL v3](https://img.shields.io/badge/License-LGPL%20v3-blue.svg)](https://www.gnu.org/licenses/lgpl-3.0)
[![GitHub issues](https://img.shields.io/github/issues/getfem-doc/docker.svg?style=flat-square)](https://img.shields.io/github/issues/getfem-doc/docker?style=flat-square)
![GitHub contributors](https://img.shields.io/github/contributors/getfem-doc/docker?style=flat-square)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](CODE_OF_CONDUCT.md)
![Publish Docker](https://github.com/getfem-doc/docker/workflows/Publish%20Docker/badge.svg)
![Docker Image CI](https://github.com/getfem-doc/docker/workflows/Docker%20Image%20CI/badge.svg)

Docker images for [GetFEM](http://getfem.org/).

![logogetfem](http://getfem.org/_static/logogetfem.png)

## Images

* getfemdoc/getfem

## Tips

If you would like to install dependencies, use ``getfemdoc/getfem`` as a base image.
When using GetFEM, activate venv::

```dockerfile
# in your Dockerfile
FROM getfemdoc/getfem
RUN source /work/.venv/bin/activate
```

## screenshots

![tube](http://getfem.org/_static/tube.png)
![cuve_3D_streamlines](http://getfem.org/_static/cuve_3D_streamlines.png)
![helm_k7_P10_gt6](http://getfem.org/_images/helm_k7_P10_gt6.png)
![tripodvonmiseswithmesh](http://getfem.org/_static/tripodvonmiseswithmesh.png)
![modestructure_paolo_small](http://getfem.org/_images/modestructure_paolo_small.png)
![pneu_Q2_vonmises_small](http://getfem.org/_images/pneu_Q2_vonmises_small.png)
![xfembeammesh](http://getfem.org/_images/xfembeammesh.png)
![fissure_3d_de_traviole](http://getfem.org/_images/fissure_3d_de_traviole.png)
![torsion034](http://getfem.org/_images/torsion034.png)
![shape1](http://getfem.org/_images/shape1.png)
![shape2](http://getfem.org/_images/shape2.png)
![shape3](http://getfem.org/_images/shape3.png)
![shape4](http://getfem.org/_images/shape4.png)
![gear](http://getfem.org/_images/gear.png)
