import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'this is title',
      theme: ThemeData(
        // This is the theme of your application.
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: new TutorialHome(),
    );
  }
}

/**
 * Scaffold 是 Material library 中提供的一个widget,
 * 它提供了默认的导航栏、标题和包含主屏幕widget树的body属性。
 * widget树可以很复杂
 */

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 
    return new Material(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('hello flutter',
          style: Theme.of(context).primaryTextTheme.title),
        ),
        body: new Center(
          child: new Text('zhoubin'),
        ),
      ),
    );
  }

}

/**
 * 稍复杂些的materialApp
 */

class TutorialHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // 
    return new Scaffold(
      appBar: new AppBar(
        // leading在标题之前显示的组件 IconButton 交互图标
        leading: new IconButton(
          icon: new Icon(null),
          tooltip: '导航菜单',
          onPressed: null,
        ),
        title: new Text('京东抢购'),
        // 在标题之后显示的组件  注意是数据形式 可以有多个widget
        actions: <Widget>[
          new IconButton(
            // icon 按钮中显示的图片
            icon: new Icon(null),
            // tooltip 当用户常按按钮时，将显示这个信息
            tooltip: 'open shopping cart',
            // 点击按钮的回调方法
            onPressed: openCart,
            highlightColor: Colors.red,

          )
        ],
      ),
      // body 将占屏幕的大部分 scaffold 中的主要内容
      body: new Center(
        child: new Text('hello flutter110112'),
        widthFactor: 40.20,
        heightFactor: 55.22,
      ),
      // floatingActionButton 浮动按钮 将悬停在内容上，每个页面最多一个按钮
      floatingActionButton: new FloatingActionButton(
        tooltip: '增加',
        child: new Icon(null),
        onPressed: null,
        backgroundColor: Colors.red,
      ),
    );
  }

// 打开购物车方法
void openCart() {
  print('打开购物车');
}
}

























class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
