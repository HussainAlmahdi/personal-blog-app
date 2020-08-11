import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Resume extends StatelessWidget {
    static const routeName= '/resume';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: const Text('My Resume'),
        
      ),
      body: const WebView(
        initialUrl: 'http://hussainalmahdi.com/CV.php',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}