import 'package:flutter_web/material.dart';
import 'package:fweb_map/flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MapApp());

class MapApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Map Testing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Map Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
           appBar: AppBar(
             title: Text(title),
           ),
           //https://earth.google.com/web/@30.5160865,76.6597778,274.66580794a,895.08429529d,35y,0h,45t,0r/data=ChQaEgoKL20vMDR6enowNhgCIAEoAigC
           url: "https://www.google.com/maps/place/Chitkara+University/@30.5160865,76.6575891,931m/data=!3m1!1e3!4m5!3m4!1s0x390fc32344a6e2d7:0x81b346dee91799ca!8m2!3d30.5160865!4d76.6597778",
    );
  }
}
