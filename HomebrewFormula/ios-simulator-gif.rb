class IosSimulatorGif < Formula
  desc "Record a gif from your iOS simulator in a jiffy"
  homepage "https://github.com/fjcaetano/ios-simulator-gif"
  url "https://github.com/fjcaetano/ios-simulator-gif/archive/0.0.1.tar.gz"
  sha256 "d96d73f07fb10448287384f958fecc3e9917532479cfb068d782f8bac974e7f1"

  depends_on "ffmpeg"

  def install
    bin.install "bin/ios-simulator-gif"
  end

  test do
    system "which", "ios-simulator-gif"
  end
end
