# dev
开发环境搭建


## mac开发环境搭建
### ffmpeg相关环境
1. 安装brew
2. 下载ffmpeg
```
1 git clone git://source.ffmpeg.org/ffmpeg.git 
2 或者码云链接
3 git clone https://gitee.com/mirrors/ffmpeg.git
4 cd ffmpeg
5 # 查看版本
6 git branch -a
7 # 选择4.2版本
8 git checkout remotes/origin/release/4.2
```

3. 安装第三方库
> 有些编码类型ffmpeg自身不带，需要自己安装第三方库，为了便于后续开发，这里可以提前将一些常见的依赖的第三方库安装

```
1. brew install --build-from-source automake
2. brew install fdk-aac
3. brew install lame
4. brew install libass
5. brew install libtool
6. brew install libvorbis
7. brew install libvpx
8. brew install libvo-aacenc
9. brew install opencore-amr
10. brew install openjpeg
11. brew install opus
12. brew install speex
13. brew install texi2html
14. brew install x264
15. brew install --build-from-source x265
16. brew install xvid
17. brew install yasm
18. brew install freetype
19. brew install pkg-config
20.
21. //brew install celt
22. brew install schroedinger
23. brew install shtool
24. brew install --build-from-source theora
25. brew install --build-from-source wget
```

4. 安装SDL2
> ffplay是需要依赖SDL进行画面的展示和声音的播放的。所以集成的前提是需要安装好SDL2

```
brew install --build-from-source sdl2
```

5. 配置ffmpeg

  - 5-1. 在下载的ffmpeg目录中，配置
  ```
  ./configure --prefix=/usr/local/ffmpeg --enable-gpl --enable-version3 --enable-nonfree --enable-postproc --enable-libass --enable-libfdk-aac --enable-libfreetype --enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libopenjpeg --enable-libopus --enable-libspeex --enable-libtheora --enable-libvorbis --enable-libvpx --enable-libx264 --enable-libxvid --disable-static --enable-shared
  ```

  - 5-2. `make -j4`

  - 5-3. `sudo make install`

6. 配置环境变量
编辑`~/.bash_profile` 并添加环境变量

```
export PATH="$PATH:/usr/local/ffmpeg/bin"
```

保存后执行下面的语句，立即生效

```
source ~/.bash_profile
```

7. 测试

执行下面的命令：

```
ffplay rtmp://r.ossrs.net/live/livestream
```

### qt相关环境

1. qt下载安装
> 网上有很多下载安装的教程，这里不再赘述，推荐安装5.12.x及以上的版本


## 前端为什么要搞ffmpeg:
> 因为有些视频编码方式浏览器端不支持，比如h.265

存储视频需要大量存储空间。为了使其易于管理，开发了视频压缩技术来压缩视频，也称为编解码器。2003年，发布了编解码器h.264（商业名称为AVC）。现在，它已成为视频压缩的行业标准，因为它提供了良好的压缩效果，几乎可以在任何设备和平台上播放。所有现代的浏览器，操作系统和移动平台都支持h.264。

H.265 / HEVC
　　IT行业已经有十年了，所以在2012年发布了h.264的后继产品，称为h.265（商业名称为HEVC）。HEVC承诺在相同视频质量的情况下将带宽减少50％。节省大量资金并带有Cloud记录功能，这意味着在您的位置安装5或10个IP安全摄像机之间的区别。

　　尽管h.265是在5年前发布的，但采用速度很慢。这样做的主要原因是，与拥有1个专利池的h.264不同，h.265具有3个具有不同定价结构和条款和条件的专利池。第二个专利池（HEVC Advance）于启动三年后于2015年推出。关于h.265左右的专利使用费情况的不确定性阻碍了其采用，因此主要浏览器根本不支持（例如Chrome，Firefox）或仅部分支持（Edge）。因此，许多内容提供商一直坚持使用h.264，因为至少他们知道它会一直播放。

背景：

　　H.265许可证在历史上一直非常昂贵。在某些情况下，其价格比H.264高出几个数量级。MPEG-LA和HEVC Advance专利池期望苹果和微软等公司为此付费。但是他们通过取消价格上限而变得过于贪婪（特别是HEVC Advance），因此微软将不得不为H.265支付数亿美元，而H.264的价格则低至数百万美元。HEVC Advance更改了许可政策，但可能为时已晚，因为Google Microsoft，Amazon，Netflix，Cisco，Mozilla和其他公司正在开发免版权使用费的替代方案（以开放媒体联盟的名义），因此他们不会再被在线视频所要挟。

1. AV1
　　2015年，谷歌，微软，Mozilla和思科等多家大型IT公司发起了开放媒体联盟，以创建一个称为AV1的开放且免版税的编解码器。基于谷歌的开放式“ VP10”编解码器以及思科“ Thor”和Mozilla的“ Daala”编解码器技术，该联盟着手为h.265创建替代方案。该编解码器是h.265的强大竞争对手，其原因有5个：

2. 免版税
AV1完全免版税，这意味着无需向任何专利池支付专利。Google已经证明可以使用VP9发布免版税的编解码器。此外，编解码器将是开放源代码，并且具有非常宽松的BSD许可证，可加快采用速度。

3. 更好的压缩
根据您使用的基准，AV1将比h.265 / HEVC好约30％。再次以合理的CPU成本进行了重大改进。与HEVC相比，AV1还将在低比特率摄像机上显示出这些改进，这对IP安全摄像机特别有用。

4. 都在使用
有了APPLE，GOOGLE，MICROSOFT和MOZILLA支持AV1，我们可以期望在不久的将来所有主要浏览器和操作系统都将提供支持。有了这个新的编解码器，几乎不可能在主要浏览器中支持h.265。与h.265不同，Firefox的开发版本中已经提供了AV1支持。

5. 硬件加速
解码视频需要大量CPU。诸如笔记本电脑，手机或平板电脑之类的许多设备都具有硬件加速功能，以防止发热的设备和电池耗尽。AV1得到了主要芯片供应商（如INTEL，AMD，BROADCOM和ARM）的支持。我们将需要至少一年的时间才能看到首批AV1附带的设备，但是硬件支持看起来很有希望。

6. 内容提供商支持AV1
NETFLIX，FACEBOOK，***，BBC，AMAZON和HULU等主要内容提供商将在AV1中提供内容。***已经抵制HEVC，仅通过其自己的VP9编解码器提供4K视频。因此，它目前无法在Apple设备上播放。

https://www.een.com/blog/h-265/





