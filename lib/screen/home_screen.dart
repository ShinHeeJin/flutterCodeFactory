import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final WebViewController webviewController = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse("https://blog.codefactory.ai"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Code Factory"),
          centerTitle: true,
        ),
        body: WebViewWidget(
          controller: webviewController,
        ));
  }
}
