class Skw < Formula
  desc "Tool making cloud object storage as a artifact repository"
  homepage "https://github.com/Kesin11/SkyWarehouse"
  url "https://github.com/Kesin11/SkyWarehouse/releases/download/v0.1.1/skw.jar"
  sha256 "cc0efc38e12f047bcc61cacef362d8da85070f04a332c9998bd374a616b289c0"
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
