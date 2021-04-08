class IosSimulatorGif < Formula
  version "1.4.0"
  desc "Record a gif from your iOS simulator in a jiffy"
  homepage "https://github.com/fjcaetano/ios-simulator-gif"
  url "https://codeload.github.com/fjcaetano/ios-simulator-gif/tar.gz/#{version}"
  sha256 "9b9d3ee3a027b994e95087d646825af0655229d58db30d386807d3087b874b80"

  depends_on "ffmpeg"
  depends_on "gnu-sed"

  def install
    inreplace "bin/ios-simulator-gif" do |s|
      s.gsub! /PKG_VERSION=.*/, "PKG_VERSION='#{version}'"
    end

    bin.install "bin/ios-simulator-gif"
  end

  test do
    system "which", "ios-simulator-gif"
  end
end
