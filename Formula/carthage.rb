class Carthage < Formula
  desc "Decentralized dependency manager for Cocoa"
  homepage "https://github.com/akaffenberger/Carthage.git"
  url "https://github.com/akaffenberger/Carthage.git",
      tag:      "0.38.1",
      shallow:  false
  license "MIT"
  head "https://github.com/akaffenberger/Carthage.git"

  bottle :disable, "reasons"

  depends_on xcode: ["10.0", :build]
  depends_on :macos

  def install
    system "make", "prefix_install", "PREFIX=#{prefix}"
    bash_completion.install "Source/Scripts/carthage-bash-completion" => "carthage"
    zsh_completion.install "Source/Scripts/carthage-zsh-completion" => "_carthage"
    fish_completion.install "Source/Scripts/carthage-fish-completion" => "carthage.fish"
  end
end
