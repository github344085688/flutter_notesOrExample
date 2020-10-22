
const String WIDGETKNOWLEDGE = '''
##  markdown语法 (_flutter_markdown_)
- 1、SafeArea  留出来刘海和底部的安全区域，很好的解决刘海屏兼容问题。
2、SizedBox  可以具体设置尺寸的控件。 child 属性不为null时，如果设置宽高，则强制显示宽高，如果没有设置，则自适应。
3、Card  一个Material的卡片，拥有边角和阴影。
      常用属性：
      color:    设置卡片的背景颜色。
      elevation:   控制下方阴影的大小。
      shape： 设置边的样式或者角的形状。
             如：RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))
      margin： 卡片的距离周边的距离，类似于  css中的margin。
4、Column | Row    垂直方向排布widget列表，横向排布widget列表。
     常用属性：
     mainAxisAlignment：主轴上的排布。  默认值为MainAxisAlignment.start。
            【 center  |   end  |    spaceBetween  |    spaceAround  |   spaceEvenly  |  start   】
     crossAxisAlignment：交叉轴（竖轴）上的排布。
            【 baseline   | center  |   end  |  start   |   stretch 】
5、Divider   高度为一像素的水平分割线
6、Expanded  可以使Row，Column、Flex等，子组件在其主轴上展开并填充可用空间，撑开父组件。必须使用在Row，Column,Flex内部。
    ''';

