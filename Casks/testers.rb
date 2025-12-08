cask "testers" do
  version "0.9.13.5-2"

  on_arm do
    sha256 "93ef8af4dc3412c377cd36b3651fbd9395b45652333ce2c868852049989900af"
    url(
      "https://github.com/testers-ai/releases/releases/download/v#{version}/testers-mac-arm64-#{version}.zip",
      verified: "https://github.com/testers-ai/releases/"
    )
  end

  on_intel do
    sha256 "1887bb5b0ac28707923c4447c30c72585a8d0cc66450335534a3b65dcaa0ea4f"
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

  artifact "testers", target: "#{staged_path}/testers_install_dir"
  binary "#{staged_path}/testers/testers", target: "testers"
end
