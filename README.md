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
.elements {
    @include retina-sprite($map, $sprite, $horizontal: false, $vertical: false)
}
```

+ `$map` 图片精灵
+ `$sprite`小图标
+ `$horizontal`是否水平居中(需要这只父级`position`为非`static`的值)，默认为`false`

#### css绘制三角形

```css
.elements {
    triangle ($triangle-size: 10px, $triangle-color: #000, $triangle-direction: top, $triangle-thin: false)
}
```

+ `$triangle-size`三角形的大小，默认10px
+ `$triangle-color`三角形的颜色，默认黑色
+ `$triangle-direction`三角形的方向，默认向上（可选值为`top`,`right`,`bottom`,`left`）
+ `$triangle-thin`三角形的形状，默认为正三角形，设为`true`,三角形的两边大小将减小为原来的一半