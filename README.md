📱 ios-simulator-gif ![homebrew][1] [![PRs welcome][2]](https://github.com/fjcaetano/ios-simulator-gif/pulls)
---

Record a gif from your iOS simulator in a jiffy

![Example GIF](example.gif?raw=true)

## Installation 

Assuming that you have [Homebrew](https://brew.sh/) installed, execute the following steps:

1. Use this repository as a "tap" (alternative package repository):

```sh
$ brew tap fjcaetano/ios-simulator-gif https://github.com/fjcaetano/ios-simulator-gif.git
```

2. Install ios-simulator-gif (and dependencies):

```sh
$ brew install ios-simulator-gif
```

## Usage

```sh
$ ios-simulator-gif [options] {out_file} {-- [ffmpeg options]}
```

| Options             | Description               | Default value  |
| ------------------- | ------------------------- | :------------: |
| -r, --rate          | Framerate of the output   |      `6`       |
| -f, --format        | Output format             |     `gif`      |
| -vf, --video-filter | Video filter for `ffmpeg` | `scale=320:-1` |
|  -t, --transpose    | Transpose the video for landscape orientation | N/A |
| --no-watermark      | Remove watermark from gif |      N/A       |
| -h, --help          | Prints helper message     |      N/A       |
| -v, --version       | Prints current version    |      N/A       |

If no file name is given, it will save the gif to `./simulator.gif`

When recording a video in landscape mode you'll need to provide the appropriate transposing argument. It's usually the following:
1. `--transpose 1` when the simulator is rotated 90º (camera to the right)
2. `--transpose 2` when the simulator is rotated 270º (camera to the left)

### Sending extra arguments to `ffmpeg`

If you need to send extra arguments to `ffmpeg`, everything sent after double slashes (`--`) will be
sent to `ffmpeg` as arguments:

```sh
$ ios-simulator-gif -r 30 example.gif -- -b 128k
```

[1]: https://img.shields.io/github/tag/fjcaetano/ios-simulator-gif?color=orange&label=homebrew
[2]: https://img.shields.io/badge/PRs-welcome-brightgreen.svg