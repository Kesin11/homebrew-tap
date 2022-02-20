class Skw < Formula
  desc "Tool making cloud object storage as a artifact repository"
  homepage "https://github.com/Kesin11/SkyWarehouse"
  url "https://github.com/Kesin11/SkyWarehouse/releases/download/v0.2.0/skw.jar"
  sha256 "896e57472cd54650ca5ca12c884c9c44d899ed495e5d7a3e9b5e8669c5a2c742"
  license "MIT"

  bottle :unneeded

  depends_on "openjdk@8" => :recommended

  def install
    libexec.install "skw.jar"
    bin.write_jar_script libexec/"skw.jar", "skw"
  end

  test do
    assert_match "Usage: SkyWarehouse", shell_output("#{bin}/skw --help")
  end
end
