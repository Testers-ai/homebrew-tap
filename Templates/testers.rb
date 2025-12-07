cask "testers" do
  version "__VERSION__"

  on_arm do
    sha256 "__SHA256_ARM__"
    url(
      "https://github.com/testers-ai/releases/releases/download/v#{version}/testers-mac-arm64-#{version}.dmg",
      verified: "https://github.com/testers-ai/releases/"
    )
  end

  on_intel do
    sha256 "__SHA256_INTEL__"
    url(
      "https://github.com/testers-ai/releases/releases/download/v#{version}/testers-mac-x86_64-#{version}.dmg",
      verified: "https://github.com/testers-ai/releases/"
    )
  end

  name "Testers.ai CLI"
  desc "Automated web testing CLI"
  homepage "https://testers.ai"

  depends_on macos: :sonoma

  livecheck do
    url "https://github.com/testers-ai/releases"
    strategy :github_latest
  end

  pkg "Install Testers.ai CLI.pkg"

  uninstall pkgutil: "ai.testers.pkg"
end
