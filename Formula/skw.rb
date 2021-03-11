class Skw < Formula
  desc "Tool making cloud object storage as a artifact repository"
  homepage "https://github.com/Kesin11/SkyWarehouse"
  url "https://github.com/Kesin11/SkyWarehouse/releases/download/v0.1.2/skw.jar"
  sha256 "4973ed7050d1bd72d73fb8b10d889727985a894f7c3bd1f7092a138520764f77"
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
