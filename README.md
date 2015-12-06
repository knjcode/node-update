# knjcode/node-update

Testing environment of Node.js applications.

## Usage

```
$ git clone https://github.com/knjcode/node-update

# If you want to use Stable
$ git checkout stable
$ make
$ docker run --rm -it -v $PWD:/app knjcode/node-update:stable

# If you want to use LTS
$ git checkout lts
$ make
$ docker run --rm -it -v $PWD:/app knjcode/node-update:lts
```
