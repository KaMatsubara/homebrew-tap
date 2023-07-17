VERSION="1.0.0"
class Tenkigetterv1 < Formula
  desc "天気予報を取得する"
  homepage "https://github.com/KaMatsubara/tenkiGetter"
  url "https://github.com/KaMatsubara/tenkiGetter/archive/refs/tags/v1.0.tar.gz"
  version VERSION
  sha256 "99ec9b9ffe2c1706fa48c25e8bf44eec3b570667e599bdb5dc79b5f48dc6cef4"
  license "MIT"
  option "without-completions", "Disable bash completions"
  depends_on "bash-completion@2" => :optional


  def install
    bin.install "tenkiGetter"
    bash_completion.install "completions/bash/tenkiGetter" if build.with? "completions"
  end

end
