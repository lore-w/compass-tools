## compass-tools

自定义小工具集合

### install:

```bash
$ gem install compass-tools
```

### usage:

在`config.rb`文件顶部增加

```ruby
require 'compass-tools'
```

### example:

```css
div.demo {
    @include triangle();
}
```

### list:

#### 视网膜屏下使用图片精灵

```css
.demo {
    @include retina-sprite()
}
```
参数列表**依次**为：
+ `$map` 图片精灵**必选**
+ `$sprite`小图标**必选**
+ `$horizontal`是否水平居中(需要设置父级`position`为非`static`的值)，默认为`false`
+ `$vertical`是否垂直居中(需要设置父级`position`为非`static`的值)，默认为`false`

#### REM图片精灵

```css
.demo {
    @include rem-sprite()
}
```
前置条件：
```html
<title>compass demo</title>
    <script type="text/javascript">
        (function (doc, win) {
            var docEl = doc.documentElement,
                    resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
                    recalc = function () {
                        var clientWidth = docEl.clientWidth;
                        if (!clientWidth) {
                            return;
                        }
                        docEl.style.fontSize = 20 * (clientWidth / 320) + 'px';
                    };

            if (!doc.addEventListener) {
                return;
            }
            recalc();
            //win.addEventListener(resizeEvt, recalc, false);
            //doc.addEventListener('DOMContentLoaded', recalc, false);
        })(document, window);
    </script>
    <link rel="stylesheet" href="...css"/>
```

```css
$default-rem-base: 40px !default;
```

参数列表**依次**为：
+ `$map` 图片精灵**必选**
+ `$sprite`小图标**必选**
+ `$horizontal`是否水平居中(需要设置父级`position`为非`static`的值)，默认为`false`
+ `$vertical`是否垂直居中(需要设置父级`position`为非`static`的值)，默认为`false`

#### css绘制三角形

```css
.demo {
    triangle ()
}
```
参数列表**依次**为：
+ `$triangle-size`三角形的大小，默认10px
+ `$triangle-color`三角形的颜色，默认黑色
+ `$triangle-direction`三角形的方向，默认向上（可选值为`top`,`right`,`bottom`,`left`）
+ `$triangle-thin`三角形的形状，默认为正三角形，设为`true`,三角形的两边大小将减小为原来的一半