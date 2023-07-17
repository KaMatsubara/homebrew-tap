VERSION="1.0.0"
class Tenkigetter < Formula
  desc "天気予報を取得する"
  homepage "https://github.com/KaMatsubara/tenkiGetter"
  url "https://github.com/KaMatsubara/tenkiGetter/releases/download/v1.0.3/tenkiGetter_1.0.3.tar"
  version VERSION
  sha256 "ec93eb2ee81417b3ed62350540f5863f6b4850f691879060937fe7d36b0c169f"
  license "MIT"
  option "without-completions", "Disable bash completions"
  depends_on "bash-completion@2" => :optional



  def install
    bin.install "tenkiGetter"
    bash_completion.install "completions/bash/tenkiGetter" if build.with? "completions"
  end

end
