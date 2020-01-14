class IosSimulatorGif < Formula
  version "1.3.1"
  desc "Record a gif from your iOS simulator in a jiffy"
  homepage "https://github.com/fjcaetano/ios-simulator-gif"
  url "https://codeload.github.com/fjcaetano/ios-simulator-gif/tar.gz/#{version}"
  sha256 "3a18c10537ae072f10055fe36a8b261afa4f5df87ef608d7848350030f171dbc"

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
