cask "atm" do
  version "2.1.4"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/ai-tools-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "AI Tool Manager - Account management tool for AI Tools"
  homepage "https://github.com/cubezhao/ai-tools-mng"

  sha256 arm:   "552d5e67b40ebde415adcc3afa9e0be71382525832d59bf629573be56abbda65",
         intel: "202c9f19a48c25feb2397a9de1bfaf7a29095b424d654dd623e922efc75d5273"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
