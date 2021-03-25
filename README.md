# debos recipes

![Travis CI build result](https://travis-ci.org/debian-pm-tools/rootfs-builder-debos.svg?branch=master)

To build one of the recipes simply use `debos recipe.yml`

Both, the mainline and the halium recipe, support installing Plasma Mobile in the image.
You can build the Plasma Mobile variant like this:

```debos --memory=4G --scratchsize=8G -t variant:plasma-mobile recipe.yml"```

The images can be built for different architectures

```debos --memory=4G --scratchsize=8G -t architecture:arm64```
