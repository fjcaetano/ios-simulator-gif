# ios-simulator-gif

Record a gif from your iOS simulator in a jiffy

![Example GIF](example.gif?raw=true)

### Instalation 

Assuming that you have [Homebrew](https://brew.sh/) installed, execute the following steps:

1. Use this repository as a "tap" (alternative package repository):

```sh
$ brew tap fjcaetano/ios-simulator-gif https://github.com/fjcaetano/ios-simulator-gif.git
```

2. Install ios-simulator-gif (and dependencies):

```sh
$ brew install fjcaetano/ios-simulator-gif/ios-simulator-gif
```

### Usage

```sh
$ ios-simulator-gif [filename]
```

If no file name is given, it will save the gif to `./simulator.gif`