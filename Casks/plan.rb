cask "plan" do
  version "0.1.5"

  on_arm do
    sha256 "c73ceb29a985a446b49fde57f26ad13eab570a6d1b657ee9a0d221a26440aba7"

    url "https://github.com/XabAyca/plan-releases/releases/download/v#{version}/plan-#{version}-aarch64-apple-darwin.dmg"
  end

  on_intel do
    sha256 "e4a95bd236130b53c1812fb38cfce52da1b903c937dab1c28712195ffd0e3695"

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
