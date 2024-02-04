import 'package:flutter/material.dart';

class CustomAppBar2 extends StatelessWidget {
  const CustomAppBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.cast,
            size: 25,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_outlined,
            size: 25,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 25,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings_outlined,
            size: 25,
          ),
        ),
      ],
    );
  }
}
