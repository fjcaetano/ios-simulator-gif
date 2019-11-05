class IosSimulatorGif < Formula
  version "1.3.0"
  desc "Record a gif from your iOS simulator in a jiffy"
  homepage "https://github.com/fjcaetano/ios-simulator-gif"
  url "https://codeload.github.com/fjcaetano/ios-simulator-gif/tar.gz/#{version}"
  sha256 "81da64ed1d919108dbabb51bd851816c6244c87967e3d66af8a0be64e9737487"

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
