cask "wx-kit" do
  version "0.5.5"

  on_arm do
    sha256 "92b144abd4514ec2e8813509d5b557601e60d08215bd969d2f07ec578aecace9"
    url "https://github.com/monkeychen/wx-kit/releases/download/v#{version}/wx-kit-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "31ec28b65687b7cbc710a52f70f873cb91d263366d9cacf09bbbc1c1f030417a"
    url "https://github.com/monkeychen/wx-kit/releases/download/v#{version}/wx-kit-#{version}.dmg"
  end

  name "wx-kit"
  desc "微信百宝箱 — 微信公众号文章下载器(GUI + agent 友好 CLI)"
  homepage "https://github.com/monkeychen/wx-kit"

  app "wx-kit.app"

  caveats <<~EOS
    应用未签名,首次打开会被 macOS 拦截:到「系统设置 → 隐私与安全性」
    点「仍要打开」;或命令行放行:xattr -cr #{appdir}/wx-kit.app
    命令行入口(供 AI agent):首次打开 GUI 会引导创建 ~/bin/wx-kit。
  EOS
end
