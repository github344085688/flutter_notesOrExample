import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'explain.dart';

class InputFieldsAndForms extends StatefulWidget {
  const InputFieldsAndForms({Key key}) : super(key: key);

  @override
  _InputFieldsAndForms createState() => _InputFieldsAndForms();
}

class _InputFieldsAndForms extends State<InputFieldsAndForms> {
  TextEditingController _selectionController = TextEditingController();
  bool _numberInputIsValid = true;
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  void initState() {
    //监听输入改变
    _selectionController.addListener(() {
      print(_selectionController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    _selectionController.text = "hello";
    /* _selectionController.selection=TextSelection(
    baseOffset: 2,
    extentOffset: _selectionController.text.length
    );*/
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(26.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
            // style: Theme.of(context).textTheme.headline4,
            decoration: InputDecoration(
              icon: Icon(Icons.attach_money),
              labelText: 'Enter an integer:',
              errorText:
                  _numberInputIsValid ? null : 'Please enter an integer!',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            onSubmitted: (val) {
              print('Enter an integer----------');
              setState(() => _numberInputIsValid = false);
              /* Fluttertoast.showToast(
    msg: 'You entered:${int.parse(val)}',
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,  // 消息框弹出的位置
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16.0);*/
            },
          ),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              labelText: "用户名",
              hintText: "用户名或邮箱",
              errorText:
                  _numberInputIsValid ? null : 'Please enter an integer!',
              // prefixIcon: Icon(Icons.person)
            ),
            controller: _selectionController,
            keyboardType: TextInputType.phone,
            focusNode: focusNode1,
            //关联focusNode1
            /* onSubmitted: (val) =>
    Fluttertoast.showToast(msg: 'You entered: ${int.parse(val)}'),*/
            onSubmitted: (val) => Fluttertoast.showToast(
                msg: 'You entered:${int.parse(val)}',
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.TOP,
                // 消息框弹出的位置
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0),
            inputFormatters: <TextInputFormatter>[
              BlacklistingTextInputFormatter(RegExp("[a-z]")),
              LengthLimitingTextInputFormatter(5),
              FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
              FilteringTextInputFormatter.deny(RegExp('[abFeG]')),
            ],
            /* onSaved: (String value) {
    this._phoneNumber = value;
    print('phoneNumber=$_phoneNumber');
    },
    // TextInputFormatters are applied in sequence.
    inputFormatters: <TextInputFormatter>[
    WhitelistingTextInputFormatter.digitsOnly,
    ],*/
            /*onChanged: (String val) {
    final v = int.tryParse(val);
    // debugPrint('parsed value = $v');
    if (v == null) {
    setState(() => _numberInputIsValid = false);
    } else {
    setState(() => _numberInputIsValid = true);
    }
    },*/
            // onChanged: (text) => setState(() {}),//设置controller
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                prefixIcon: Icon(Icons.lock)),
            focusNode: focusNode2, //关联focusNode2
            obscureText: true,
          ),
          Column(
            children: <Widget>[
              RaisedButton(
                child: Text("移动焦点"),
                onPressed: () {
                  //将焦点从第一个TextField移到第二个TextField
                  // 这是一种写法 FocusScope.of(context).requestFocus(focusNode2);
                  // 这是第二种写法
                  if (null == focusScopeNode) {
                    focusScopeNode = FocusScope.of(context);
                  }
                  focusScopeNode.requestFocus(focusNode2);
                },
              ),
              RaisedButton(
                child: Text("隐藏键盘"),
                onPressed: () {
                  // 当所有编辑框都失去焦点时键盘就会收起
                  focusNode1.unfocus();
                  focusNode2.unfocus();
                },
              ),
            ],
          )
        ],
      ),
    ));
  }
}
/*
    bool _numberInputIsValid = true;

    final _controller = TextEditingController();

    Widget _buildMultilineTextField() {
    return TextField(
    controller: this._controller,
    maxLines: 4,
    textCapitalization: TextCapitalization.sentences,
    decoration: InputDecoration(
    counterText: '${this._controller.text.split(' ').length} words',
    labelText: 'Enter multiline text:',
    hintText: 'type something...',
    border: OutlineInputBorder(),
    ),
    onChanged: (text) => setState(() {}),
    );
    }

    bool _showPassword = false;

    Widget _buildPasswordTextField() {
    return TextField(
    obscureText: !this._showPassword,
    decoration: InputDecoration(
    labelText: 'password',
    prefixIcon: Icon(Icons.security),
    suffixIcon: IconButton(
    icon: Icon(
    Icons.remove_red_eye,
    color: this._showPassword ? Colors.blue : Colors.grey,
    ),
    onPressed: () {
    setState(() => this._showPassword = !this._showPassword);
    },
    ),
    ),
    );
    }

    Widget _buildBorderlessTextField() {
    return TextField(
    maxLines: 3,
    decoration: InputDecoration.collapsed(hintText: 'borderless input'),
    );

    }
    Widget _buildLabelTextTextField() {
    return TextField(
    autofocus: true,
    decoration: InputDecoration(
    labelText: "用户名",
    hintText: "用户名或邮箱",
    prefixIcon: Icon(Icons.person)
    ),
    // controller: _unameController, //设置controller
    );

    }

    Widget _buildNumberTextField() {
    return TextField(
    keyboardType: TextInputType.number,
    style: Theme.of(context).textTheme.headline6,
    decoration: InputDecoration(
    icon: Icon(Icons.attach_money),
    labelText: 'Enter an integer:',
    errorText: _numberInputIsValid ? null : 'Please enter an integer!',
    border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    ),
    onSubmitted: (val) =>
    Fluttertoast.showToast(msg: 'You entered: ${int.parse(val)}'),
    onChanged: (String val) {
    final v = int.tryParse(val);
    debugPrint('parsed value = $v');
    if (v == null) {
    setState(() => _numberInputIsValid = false);
    } else {
    setState(() => _numberInputIsValid = true);
    }
    },
    );
    }

    @override
    Widget build(BuildContext context) {
    return ListView(
    padding: EdgeInsets.all(4.0),
    children: <Widget>[
    ListTile(title: Text('1. Number input field')),
    _buildNumberTextField(),
    ListTile(title: Text('2. Multiline input field')),
    _buildMultilineTextField(),
    ListTile(title: Text('3. Password input field')),
    _buildPasswordTextField(),
    ListTile(title: Text('4. Borderless input')),
    _buildBorderlessTextField(),
    ListTile(title: Text('5. labelText input')),
    _buildLabelTextTextField(),
    ],
    );
    }*/

/**
 *

    class _InputFieldsAndForms extends State<InputFieldsAndForms> {
    @override
    Widget build(BuildContext context) => Scaffold(
    body: Markdown(
    data: INPUTFIELDSANDFORMS,
    styleSheet: MarkdownStyleSheet(
    // 支持修改样式
    blockquote: TextStyle(fontSize: 25.0),
    p: TextStyle(fontSize: 25.0),
    h1: TextStyle(fontSize: 30.0),
    a: TextStyle(fontSize: 25.0),
    code: TextStyle(fontSize: 20.0),
    em: TextStyle(fontSize: 25.0),
    strong: TextStyle(fontSize: 25.0),
    del: TextStyle(fontSize: 25.0),
    tableHead: TextStyle(fontSize: 18.0),
    tableBody: TextStyle(fontSize: 18.0),
    ),
    ));
    }
 */
