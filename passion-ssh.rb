class PassionSsh < Formula
  desc "Zsh function to quickly connect to passion services"
  homepage "https://github.com/independenc3/passion-ssh"
  url "https://raw.githubusercontent.com/independenc3/passion-ssh/main/passion-ssh"
  version "1.0.4"
  sha256 "2a7855d8dda4b4f86060d8fc9fdb9853d0b00851ab1cf1cd3cf11382f48c6eda"
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
