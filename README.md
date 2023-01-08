# $\LaTeX$ 格式的编程语言风格指南

Programming Language Style Guide of $\LaTeX$ format


## Table of Contents

- [背景](#背景)
- [使用](#使用)
- [维护](#维护)
- [贡献](#贡献)
- [许可证](#许可证)

## 背景
Google的C++语言风格指南是一份使用广泛的风格指南。它结构上相对完整，总结了许多使用C++方面的经验，但是相对来说没有那么复杂，对于C++的学习会有很大的帮助。

在学习过程中发现，网上缺少一份适合打印的Google的C++语言风格指南文件。大多数的PDF格式的文件是直接从Google的网页上打印出来的，排版不美观、链接不方便。并且Google的C++语言风格指南中有一些外部的链接，在学习的时候需要跳转到其他的网站中，特别是Google的[Abseil: C++ Tips of the Week](https://abseil.io/tips/)，一方面容易打断学习的过程，另一方面由于这些非常有用的Tips没有和Google的C++语言风格指南文件放在一起，也是学习上的损失。

有鉴于此，我根据[Google C++ Style Guide](https://google.github.io/Style-Guide-of-Latex-Format/cppguide.html)重制了这份 $\LaTeX$ 格式的Google的C++语言风格指南文件：
* 使用优美的 $\LaTeX$ 书籍模板[ElegantBook](https://github.com/ElegantLaTeX/ElegantBook)作为模板进行整理
* 附录了一些[Google C++ Style Guide](https://google.github.io/Style-Guide-of-Latex-Format/cppguide.html)中提到的[Abseil: C++ Tips of the Week](https://abseil.io/tips/)条目，以及其他的有用的文档

当然这份文档还不完美，还有很多可以优化的地方：
* 格式转换过程中，[Google C++ Style Guide](https://google.github.io/Style-Guide-of-Latex-Format/cppguide.html)中的一些格式转换成 $\LaTeX$ 的时候不是一对一的，所以还有可以优化的地方
* 本人不是 $\LaTeX$ 方面的专家，在使用 $\LaTeX$ 实现某些格式的时候，可能会有更好的实现方式
  * Table中的footnote：现在使用的是tablefootnote，但是编号是错误的，希望有专家能够协助修复
  * mintinline中的bgcolor和breaklines不兼容：mintinline中使用bgcolor之后，不能正确断行
  * section中使用mintinline对带有`#`的代码进行高亮的时候出现错误或者警告
* [Google C++ Style Guide](https://google.github.io/Style-Guide-of-Latex-Format/cppguide.html)有很多的链接，现在只是附录了一部分（主要是[Abseil: C++ Tips of the Week](https://abseil.io/tips/)），还有一些Wikipedia和cppreference上的链接链接中没有添加，也希望能选择性的添加进来
* 这个repo当前只添加了Google的C++语言风格指南，也希望将其他的风格指南整理出来，方便大家的学习
* 整理这个repo的时候，有大量的手工工作，希望能有程序自动的将源网站内容转换成 $\LaTeX$，减少出错，方便更新和升级
* 完善Makefile编译脚本，添加CI/CD支持
* [ElegantBook](https://github.com/ElegantLaTeX/ElegantBook)并不是为编程语言风格指南准备的，排版、字体、自定义环境等也有不方面的地方，比如[Google C++ Style Guide](https://google.github.io/Style-Guide-of-Latex-Format/cppguide.html)中的`Definition`、`Pros`、`Cons`和`decision`模式没有合适的环境，使用的是`\section`。也希望有人从美学的角度，重新设计更适合语言风格指南的 $\LaTeX$ 模板

## 使用
这个repo中有语言风格指南的PDF文件，可以直接下载使用。该项目在MacOS下进行的开发，使用了TexLive2022(20220321_3)进行编译:
1. 安装texlive
```Shell
brew install texlive
```
2. 下载该repo
```Shell
git clone https://github.com/codeclabs-cn/Style-Guide-of-Latex-Format
```
3. 编译项目
```Shell
cd Style-Guide-of-Latex-Format
make
```

## 维护

[@codeclabs-cn](https://github.com/codeclabs-cn)

## 贡献

欢迎大家[star](https://github.com/codeclabs-cn/Style-Guide-of-Latex-Format)、[fork](https://github.com/codeclabs-cn/Style-Guide-of-Latex-Format/fork)、[issue](https://github.com/codeclabs-cn/Style-Guide-of-Latex-Format/issues)、[PR](https://github.com/codeclabs-cn/Style-Guide-of-Latex-Format/pulls)等

## 许可证

[CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/legalcode.txt) © 2023 [@codeclabs-cn](https://github.com/codeclabs-cn)
