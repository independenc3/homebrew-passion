class PassionSsh < Formula
  desc "Zsh function to quickly connect to passion services"
  homepage "https://github.com/independenc3/passion-ssh"
  url "https://raw.githubusercontent.com/independenc3/passion-ssh/main/passion-ssh"
  version "1.0.0"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  def install
    bin.install "passion-ssh"
  end

  def caveats
    <<~EOS
      To use passion-ssh in your shell, add the following to your ~/.zshrc:
        source #{HOMEBREW_PREFIX}/bin/passion-ssh
    EOS
  end

  test do
    system "test", "-f", "#{bin}/passion-ssh"
  end
end
