# Minimalistic base image with pre-installed python Plumbum library

This is base docker image to create derived images with stateless python scripts with optional usage of [Plumbum](http://plumbum.readthedocs.io/) library.

During build of derived image all ``*.py`` files from build folder are copied to the ``/root/`` folder inside the image and precompiled there.

If you have ``some-script.py`` in derived project, then after building image you can run it via:

```bash
docker run --rm derived/image some-script.py
```

Examples of derived images:

* https://github.com/procraft/s3-backuper-docker
* https://github.com/davojan/jetbrains-backup-scripts-docker

Based on ``python:3.5-alpine`` image.
