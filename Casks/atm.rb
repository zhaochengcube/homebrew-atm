cask "atm" do
  version "2.1.6"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/ai-tools-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "AI Tool Manager - Account management tool for AI Tools"
  homepage "https://github.com/cubezhao/ai-tools-mng"

  sha256 arm:   "550f221a5b6a5d87a16e002de5bb3b64be8bc91b64c48372d79a71393e548846",
         intel: "b4de063607b3e3d46ad674b5b190292e1ffb35e071f69cf5a569b8a6d9aa27c9"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
