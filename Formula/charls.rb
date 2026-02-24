class Charls < Formula
  desc "C++ JPEG-LS library implementation"
  homepage "https://github.com/team-charls/charls"
  url "https://github.com/team-charls/charls/archive/refs/tags/2.4.2.tar.gz"
  sha256 "d1c2c35664976f1e43fec7764d72755e6a50a80f38eca70fcc7553cad4fe19d9"
  license "BSD-3-Clause"

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
