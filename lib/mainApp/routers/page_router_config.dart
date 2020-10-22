import 'package:flutter/material.dart';
import 'package:my_router_flutter/mainApp/routers/route_interface.dart';
import 'package:my_router_flutter/mainApp/agency_route.dart';
/**
 * Dart #笔记 routers
 * */
import 'package:my_router_flutter/dart/class/super.dart';
import 'package:my_router_flutter/dart/class/explain.dart' show MARKDOWNDATA;

/**
 * based_component
 */
import 'package:my_router_flutter/based_component/flutter_widget/flutter_widget.dart';
import 'package:my_router_flutter/based_component/flutter_widget/explain.dart'show FLUTTERWIDGET;
import 'package:my_router_flutter/based_component/state_managements/state_managements.dart';
import 'package:my_router_flutter/based_component/state_managements/explain.dart'show STATEMANAGEMENTS;

import 'package:my_router_flutter/based_component/text_font_style/text_font_style.dart';
import 'package:my_router_flutter/based_component/text_font_style/explain.dart'show TEXTFONTSTYLE;

import 'package:my_router_flutter/based_component/button_style/button_style.dart';
import 'package:my_router_flutter/based_component/button_style/explain.dart'show BUTTONSTYLE;

import 'package:my_router_flutter/based_component/image_icon/image_icon.dart';
import 'package:my_router_flutter/based_component/image_icon/explain.dart'show IMAGEICON;

import 'package:my_router_flutter/based_component/radios_checkboxs/radios_checkboxs.dart';
import 'package:my_router_flutter/based_component/radios_checkboxs/explain.dart'show RADIOSCHECKBOXS,INPUTFIELDSANDFORMS;

import 'package:my_router_flutter/based_component/radios_checkboxs/radios-data-table-example.dart';
import 'package:my_router_flutter/based_component/radios_checkboxs/widgets_stateful_widgets_ex.dart';
import 'package:my_router_flutter/based_component/radios_checkboxs/input_fields_and_forms.dart';
// import 'package:my_router_flutter/based_component/radios_checkboxs/explain.dart'show RADIOSCHECKBOXS;
/**
 * apply
 */
import 'package:my_router_flutter/flutter_apply/touter_admin/router_admin.dart';
import 'package:my_router_flutter/flutter_apply/touter_admin/explain.dart' show ROUTERADMIN;
import 'package:my_router_flutter/flutter_apply/resource_administration/resource_administration.dart';
import 'package:my_router_flutter/flutter_apply/resource_administration/explain.dart' show RESOURCEADMINISTRATION;
import 'package:my_router_flutter/flutter_apply/exception_handling/exception_handling.dart';
import 'package:my_router_flutter/flutter_apply/exception_handling/explain.dart' show EXCEPTIONHANDLING;


/**
 * layouts
 */
import 'package:my_router_flutter/layouts/flutter_layout_demo.dart';
import 'package:my_router_flutter/layouts/container/container.dart';
import 'package:my_router_flutter/layouts/container/explain.dart' show LAYOUTSCONTAINER;
/**
 * widget
 * */
import 'package:my_router_flutter/flutter_widget/app_bar/app_bar_ex.dart';
import 'package:my_router_flutter/flutter_widget/app_bar/documents.dart' show APPBAR_DOC;
import 'package:my_router_flutter/flutter_widget/lists/tile_example.dart';
import 'package:my_router_flutter/flutter_widget/lists/listview_example.dart';

/**
 * pubs
 * */
import 'package:my_router_flutter/flutter_pub/markdown/markdown_example.dart';
import 'package:my_router_flutter/flutter_pub/provider/example/provider_example.dart';
import 'package:my_router_flutter/flutter_pub/provider/example/explain.dart' show PROVIDEREXAMPLE;
import 'package:my_router_flutter/flutter_pub/shard_preferences/example/shard_preferences.dart';
import 'package:my_router_flutter/flutter_pub/stacked_pub/stacked_pub.dart';
import 'package:my_router_flutter/flutter_pub/stacked_pub/stacked_nonReactive.dart';
import 'package:my_router_flutter/flutter_pub/stacked_pub/explain.dart' show STACKEDPUBMOUDELS;

/**
 * http
 * */
import 'package:my_router_flutter/http/dio/example/http_example.dart';
import 'package:my_router_flutter/http/http_modules/http_page_test_page.dart';
/**
 * basic_knowledge
 * */
import 'package:my_router_flutter/basic_knowledge/basic_widget.dart';

/**
 * navigator
 * */
import 'package:my_router_flutter/navigator/navigator_expert/nav_expert.dart';
import 'package:my_router_flutter/navigator/navigator_expert/explain.dart' show NAVIGATOREXPERT;
import 'package:my_router_flutter/navigator/based_on_using/navigator_based.dart';
import 'package:my_router_flutter/navigator/based_on_using/explain.dart' show BASEDONUSING;
import 'package:my_router_flutter/navigator/routers/nav_routes_ex.dart';

/**
 *interface
 */

