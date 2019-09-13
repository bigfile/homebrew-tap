# This file was generated by GoReleaser. DO NOT EDIT.
class Bigfile < Formula
  desc "A file transfer system that supports http, rpc and ftp protocols"
  homepage "https://bigfile.site"
  version "1.0.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/bigfile/bigfile/releases/download/v1.0.0/bigfile_1.0.0_darwin_amd64.tar.gz"
    sha256 "0a036440e7195f33b5bd77eeb35a453bbe28f52c85db4e4dbbef869ce18c6917"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/bigfile/bigfile/releases/download/v1.0.0/bigfile_1.0.0_linux_amd64.tar.gz"
      sha256 "135c14d58ce21349362f785f1ddaff0711986015dab5e6f894deeae186d0afa7"
    end
  end

  def install
    bin.install "bigfile"
  end

  def caveats; <<~EOS
    start mysql before starting bigfile
  EOS
  end

  test do
    system "#{bin}/bigfile -v"
  end
end
