class IosSimulatorGif < Formula
  desc "Record a gif from your iOS simulator in a jiffy"
  homepage "https://github.com/fjcaetano/ios-simulator-gif"
  url "https://github.com/fjcaetano/ios-simulator-gif/archive/1.1.0.tar.gz"
  sha256 "79cba993e64e115e69b160553bbd2cd9b4a9c09cf93efb9b1ada5e8e7958bc72"

  depends_on "ffmpeg"
  depends_on "gnu-sed"

  def install
    bin.install "bin/ios-simulator-gif"
  end

  test do
    system "which", "ios-simulator-gif"
  end
end
