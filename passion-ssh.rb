class PassionSsh < Formula
  desc "Zsh function to quickly connect to passion services"
  homepage "https://github.com/independenc3/passion-ssh"
  url "https://raw.githubusercontent.com/independenc3/passion-ssh/main/passion-ssh"
  version "1.0.5"
  sha256 "3adb5bff0dc00488118b28ea3be3400c438765d49395cf5d7dd7b33626a66e13"
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
