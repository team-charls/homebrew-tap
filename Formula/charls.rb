class Charls < Formula
  desc "C++ JPEG-LS library implementation"
  homepage "https://github.com/team-charls/charls"
  url "https://github.com/team-charls/charls/archive/refs/tags/2.4.2.tar.gz"
  sha256 "d1c2c35664976f1e43fec7764d72755e6a50a80f38eca70fcc7553cad4fe19d9"
  license "BSD-3-Clause"

  bottle do
    root_url "https://github.com/team-charls/homebrew-tap/releases/download/charls-2.4.2"
    sha256 cellar: :any,                 arm64_sequoia:  "a54525ff53cb07faf40ebc23ca57c2348dbc72175112c49865d4556a5c0f760f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "16bdb51beb4b6ffb2bf06e1c1a1037939c1169fefcf5c721c5fdf91df86d58b0"
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
