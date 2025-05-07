class PassionSsh < Formula
  desc "Zsh function to quickly connect to passion services"
  homepage "https://github.com/independenc3/passion-ssh"
  url "https://raw.githubusercontent.com/independenc3/passion-ssh/main/passion-ssh"
  version "1.0.0"
  sha256 "af1c7adc977da54f40a291b1218eb3a20ad6c0dc13cec34c2b8b225d57912fc8"
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
