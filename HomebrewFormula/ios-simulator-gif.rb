class IosSimulatorGif < Formula
  version "1.2.0"
  desc "Record a gif from your iOS simulator in a jiffy"
  homepage "https://github.com/fjcaetano/ios-simulator-gif"
  url "https://codeload.github.com/fjcaetano/ios-simulator-gif/tar.gz/#{version}"
  sha256 "197bf7804a93d9321f678e7c951c82387b37717b1dc9bb79a9e1d0c7e87546a8"

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
