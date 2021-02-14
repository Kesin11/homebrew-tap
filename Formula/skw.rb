class Skw < Formula
  desc "A tool making cloud object storage as a artifact repository"
  homepage "https://github.com/Kesin11/SkyWarehouse"
  url "https://github.com/Kesin11/SkyWarehouse/releases/download/v0.1.0-beta.1/skw.jar"
  version "0.1.0"
  sha256 "2109b9e1e75c443bfc8095ea027e130e6a343b76ce50ac56d59e36cc42ddf5de"
  license "MIT"

  bottle :unneeded

  depends_on "openjdk@8" => :recommended

  def install
    libexec.install "skw.jar"
    bin.write_jar_script libexec/"skw.jar", "skw"
  end

  test do
    assert_match "Usage: Sky Warehouse options_list", shell_output("#{bin}/skw --help")
  end
end
