# docker-kermit client for HP48

Container that has CKermit 9.0 configured for usage with the HP48g series.

## Usage

Build the image:

```
docker build -t kermit .
```

Attach the calculator to the computer.

```
docker run --device=/dev/ttyUSB0 --rm -ti kermit
```

If the device is different than `/dev/ttyUSB0`, change the `.kermrc` file and build the image again. Then, run the container with the appropriate device.
