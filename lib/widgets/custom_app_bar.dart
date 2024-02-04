import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leadingWidth: 120,
      leading: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.asset('assets/logos/yt_logo_dark.png'),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.cast,
            size: 25,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.notifications_outlined,
            size: 25,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.search_outlined,
            size: 25,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
