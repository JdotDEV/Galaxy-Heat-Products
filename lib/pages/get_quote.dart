import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Get_quote extends StatefulWidget {
  const Get_quote({super.key});

  @override
  State<Get_quote> createState() => _Get_quoteState();
}

class _Get_quoteState extends State<Get_quote> {
  WebViewController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://galaxyheaters.com/quote/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: Text("Get Quote"),
        ),
        body: WebViewWidget(controller: _controller!));
  }
}
