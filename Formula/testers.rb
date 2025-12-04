class Testers < Formula
  desc "The Testers.ai CLI tool"
  homepage "https://testers.ai"
  version "0.9.13.5-2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Testers-ai/releases/releases/download/v0.9.13.5-2/testers-mac-arm64-0.9.13.5-2.zip"
      sha256 "ed61718f58ddb96fe044466f577efcdb47b6d8ae270379d3f9a2f4e4690d03b8"
    end

    if Hardware::CPU.intel?
      url "https://github.com/Testers-ai/releases/releases/download/v0.9.13.5-2/testers-mac-x86_64-0.9.13.5-2.zip"
      sha256 "840ade9eaa1c36da597725b55ef0e4c48660666797818bafc4b47509cd76e748"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"testers/testers"
  end

  test do
    system "#{bin}/testers", "version"
  end
end
