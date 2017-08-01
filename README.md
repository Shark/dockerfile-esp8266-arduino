# dockerfile-esp8266-arduino

This repository contains the Dockerfile for [esp8266/Arduino](https://github.com/esp8266/Arduino) along with [plerup/makeEspArduino](https://github.com/plerup/makeEspArduino) and can be found as an automated build on [Docker Hub](https://hub.docker.com/r/sh4rk/esp8266-arduino/).

## Usage

Build it by running `make`.

To use it for compiling and/or flashing flash images for the ESP8266, mount your code somewhere in the container running this image and run `espmake`.

You may want to set the following environment variables:
- `BOARD` (i.e. `nodemcu`)

Additionally, give the container access to the FTDI USB-to-Serial converter with `--device=/dev/ttyUSB0` and set the permissions appropriately (do `chmod 777 /dev/ttyUSB0` if you feel lazy).

## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request! :)

## History

- v0.1.0 (2017-08-01): initial version

## License

This project is licensed under the MIT License. See LICENSE for details.
