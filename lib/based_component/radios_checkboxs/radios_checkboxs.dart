import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'explain.dart';

class RadiosCheckboxs extends StatefulWidget {
  const RadiosCheckboxs({Key key}) : super(key: key);

  @override
  _RadiosCheckboxs createState() => _RadiosCheckboxs();
}

class _ListItems{
  _ListItems(this.value, this.checked);
  final String value;
  bool checked;
}

class _RadiosCheckboxs extends State<RadiosCheckboxs> {
  bool _reverseSort = false;
  final _items = <String>[
    'Checkbox1',
    'Checkbox2',
    'Checkbox3',
    'Checkbox4',
    'Checkbox5',
    'Checkbox6',
    'Checkbox7',
    'Checkbox8',
    'Checkbox9',
    'Checkbox10',
  ].map((item) => _ListItems(item, false)).toList();
   // .map((item) => _ListItem(item, false)).toList();
  @override
  Widget build(BuildContext context) {
    void _onSort() {
      setState(() {
        _reverseSort = !_reverseSort;
        _items.sort((_ListItems a, _ListItems b) => _reverseSort
            ? b.value.compareTo(a.value)
            : a.value.compareTo(b.value));
      });
    }

    final _appbar = AppBar(
      title: Text('Reorderable list'),
      automaticallyImplyLeading: false,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.sort_by_alpha),
          tooltip: 'Sort',
          onPressed: _onSort,
        ),
      ],
    );

    final _listTiles = _items
        .map(
          (item) => CheckboxListTile(
            key: Key(item.value),
            value: item.checked ?? false,
            onChanged: (bool newValue) {
              setState(() => item.checked = newValue);
            },
            title: Text('This item represents ${item.value}.'),
            isThreeLine: true,
            subtitle: Text('Item ${item.value}, checked=${item.checked}'),
            secondary: Icon(Icons.drag_handle),
          ),
        )
        .toList();
    return Scaffold(
        appBar: _appbar,
        body: ListView(
        children:_listTiles,
    )
    );

  /*  final _listTiles = _items
        .map(
          (item) => CheckboxListTile(
            key: Key(item.value),
            value: item.checked ?? false,
            onChanged: (bool newValue) {
              setState(() => item.checked = newValue);
              print('----------------------------------------$_items');
            },
            title: Text('This item represents ${item}.'),
            isThreeLine: true,
            subtitle: Text('Item ${item.value}, checked=${item.checked}'),
            secondary: Icon(Icons.bubble_chart_sharp),
          ),
        )
        .toList();
    return Scaffold(
      // appBar: _appbar,
      body: ListView(
        // onReorder: _onReorder,
        children: _listTiles,
      ),
    );*/
  }
/**
    bool _reverseSort = false;
    static final _items = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    ].map((item) => _ListItem(item, false)).toList();


    // Handler called by ReorderableListView onReorder after a list child is
    // dropped into a new position.
    void _onReorder(int oldIndex, int newIndex) {
    /* setState(() {
    print('----------------------------------------$_items');
    if (newIndex > oldIndex) {
    newIndex -= 1;
    }
    final _ListItem item = _items.removeAt(oldIndex);
    _items.insert(newIndex, item);
    });*/
    }

    // Handler called when the "sort" button on appbar is clicked.
    /* void _onSort() {
    setState(() {
    _reverseSort = !_reverseSort;
    _items.sort((_ListItem a, _ListItem b) => _reverseSort
    ? b.value.compareTo(a.value)
    : a.value.compareTo(b.value));
    });
    }*/

    @override
    Widget build(BuildContext context) {
    /*final _appbar = AppBar(
    title: Text('Reorderable list'),
    automaticallyImplyLeading: false,
    actions: <Widget>[
    IconButton(
    icon: Icon(Icons.sort_by_alpha),
    tooltip: 'Sort',
    onPressed: _onSort,
    ),
    ],
    );*/
    final _listTiles = _items
    .map(
    (item) => CheckboxListTile(
    key: Key(item.value),
    value: item.checked ?? false,
    onChanged: (bool newValue) {
    setState(() => item.checked = newValue);
    print('----------------------------------------$_items');
    },
    title: Text('This item represents ${item}.'),
    isThreeLine: true,
    subtitle: Text('Item ${item.value}, checked=${item.checked}'),
    secondary: Icon(Icons.bubble_chart_sharp),
    ),
    )
    .toList();
    return Scaffold(
    // appBar: _appbar,
    body: ReorderableListView(
    onReorder: _onReorder,
    children: _listTiles,
    ),
    );
    }
 */
}
