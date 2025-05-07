class PassionSsh < Formula
  desc "Zsh function to quickly connect to passion services"
  homepage "https://github.com/independenc3/passion-ssh"
  url "https://raw.githubusercontent.com/independenc3/passion-ssh/main/passion-ssh"
  version "1.0.0"
  sha256 "3b41da51d3c863a0f3eb912bedd5659b63e524c262ce605c7f8b7a2ca68f69b3"
  license "MIT"

  def install
    bin.install "passion-ssh"
  end

  def caveats
    <<~EOS
      To use pc alias in your shell, add the following to your ~/.zshrc:
        alias pc='aws-vault exec passion-root -- zsh -i -c "source #{HOMEBREW_PREFIX}/bin/passion-ssh && passion-ssh"'
    EOS
  end

  test do
    system "test", "-f", "#{bin}/passion-ssh"
  end
end
