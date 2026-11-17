class CitadelCli < Formula
  desc "Command-line client for Citadel"
  homepage "https://github.com/Citadel-Inc/citadel-cli"
  version "0.6.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/Citadel-Inc/citadel-cli/releases/download/v0.6.0/citadel-cli_v0.6.0_darwin_arm64.tar.gz"
      sha256 "3a39406a7d34f08e232b39e9853de4f054393fddf1a39175987d5ac6c102c4f9"
    end
    on_intel do
      url "https://github.com/Citadel-Inc/citadel-cli/releases/download/v0.6.0/citadel-cli_v0.6.0_darwin_amd64.tar.gz"
      sha256 "8c796bcfc43f2ad3d702e094cbd0150daf0bbfc52a844a817fb6edd26bf7ce00"
    end
  end

  def install
    bin.install "citadel-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/citadel-cli --version")
  end
end
