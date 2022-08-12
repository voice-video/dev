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

5. 配置ffmpeg
5-1. 在下载的ffmpeg目录中，配置
```
 ./configure --prefix=/usr/local/ffmpeg --enable-gpl --enable-version3 --enable-nonfree --enable-postproc --enable-libass --enable-libfdk-aac --enable-libfreetype --enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libopenjpeg --enable-libopus --enable-libspeex --enable-libtheora --enable-libvorbis --enable-libvpx --enable-libx264 --enable-libxvid --disable-static --enable-shared
```
5-2. `make -j4`
5-3. `sudo make install`

6. 配置环境变量
编辑`~/.bash_profile` 并添加环境变量

```
export PATH="$PATH:/usr/local/ffmpeg/bin"
```

保存后执行下面的语句，立即生效

```
source ~/.base_profile
```

7. 测试

执行下面的命令：

```
rtmp://r.ossrs.net/live/livestream
```

### qt相关环境











