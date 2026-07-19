# homebrew-wx-kit — Homebrew tap for [wx-kit](https://github.com/monkeychen/wx-kit)

微信百宝箱(微信公众号文章下载器,GUI + agent 友好 CLI)的 Homebrew 配方仓库。

## 安装

```sh
brew install --cask monkeychen/wx-kit/wx-kit
# 应用未签名,装完先清 quarantine(否则 GUI 被拦、CLI 调用会挂起):
xattr -cr /Applications/wx-kit.app
```

## 升级 / 卸载

```sh
brew upgrade --cask wx-kit
brew uninstall --cask wx-kit
```

> 本仓库只存放配方(Casks/wx-kit.rb),安装包来自 [wx-kit Releases](https://github.com/monkeychen/wx-kit/releases);配方由发版流程自动更新。
