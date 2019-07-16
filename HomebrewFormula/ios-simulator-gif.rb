class IosSimulatorGif < Formula
  desc "Record a gif from your iOS simulator in a jiffy"
  homepage "https://github.com/fjcaetano/ios-simulator-gif"
  url "https://github.com/fjcaetano/ios-simulator-gif/archive/1.0.0.tar.gz"
  sha256 "3a34bc612b7a7832bb46a30774b063845635fd56f1bd3744be65cbc0f4ceaa03"

  depends_on "ffmpeg"

  def install
    bin.install "bin/ios-simulator-gif"
  end

  test do
    system "which", "ios-simulator-gif"
  end
end
