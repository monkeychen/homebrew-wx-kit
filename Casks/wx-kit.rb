cask "wx-kit" do
  version "0.5.5"

  on_arm do
    sha256 "bb3c023c612c3c01cd56be21cc3e94a0e49ccf68221aa0487e076e258724fc6d"
    url "https://github.com/monkeychen/wx-kit/releases/download/v#{version}/wx-kit-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "e4bd48dc2fba84f20da3415b6b70140b84bb533d502300be2e5b7525440341d6"
    url "https://github.com/monkeychen/wx-kit/releases/download/v#{version}/wx-kit-#{version}.dmg"
  end

  name "wx-kit"
  desc "微信百宝箱 — 微信公众号文章下载器(GUI + agent 友好 CLI)"
  homepage "https://github.com/monkeychen/wx-kit"

  app "wx-kit.app"

  caveats <<~EOS
    应用未签名。若安装时未加 --no-quarantine,首次打开需在
    「系统设置 → 隐私与安全性」点「仍要打开」。推荐安装方式:
      brew install --cask --no-quarantine monkeychen/wx-kit/wx-kit
    命令行入口(供 AI agent):首次打开 GUI 会引导创建 ~/bin/wx-kit。
  EOS
end
