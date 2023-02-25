import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  static String blogUrl = "https://blog.codefactory.ai";
  final WebViewController webviewController = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(
      Uri.parse(blogUrl),
    );

  onPressed() {
    webviewController.loadRequest(Uri.parse(blogUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Code Factory"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: onPressed,
              icon: const Icon(Icons.home),
            )
          ],
        ),
        body: WebViewWidget(
          controller: webviewController,
        ));
  }
}
