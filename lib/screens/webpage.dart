import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatGPTWebView(), // Apne WebView widget ka naam
    );
  }
}

class ChatGPTWebView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChatGPT Webpage'),
      ),
      body: WebView(
        initialUrl: 'https://google.com', // ChatGPT webpage URL
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
