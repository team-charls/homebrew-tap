class Charls < Formula
  desc "C++ JPEG-LS library implementation"
  homepage "https://github.com/team-charls/charls"
  url "https://github.com/team-charls/charls/archive/refs/tags/2.4.3.tar.gz"
  sha256 "bbf67d51446a98eb8fc98c9c6de49a2605c709d3a14ba39f09a09f8e57527099"
  license "BSD-3-Clause"

  bottle do
    root_url "https://github.com/team-charls/homebrew-tap/releases/download/charls-2.4.3"
    sha256 cellar: :any,                 arm64_sequoia: "4bcf06ca3da8e0bec617a4534159dc208591db669b7fc8c40d1c43c779f76974"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "971a3398e95396408144463a37ea75472fdc32a8ca9a6c63ac318fd3c8a065a1"
  end

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args,
                         "-DBUILD_SHARED_LIBS=ON",
                         "-DCHARLS_BUILD_TESTS=OFF",
                         "-DCHARLS_BUILD_FUZZ_TEST=OFF",
                         "-DCHARLS_BUILD_SAMPLES=OFF"
    system "make", "install"
  end
end
