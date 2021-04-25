class Charls < Formula
  desc "C++ JPEG-LS library implementation"
  homepage "https://github.com/team-charls/charls"
  url "https://github.com/team-charls/charls/archive/2.2.0.tar.gz"
  sha256 "e1d7dd70cd9d6d46de5abbf22278dc8169707995a21e8bf705f5746c04c76891"
  license "BSD-3-Clause"

  depends_on "cmake" => :build

  def install
    args = std_cmake_args
    args << "-DCMKAE_BUILD_TYPE=Release"

    system "cmake", *args
    system "make", "install"
  end
end