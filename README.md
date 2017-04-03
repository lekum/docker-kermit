# docker-kermit client for HP48

Container that has CKermit 9.0 configured for usage with the HP48g series.

## Usage

```
docker build -r kermit .
docker run --device=/dev/ttyUSB0 --rm -ti kermit

```
