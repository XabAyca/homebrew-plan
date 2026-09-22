cask "plan" do
  version "0.1.7"

  on_arm do
    sha256 "1c51974ac4b0f537def7129f102905976446c9e7dd72f14af6b14349debcec87"

    url "https://github.com/XabAyca/plan-releases/releases/download/v#{version}/plan-#{version}-aarch64-apple-darwin.dmg"
  end

  on_intel do
    sha256 "032aa7aa031034d137302f3c80145e0b51a19b8dced48b1f36dc9bf5f3c9356d"

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
