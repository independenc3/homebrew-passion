class PassionSsh < Formula
  desc "Zsh function to quickly connect to passion services"
  homepage "https://github.com/independenc3/passion-ssh"
  url "https://raw.githubusercontent.com/independenc3/passion-ssh/main/passion-ssh"
  version "1.0.5"
  sha256 "d4b6730f7b377f0b20969f81368c3a617d512359a7eba3620ca596b0b5e634a9"
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
