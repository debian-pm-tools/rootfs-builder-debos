# debos recipes

To build one of the recipes simply use `debos recipe.yml`

Both, the mainline and the halium recipe, support installing Plasma Mobile in the image.
You can build the Plasma Mobile variant like this:

```debos recipe.yml -t variant:"plamo"```

The images can be built for different architectures
(at the time of writing, only armhf and arm64 are complete,
if you want to work on a i386 device,
 best contact us in the Halium channels).

```debos recipe.yml -t architecture:arm64"```
