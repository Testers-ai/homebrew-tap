cask "testers" do
  version "__VERSION__"
  arch arm: "arm64", intel: "x86_64"

  sha256_arm   "__SHA256_ARM__"
  sha256_intel "__SHA256_INTEL__"

  on_arm do
    sha256 sha256_arm
    url "https://github.com/Testers-ai/releases/releases/download/v#{version}/testers-mac-arm64-#{version}.dmg"
  end

  on_intel do
    sha256 sha256_intel
    url "https://github.com/Testers-ai/releases/releases/download/v#{version}/testers-mac-x86_64-#{version}.dmg"
  end

  name "Testers.ai CLI"
  desc "Automated web testing CLI"
  homepage "https://testers.ai"

  pkg "Install Testers.ai CLI.pkg"

  uninstall pkgutil: "ai.testers.pkg"
end
