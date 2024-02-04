import 'package:flutter/material.dart';

class ShortAppBar extends StatelessWidget {
  const ShortAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
