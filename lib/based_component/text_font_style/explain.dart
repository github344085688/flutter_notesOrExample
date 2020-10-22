
const String TEXTFONTSTYLE = """
## 文本及样式
###  textAlign: TextAlign.center,文本的对齐方式；可以选择左对齐、右对齐还是居中。

### maxLines、overflow：指定文本显示的最大行数，默认情况下，文本是自动折行的，如果指定此参数，则文本最多不会超过指定的行。如果有多余的文本，可以通过overflow来指定截断方式，默认是直接截断，本例中指定的截断方式TextOverflow.ellipsis，它会将多余文本截断后以省略符“...”表示；
```
 Text("Hello world! I'm Jack. "*4,
  maxLines: 1,
  overflow: TextOverflow.ellipsis,
);
```

### textScaleFactor：代表文本相对于当前字体大小的缩放因子，相对于去设置文本的样式style属性的fontSize，它是调整字体大小的一个快捷方式。该属性的默认值可以通过MediaQueryData.textScaleFactor获得，如果没有MediaQuery，那么会默认值将为1.0。
```
Text("Hello world",
  textScaleFactor: 1.5,
);
```


## TextStyle
> TextStyle用于指定文本显示的样式如颜色、字体、粗细、背景等。我们看一个示例：
```
Text("Hello world",
  style: TextStyle(
    color: Colors.blue,
    fontSize: 18.0,
    height: 1.2,  
    fontFamily: "Courier",
    background: new Paint()..color=Colors.yellow,
    decoration:TextDecoration.underline,
    decorationStyle: TextDecorationStyle.dashed
  ),
);
```
## 3 TextSpan
### 不同部分按照不同的样式显示，这时就可以使用TextSpan，它代表文本的一个“片段”。我们看看TextSpan的定义:
```
Text.rich(TextSpan(
    children: [
     TextSpan(
       text: "Home: "
     ),
     TextSpan(
       text: "https://flutterchina.club",
       style: TextStyle(
         color: Colors.blue
       ),  
       recognizer: _tapRecognizer
     ),
    ]
))
```
   - 上面代码中，我们通过TextSpan实现了一个基础文本片段和一个链接片段，然后通过Text.rich 方法将TextSpan 添加到Text中，之所以可以这样做，是因为Text其实就是RichText的一个包装，而RichText是可以显示多种样式(富文本)的widget。
   - _tapRecognizer，它是点击链接后的一个处理器（代码已省略），关于手势识别的更多内容我们将在后面单独介绍。
   
## DefaultTextStyle
### 因此，如果在Widget树的某一个节点处设置一个默认的文本样式，那么该节点的子树中所有文本都会默认使用这个样式，而DefaultTextStyle正是用于设置默认文本样式的。
```
 Container(
  child: DefaultTextStyle(
  //1.设置文本默认样式  
  style: TextStyle(
    color:Colors.red,
    fontSize: 20.0,
  ),
  textAlign: TextAlign.start,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text("hello world"),
      Text("I am Jack"),
      Text("I am Jack",
        style: TextStyle(
          inherit: false, //2.不继承默认样式
          color: Colors.grey
        ),
      ),
    ],
  ),
));
```
   """;
