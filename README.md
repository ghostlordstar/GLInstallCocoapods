# GLInstallCocoapods
👽GLInstallCocoapods是一个帮助用户安装Cocoapods的脚本工具

换工作、换电脑第一件事就是配置开发环境，其中Cocoapods环境是比较难配置的一个工具，为了帮助大家节省宝贵的时间，特将平时用的安装脚本开源，供大家使用和参考。

## 使用
`clone`或`download`仓库到本地，在`终端(Terminal)`中运行
```
./BrewInstallCocoapods.sh
```
等待安装完成。

## 异常情况：

1. 如果您使用`gem`安装过`Cocopods`，或者之前卸载时有残留，脚本会提醒您是否需要卸载：
```Gem installed Cocoapods, to continue we need to uninstall cocoapods: y/n```

您选择卸载(回复`y`)，才能让脚本继续向下运行,否则脚本会直接退出。

2. 提示`permission denied: ./BrewInstallCocoapods.sh`
脚本没有运行的权限，解决方案：

```
chmod +x ./BrewInstallCocoapods.sh
```

## TODO
- [ ] 添加更多的异常处理
- [x] 对代码进行规范

## 合作

 鉴于`shell`脚本边学边写，难免有错误，希望大家多提`Issues`，多提`Pull request`📩。
