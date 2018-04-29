# hifvwm

![screen1](http://wx1.sinaimg.cn/large/61dccbaaly1fmk5k4srjhj211y0lc4q6.jpg "screen1")

![screen2](http://wx4.sinaimg.cn/large/61dccbaaly1fmk5k417aoj211y0lc1kj.jpg "screen2")

![screen3](http://wx4.sinaimg.cn/large/61dccbaaly1fmk5k3qh9vj211y0lcavr.jpg "screen3")


## What is hifvwm

hifvwm is a configuration for FVWM ([version 2.6.7](https://github.com/dustincys/fvwm)) that provides a feature-rich set of window manager defaults.
hifvwm is designed for clean, simple, elegant, productive window management.


## hifvwm 是什么

hifvwm 是基于FVWM([version 2.6.7](https://github.com/dustincys/fvwm))的桌面配置。
hifvwm的理念是简单、高效、优雅地窗口管理。

## 为什么选择hifvwm

### hifvwm的优点

- 打开数十个左右规模的窗口也不会“蒙圈”
- 符合人类思维习惯的设计

### 其他WM的反人类设计

#### Windows, Unity 等直线式反人类任务栏

打开50个以上窗口，并发执行多个任务（例如，同时写论文，project编码、批量下载源数据、阅读新闻、阅读最新paper等等），出现什么情况？——窗口找不着了。

#### Windows, Gnome 等动态增加的反人类扩展桌面

这是Windows, Gnome等看到PC性能越来越强大，为了解决上面的反人类任务栏问题而设计。
引入新的问题就是，无法掌控所有桌面，新问题是——桌面找不着了。

#### i3, awesome WM  等平铺桌面的反人类平铺

即使你是周伯通，你也只能左右互博两个窗口。因为人类天生就是一心无法二用的单线程。平铺完全就是鸡肋，且平铺桌面更有上述两大缺点。几乎集所有缺点于一身。

#### 所有其他UI（包括MAC、windows的默认状态）的反人类的“宽”

A4纸为什么不横着打印？目前主流显示器16:9，太宽了，人类视野区域在工作时很少用到（即使是左右互博，也太宽了）。所以，不要再占用垂直空间了。

### hifvwm的设计思想

- 自动同步Bing搜索主页的壁纸

每次电脑开机，午夜零点自动更新，用户也可以手动更新，从此审美再也不疲劳

- 切换窗口自动聚焦到最上面的窗口

使用键盘快捷键切换窗口时候，减少操作过程，自动聚焦到目标窗口。这一特性是虚拟窗口必须的人性化设计。

- 类似window右下角的功能的最小化窗口来显示桌面的功能

实现在一个桌面之内操作多个任务。

- 任务栏结合标题栏

采用任务栏和标题栏结合，节省空间。

- 同类窗口切换

可以在同类窗口之内类似alt-tab的方式切换。
