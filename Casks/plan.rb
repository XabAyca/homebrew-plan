cask "plan" do
  version "0.1.6"

  on_arm do
    sha256 "7238202465393f78f6d3a363cebf23a3b3c572faeb3ccb60e4b18b58c1c668e4"

    url "https://github.com/XabAyca/plan-releases/releases/download/v#{version}/plan-#{version}-aarch64-apple-darwin.dmg"
  end

  on_intel do
    sha256 "cc4bd04bbeecd61e994572e63a101083a273828440fca0b0a7c6cb2400a0314c"

    url "https://github.com/XabAyca/plan-releases/releases/download/v#{version}/plan-#{version}-x86_64-apple-darwin.dmg"
  end

  name "Plan"
  desc "Team planning app"
  homepage "https://github.com/XabAyca/plan-releases"

  app "Plan.app"

  zap trash: [
    "~/Library/Application Support/Plan",
    "~/Library/Preferences/com.mipise.plan.plist",
    "~/Library/Saved Application State/com.mipise.plan.savedState",
  ]
end
