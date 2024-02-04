import 'package:flutter/material.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Downloads'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/downloadpage.jpeg'),
          Text('Videos that you download will appear here')
        ],
      ),
    );
  }
}
