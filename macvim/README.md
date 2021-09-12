[# 我的MacVim配置](https://razeencheng.com/post/my-macvim-vimrc.html)

### 快速使用该配置

```bash
curl -kSL https://raw.githubusercontent.com/razeencheng/dotfiles/master/macvim/install.sh | sh
```

然后打开MacVim执行 ":PluginInstall"。

需要提前安装‘Vundle’.

``` bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
``` 


### QA

**Q1**. 插件安装后，关于`YouCompleteMe`报错。

**A1**. `YouCompleteMe`插件需要单独配置, 你可以配置你需要的语言，如golang:

```bash
cd  ~/.vim/bundle/YouCompleteMe
git clean -f
git pull
git submodule update --recursive --init
/.vim/bundle/YouCompleteMe$ ../install.sh --go-completer
```

如果没有 `cmake` 需要安装：

``` bash
# mac 
brew install cmake

# linux
sudo apt install -y cmake
```


**Q2**. Cmd f 与MacVim系统按键冲突。

**A2**. 要么修改系统按键，要么修改配置。由于使用频率较高，我把系统的改了，如下。

![](http://st.razeen.cn/image/blog/modify_sys_keyboard.jpg)

大概4步：

1. 找到是什么菜单占用了你的按键， 这里是 “Find...‘;
2. 在“系统设置” > "键盘" > '快捷键' 中添加你的MacVim；
3. 修改占用菜单 “Find...”  为其他快捷键；
4. 回来再看看，原来的快捷键已经该了，Cmd f 就不冲突了。



**Q3**: 搜索报错 `Option '*g*:*ctrlsf_ackprg*' is not defined or empty.`

**A3**: 要安装依赖 `brew install the_silver_searcher`


### 快捷键

vim一些基础操作可以看下图。

![](http://st.razeen.cn/image/blog/vim-keyboard.jpg)



我这里主要整理一些组合操作（这里主要以上面的配置为准）

| 快捷键               | 操作                       | 备注 |
| -------------------- | -------------------------- | ---- |
| Cmd e                | 开启/关闭 侧边栏（目录树） |      |
| Cmd y                | 开启大纲                   |      |
| Cmd+/                | 代码注释                   |      |
| Ctrl  j/k/h/l        | 多窗口切换                 |      |
| Shift   h/l          | 切换缓冲区                 |      |
| Cmd f                | 快速搜索                   |      |
| :CO                  | 打开上次搜索的结果         |      |
| :w!!                 | 用sudo权限保存文件         |      |
| ,1/2/3/4/5/6/7/8/9/0 | 切换tab                    |      |
| ,zz                  | 折叠行                     |      |
| ,/                   | 移除搜索高亮               |      |
| ,sa                  | 选择全部                   |      |
| ,w                   | 保存当前文件               |      |
| ,bd                  | 关闭当前缓冲区, 不关闭窗口 |      |
| ,gc                 | GoErrCheck                 |      |
| ,gb                 | GoBuild                    |      |
| ,gr                 | GoRename                   |      |
| ,gl                 | GoLint                     |      |
| ,gf                 | GoFillStruct                | 自动填充结构     |
| ,us                  | 修改当前文件类型的代码片段 |      |
| ,,h                  | 显示往前可快速移动的点     |      |
| ,,j                  | 显示往下可快速移动的点     |      |
| ,,k                  | 显示往上可快速移动的点     |      |
| ,,l                  | 显示往后可快速移动的点     |      |
| ,,.                  | 显示上一次可快速移动的点   |      |
| ,gtaa                 | Git add                    |      |
| ,gtc                  | git commit                 |      |
| ,gtl                  | git pull                   |      |
| ,bo                  | :BufOnly 关闭初当前Buffer外的所有Buffer |      |
