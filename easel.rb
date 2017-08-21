# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Easel < Formula
  desc "Sequence analysis library used by Eddy/Rivas lab code"
  homepage ""
  url "https://github.com/EddyRivasLab/easel/archive/Bio-Easel-0.05.tar.gz"
  sha256 "5846b75e02fbbc3a01df8591e55207b1e7654072ad29679a78004c00ba05a65d"

  # depends_on "cmake" => :build

  depends_on "autoconf" => :build

  def install
    system "autoconf" if build.head?
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "check" if build.with? "test"
    system "make", "install"
  end
end
