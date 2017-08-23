class Pplacer < Formula
  desc 'Phylogenetic placement and downstream analysis'
  homepage 'http://matsen.fredhutch.org/pplacer/'
  url 'https://github.com/matsen/pplacer/archive/v1.1.alpha19.tar.gz'
  sha256 '0e74f3bdaf996c6e54695e23bc2180877f2de0fadc80f0fe9d066aa445b3347c'

  depends_on 'camlp4' => :build
  depends_on 'gawk' => :build
  depends_on 'gsl' => :build
  depends_on 'sqlite' => :build
  depends_on 'm4' => :build
  depends_on 'ocaml' => :build
  depends_on 'opam' => :build
  depends_on 'pkg-config' => :build
  depends_on 'aspcud' => :build

  depends_on :x11

  def install

  end

  test do
  end
end
