cask "plan" do
  version "0.1.4"

  on_arm do
    sha256 "3f962f35f73df86543fc85848f427d8f3a6e42936d81bb7d1a63ee62855fbca7"

    url "https://github.com/XabAyca/plan-releases/releases/download/v#{version}/plan-#{version}-aarch64-apple-darwin.dmg"
  end

  on_intel do
    sha256 "29d2cc8be5cedeb45e4cd42771f22427a02d4791648371405a007790b0add685"

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
