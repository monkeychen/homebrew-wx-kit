cask "wx-kit" do
  version "0.10.3"

  on_arm do
    sha256 "4a30120118d77582aedf075a9d1217e368ab9dbb620c3affc5db76d8becf2111"
    url "https://github.com/monkeychen/wx-kit/releases/download/v#{version}/wx-kit-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "33746f556f8d89d092e30293e66d4c298d2fc8db01ddd63825818aa9669172e0"
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
