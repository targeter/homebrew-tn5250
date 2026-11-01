class Tn5250 < Formula
  desc "Curses-based 5250 terminal emulator for IBM i"
  homepage "https://tn5250.github.io/"
  url "https://github.com/tn5250/tn5250/releases/download/v0.18.0/tn5250-0.18.0.tar.gz"
  sha256 "b936d39d5210fe447245cf08778655a48876ae2dfcb67373910163602128a919"
  license "LGPL-2.1-or-later"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "ncurses"
  depends_on "openssl@3"

  def install
    system "./configure", *std_configure_args,
                          "--disable-silent-rules",
                          "--with-ssl=#{formula_opt_prefix("openssl@3")}"
    system "make", "install"
  end

  test do
    assert_match "tn5250 #{version}", shell_output("#{bin}/tn5250 -version")
    assert_match "ssl_verify_server", shell_output("#{bin}/tn5250 -help", 255)
  end
end
