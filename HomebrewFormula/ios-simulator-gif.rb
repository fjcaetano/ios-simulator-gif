class IosSimulatorGif < Formula
  version "1.1.0"
  desc "Record a gif from your iOS simulator in a jiffy"
  homepage "https://github.com/fjcaetano/ios-simulator-gif"
  url "https://codeload.github.com/fjcaetano/ios-simulator-gif/tar.gz/#{version}"
  sha256 "79cba993e64e115e69b160553bbd2cd9b4a9c09cf93efb9b1ada5e8e7958bc72"

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
