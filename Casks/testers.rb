cask "testers" do
  version "0.9.13.5-2"

  on_arm do
    sha256 "ffd080767fac1c9e6f9d11dffa5be93b8187c65ac4f296a1e660eaf71b8d61ae"
    url(
      "https://github.com/testers-ai/releases/releases/download/v#{version}/testers-mac-arm64-#{version}.zip",
      verified: "https://github.com/testers-ai/releases/"
    )
  end

  on_intel do
    sha256 "0f36120e76d333086dd22f862be8ad87b84b2b5ebc3a4d2e31b3720df53fc723"
    url(
      "https://github.com/testers-ai/releases/releases/download/v#{version}/testers-mac-x86_64-#{version}.zip",
      verified: "https://github.com/testers-ai/releases/"
    )
  end

  name "Testers.ai CLI"
  desc "Automated web testing CLI"
  homepage "https://testers.ai"

  livecheck do
    url "https://github.com/testers-ai/releases"
    strategy :github_latest
  end

  artifact "testers", target: "#{HOMEBREW_PREFIX}/opt/testers"

  binary "#{HOMEBREW_PREFIX}/opt/testers/testers", target: "testers"
end
