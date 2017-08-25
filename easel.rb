class Easel < Formula
  desc 'Sequence analysis library used by Eddy/Rivas lab code'
  homepage 'https://github.com/EddyRivasLab/easel'

  url 'https://github.com/EddyRivasLab/easel/archive/Bio-Easel-0.05.tar.gz'
  sha256 '5846b75e02fbbc3a01df8591e55207b1e7654072ad29679a78004c00ba05a65d'
  head 'https://github.com/EddyRivasLab/easel.git'

  option 'without-test', 'Skip build-time tests (not recommended)'
  depends_on 'autoconf' => :build

  depends_on "autoconf" => :build

  def install
    system 'autoconf'
    system './configure', "--prefix=#{prefix}"
    system 'make'
    system 'make', 'check' if build.with? 'test'
    system 'make', 'install'
  end

  test do
    system 'esl-afetch', '-h'
  end
end
