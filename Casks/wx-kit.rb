cask "wx-kit" do
  version "0.8.2"

  on_arm do
    sha256 "a35fccec7b24ffc396f4c6754a8576b1679d87512e068b9ab58fe7f406c3aeef"
    url "https://github.com/monkeychen/wx-kit/releases/download/v#{version}/wx-kit-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "cf63ace9d86f9ba3f332548d9f166d3471b5841ae24222aa59256dd3a975b275"
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
