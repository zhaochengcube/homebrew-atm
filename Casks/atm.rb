cask "atm" do
  version "2.1.7"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/ai-tools-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "AI Tool Manager - Account management tool for AI Tools"
  homepage "https://github.com/cubezhao/ai-tools-mng"

  sha256 arm:   "c2ecf42570df84dcda00c79f0265f17d1d62df052664f72db96542621ec384b4",
         intel: "67523b4d5e91b5f16596eb89f6b38abe683420078d27d0326f7c27aa25d01166"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
