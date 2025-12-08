cask "testers" do
  version "0.9.13.5-2"

  on_arm do
    sha256 "87e856673afa203c277885add3f8372213ed469f8045e63c3bb2f8ff3f80ac6f"
    url(
      "https://github.com/testers-ai/releases/releases/download/v#{version}/testers-mac-arm64-#{version}.zip",
      verified: "https://github.com/testers-ai/releases/"
    )
  end

  on_intel do
    sha256 "8c9cfa15917aad41389d75ab125b80f2057db151a37bcbd89dbaed69693819e1"
    url(
      "https://github.com/testers-ai/releases/releases/download/v#{version}/testers-mac-x86_64-#{version}.zip",
      verified: "https://github.com/testers-ai/releases/"
    )
  end

  name "Testers.ai CLI"
  desc "Testers.ai CLI"
  homepage "https://testers.ai"

  livecheck do
    url "https://github.com/testers-ai/releases"
    strategy :github_latest
  end

  artifact "testers", target: "#{staged_path}/testers"
  binary "#{staged_path}/testers/testers", target: "testers"
end