import 'package:my_router_flutter/share_communication/communication/communication.dart';
import 'package:my_router_flutter/share_communication/communication/explain.dart' show PARENTCHILDCOMMUNICATION;
import 'package:my_router_flutter/share_communication/shared_data_widget/shared_data_widget.dart';
import 'package:my_router_flutter/share_communication/shared_data_widget/explain.dart' show SHAREDDATAWIDGET;
/**
 *share_communication
 */


const MyDefaultRoutes = <DefaultRoute>[
  DefaultRoute(
      groupName: "Dart",
      icon: Icon(Icons.extension),
      children: <DefaultRoute>[
        DefaultRoute(
            groupName: 'Class Super',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                  child: DartSuper(
                      explain: 'explainaaaaaaaaaaaaaaaaaa',
                      arguments: {}),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/dart/class/super.dart',
                  title: 'Class Super ',
                  description: 'Super 继承-调用父类fun 传值父,获取父的值',
                  explain: MARKDOWNDATA,
                  arguments: {}),
            ])
      ]),
  // Widget
  DefaultRoute(
      groupName: "Widget",
      icon: Icon(Icons.extension),
      children: <DefaultRoute>[
        DefaultRoute(
            groupName: '简介及状态管理',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                  child: FlutterWidget(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/based_component/flutter_widget/flutter_widget.dart',
                  title: 'Widget简介 ',
                  description: 'Widget与Element StatelessWidget Context StatefulWidget State State生命周期',
                  explain: FLUTTERWIDGET,
                  arguments: {}),
              AgencyRoute(
                  child: StateManagements(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/based_component/state_managements/state_managements.dart',
                  title: '状态管理 ',
                  description: 'Widget管理自身状态  父Widget管理子Widget的状态',
                  explain: STATEMANAGEMENTS,
                  arguments: {}),
            ]),
        DefaultRoute(
            groupName: '基础组件',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                  child: TextFontStyle(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: '',
                  title: '文本 字体 样式 ',
                  description: '',
                  explain: TEXTFONTSTYLE,
                  arguments: {}),
              AgencyRoute(
                  child: ButtonStyles(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/based_component/button_style/button_style.dart',
                  title: '按钮 ',
                  description: 'RaisedButton FlatButton OutlineButton  IconButton',
                  explain: BUTTONSTYLE,
                  arguments: {}),
              AgencyRoute(
                  child: ImagesIcons(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/based_component/button_style/button_style.dart',
                  title: '图片及ICON',
                  description: '',
                  explain: IMAGEICON,
                  arguments: {}),
              AgencyRoute(
                  child: RadiosCheckboxs(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/based_component/radios_checkboxs/radios_checkboxs.dart',
                  title: '单选开关和复选框',
                  description: 'Radio Checkbox',
                  explain: RADIOSCHECKBOXS,
                  arguments: {}),
              AgencyRoute(
                  child: RadiosDataTableExample(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/based_component/radios_checkboxs/radios_checkboxs.dart',
                  title: '多选表格',
                  description: 'Radio Checkbox',
                  explain: RADIOSCHECKBOXS,
                  arguments: {}),
              AgencyRoute(
                  child: StatefulWidgetsExample(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/based_component/radios_checkboxs/radios_checkboxs.dart',
                  title: '多选，单选，加载条，距离拉申',
                  description: '多选，单选，加载条，距离拉申',
                  explain: RADIOSCHECKBOXS,
                  arguments: {}),
              AgencyRoute(
                  child: InputFieldsAndForms(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/based_component/radios_checkboxs/radios_checkboxs.dart',
                  title: '输入框及表单',
                  description: 'TextField Form',
                  explain: INPUTFIELDSANDFORMS,
                  arguments: {}),
            ])
      ]),
  // Flutter Apply
  DefaultRoute(
      groupName: "Flutter Apply",
      icon: Icon(Icons.extension),
      children: <DefaultRoute>[
        DefaultRoute(
            groupName: 'Router Admin',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                  child: RouterAdmin(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/flutter_apply/touter_admin/router_admin.dart',
                  title: 'Router Admin ',
                  description: '路由管理',
                  explain: ROUTERADMIN,
                  arguments: {}),
            ]),
        DefaultRoute(
            groupName: 'Resource Administration',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                  child: ResourceAdministration(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/flutter_apply/resource_administration/resource_administration.dart',
                  title: 'Resource Administration ',
                  description: '资源管理',
                  explain: RESOURCEADMINISTRATION,
                  arguments: {}),
            ]),
        DefaultRoute(
            groupName: 'Exception Handling',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                  child: ExceptionHandling(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/flutter_apply/resource_administration/resource_administration.dart',
                  title: '异常捕获',
                  description: '异常捕获',
                  explain: EXCEPTIONHANDLING,
                  arguments: {}),
            ]),
      ]),
  DefaultRoute(
      groupName: "Flutter Widget",
      icon: Icon(Icons.extension),
      children: <DefaultRoute>[
        DefaultRoute(
            groupName: 'App Bar',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                  child: AppBarExample(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/flutter_widget/app_bar/app_bar_ex.dart',
                  title: 'App Bar ',
                  description: 'Note',
                  explain:APPBAR_DOC,
                  arguments:{}),
            ]),
        DefaultRoute(
            groupName: 'List',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                  child: ExpansionTileExample(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath:
                  'lib/flutter_widget/lists/tile_example.dart',
                  title: 'Expansion Tile',
                  arguments:{}),
              AgencyRoute(
                  child: ListViewBuilderExample(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath:
                  'lib/http/http_modules/http_page_test_page.dart',
                  title: 'List View Builder Tile',
                  arguments:{})
            ]),
      ]),
  DefaultRoute(
      groupName: "Flutter layouts",
      icon: Icon(Icons.extension),
      children: <DefaultRoute>[
        DefaultRoute(
            groupName: 'flutter Layout Demo',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                  child: SamplePage(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/layouts/container/container.dart',
                  title: 'Layout Demo',
                  description: ' ',
                  explain:LAYOUTSCONTAINER,
                  arguments:{}),
            ]),
        DefaultRoute(
            groupName: 'container',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                  child: LayoutContainer(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/layouts/container/container.dart',
                  title: 'container',
                  description: '是绘制painting,定位positioning以及尺寸sizing的widget',
                  explain:LAYOUTSCONTAINER,
                  arguments:{}),
            ])
      ]),
  DefaultRoute(
      groupName: "Flutter Pub",
      icon: Icon(Icons.extension),
      children: <DefaultRoute>[
        DefaultRoute(
            groupName: 'Provider',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                child: ProviderExample(),
                icon: Icon(Icons.keyboard_arrow_right),
                sourceFilePath:
                'lib/flutter_pub/provider/example/provider_example.dart',
                title: 'Provider Example',
                description: '状态管理',
                explain: PROVIDEREXAMPLE,)
            ]),
        DefaultRoute(
            groupName: 'Markdown',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                  child: MarkdownExample(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath:
                  'lib/flutter_pub/markdown/markdown_example.dart',
                  title: 'flutter_markdown pub',
                  description: 'text 渲染 博客样式')
            ]),
        DefaultRoute(
            groupName: 'Shared Preferences',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                  child: Preferences(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath:
                  'lib/flutter_pub/shard_preferences/example/shard_preferences.dart',
                  title: 'Shared Preferences',
                  description: '轻量级存储类'),
              AgencyRoute(
                  child: StackedPub(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath:
                  'lib/flutter_pub/stacked_pub/stacked_pub.dart',
                  title: 'MVVM 简化应用程序开发的常见功能',
                  description: 'MVVM 简化应用程序开发的常见功能'),
              AgencyRoute(
                  child: StackedNonReactive(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath:
                  'lib/flutter_pub/stacked_pub/stacked_nonReactive.dart',
                  title: 'ViewModel View constructor ',
                  description: 'MVVM 父子组件方法调用，级方法传递',
                  explain:STACKEDPUBMOUDELS)
            ])
      ]),
  DefaultRoute(
      groupName: "Http",
      icon: Icon(Icons.extension),
      children: <DefaultRoute>[
        DefaultRoute(
            groupName: 'Dio Example ',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                  child: HttpExample(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/http/dio/example/http_example.dart',
                  title: 'Http Example'),
              AgencyRoute(
                  child: HttpPageTestPage(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/http/http_modules/example/http_example.dart',
                  title: 'Http Page Test Page'),
            ])
      ]),
  DefaultRoute(
      groupName: "Navigator",
      icon: Icon(Icons.extension),
      children: <DefaultRoute>[
        DefaultRoute(
            groupName: 'Navigator 基础使用',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                  child: NavigatorBased(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/navigator/based_on_using/navigator_based.dart',
                  title: 'Nav 基础使用',
                  explain:BASEDONUSING),
            ]),
        DefaultRoute(
            groupName: 'Navigator 高级用法',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                  child: NavigatorAdvanced(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/navigator/navigator_expert/nav_expert.dart',
                  title: 'Nav 高级用法',
                  explain:NAVIGATOREXPERT),
            ]),
        DefaultRoute(
            groupName: 'Navigator 其他',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                child: RoutesExample(),
                icon: Icon(Icons.keyboard_arrow_right),
                sourceFilePath: 'lib/navigator/navigator_expert/nav_expert.dart',
                title: 'Nav 其他',
              ),
            ])
      ]),
  DefaultRoute(
      groupName: "共享与通信",
      icon: Icon(Icons.extension),
      children: <DefaultRoute>[
        DefaultRoute(
            groupName: '父子组件通信',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                  child: Communication(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/share_communication/communication/communication.dart',
                  title: '父子组件通信',
                  explain:PARENTCHILDCOMMUNICATION),
            ]),
        DefaultRoute(
            groupName: 'Widget数据共享之InheritedWidget',
            icon: Icon(Icons.extension),
            routes: <AgencyRoute>[
              AgencyRoute(
                  child: SharedDataWidget(),
                  icon: Icon(Icons.keyboard_arrow_right),
                  sourceFilePath: 'lib/share_communication/shared_data_widget/shared_data_widget.dart',
                  title: '父子组件通信',
                  explain:SHAREDDATAWIDGET),
            ]),
      ]),
];