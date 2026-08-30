cask "wx-kit" do
  version "0.10.1"

  on_arm do
    sha256 "8a48b6e873ab669e6d44a20baa69be53e7932d893568a9f8fe2488ae27547748"
    url "https://github.com/monkeychen/wx-kit/releases/download/v#{version}/wx-kit-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "618682206c40b3132ce3f2017d26743a84d3ff7aa1e33d814fd50574bec5a7c5"
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
