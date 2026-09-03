cask "atm" do
  version "2.1.5"

  arch arm: "aarch64", intel: "x64"

  url "https://github.com/cubezhao/ai-tools-mng/releases/download/v#{version}/ATM_#{version}_#{arch}.dmg"
  name "ATM"
  desc "AI Tool Manager - Account management tool for AI Tools"
  homepage "https://github.com/cubezhao/ai-tools-mng"

  sha256 arm:   "aae274515b2a8140658dca38020879d39576876ea7a0aa2ddc7ab51ab10d4aba",
         intel: "cf9d85ea71bbecc0b081bee7bdc614765d928829778d63b39d08e7c79b79d8a2"

  app "ATM.app"

  zap trash: [
    "~/Library/Application Support/com.cubezhao.atm",
    "~/Library/Caches/com.cubezhao.atm",
    "~/Library/Preferences/com.cubezhao.atm.plist",
  ]
end
