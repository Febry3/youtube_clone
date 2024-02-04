import 'package:flutter/material.dart';
import 'package:youtube_clone/widgets/history_list.dart';
import 'package:youtube_clone/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: ListView(
        children: const [
          ProfileInfo(),
          SizedBox(
            height: 20,
          ),
          AccountOptionList(),
          SizedBox(
            height: 25,
          ),
          HistoryList(),
          SizedBox(
            height: 25,
          ),
          OptionList(),
        ],
      ),
    );
  }
}
