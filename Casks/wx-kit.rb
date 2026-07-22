cask "wx-kit" do
  version "0.8.0"

  on_arm do
    sha256 "44904dc5a9de42f4149baac790253c155964c4d4a9890bc5350a57b92b20450c"
    url "https://github.com/monkeychen/wx-kit/releases/download/v#{version}/wx-kit-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "aa9074df7db3ca6a61a021a0130afe5a28cee8e829b0e617e1a92a347c0a78b3"
    url "https://github.com/monkeychen/wx-kit/releases/download/v#{version}/wx-kit-#{version}.dmg"
  end

  name "wx-kit"
  desc "微信百宝箱 — 微信公众号文章下载器(GUI + agent 友好 CLI)"
  homepage "https://github.com/monkeychen/wx-kit"

  app "wx-kit.app"

  caveats <<~EOS
    应用未签名,安装后先清 quarantine(否则 GUI 被拦、CLI 调用会挂起):
      xattr -cr #{appdir}/wx-kit.app
    (GUI 也可走「系统设置 → 隐私与安全性」→「仍要打开」放行)
    命令行入口(供 AI agent):首次打开 GUI 会引导创建 ~/bin/wx-kit。
  EOS
end
