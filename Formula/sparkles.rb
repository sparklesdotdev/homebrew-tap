class Sparkles < Formula
  desc "Run coding agents locally and mirror sessions to Sparkles"
  homepage "https://sparkles.dev"
  version "1.3.0"

  on_macos do
    on_arm do
      url "https://cdn.sparkles.dev/sparkles/v#{version}/sparkles_#{version}_darwin_arm64.tar.gz"
      sha256 "41b8dd6ff7d08ba79e5015553d3d9e820161cc19a8727fa87200f0c8aab575d9"
    end
    on_intel do
      url "https://cdn.sparkles.dev/sparkles/v#{version}/sparkles_#{version}_darwin_amd64.tar.gz"
      sha256 "79749a151859bb61aef7807729c31896604bac9d93580e1ece48d61c828a124b"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.sparkles.dev/sparkles/v#{version}/sparkles_#{version}_linux_arm64.tar.gz"
      sha256 "530e824f33a3e42c105598ac882c3c9af2b8150df4c454bfc0c9d693824f50c9"
    end
    on_intel do
      url "https://cdn.sparkles.dev/sparkles/v#{version}/sparkles_#{version}_linux_amd64.tar.gz"
      sha256 "4da9940ac301b129084bf77de435c9658a7ffefbc9448d17969cbfb80ce92df8"
    end
  end

  def install
    bin.install "sparkles"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sparkles --version")
  end
end
