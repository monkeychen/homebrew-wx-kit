# homebrew-wx-kit — Homebrew tap for [wx-kit](https://github.com/monkeychen/wx-kit)

微信百宝箱(微信公众号文章下载器,GUI + agent 友好 CLI)的 Homebrew 配方仓库。

## 安装

```sh
brew install --cask monkeychen/wx-kit/wx-kit
# 应用未签名,装完先清 quarantine(否则 GUI 被拦、CLI 调用会挂起):
xattr -cr /Applications/wx-kit.app
```

安装名是三段式`用户/tap/包`;tap 过一次后可用短名(`brew install --cask wx-kit`)。

## 升级 / 卸载

```sh
brew update && brew upgrade --cask wx-kit   # 先 update:brew 读的是本地配方缓存,不刷会升到旧版
brew uninstall --cask wx-kit
```

> 本仓库只存放配方(Casks/wx-kit.rb),安装包来自 [wx-kit Releases](https://github.com/monkeychen/wx-kit/releases);配方由发版流程自动更新。
