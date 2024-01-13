# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Commit < Formula
  desc "Commit is a tool for commiting changes with naming convention"
  homepage "https://github.com/mrados7/homebrews"
  version "0.0.16"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.16/go-git-commands_0.0.16_darwin_arm64.tar.gz"
      sha256 "545039053ef943744a6a14807fa4b26b92bf0a36d87b58b7ffbc1ffd318ea77e"

      def install
        bin.install "commit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.16/go-git-commands_0.0.16_darwin_amd64.tar.gz"
      sha256 "a5e2ee57e57d5e7c4659b634a4fd9390ee0b67159717eff9ff241bce6989edc4"

      def install
        bin.install "commit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.16/go-git-commands_0.0.16_linux_arm64.tar.gz"
      sha256 "02afba90d7e2ab98331166c20523e73acb2007cccd159d32b559c669cbe8f21a"

      def install
        bin.install "commit"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.16/go-git-commands_0.0.16_linux_armv6.tar.gz"
      sha256 "a91237c1563327a119f5659515986a042d1f70834fadb2d57740686f1fee49eb"

      def install
        bin.install "commit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mrados7/go-git-commands/releases/download/v0.0.16/go-git-commands_0.0.16_linux_amd64.tar.gz"
      sha256 "eb81a88892eecef905f81aaf703e0c5c0063b91a0d84ec71fc9aeb84affcfd2a"

      def install
        bin.install "commit"
      end
    end
  end

  test do
    system "#{bin}/commit", "-help"
  end
end
