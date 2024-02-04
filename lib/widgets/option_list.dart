import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/screens/download_screen.dart';

class OptionList extends StatelessWidget {
  const OptionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Option(
          icon: Icons.play_arrow_sharp,
          text: 'Your Videos',
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DownloadScreen()));
          },
          child: Option(
            icon: CupertinoIcons.arrow_down_to_line,
            text: 'Downloads',
          ),
        ),
        Divider(),
        Option(
          icon: Icons.movie_creation_outlined,
          text: 'Your Movies',
        ),
        Option(
          icon: CupertinoIcons.play_circle,
          text: 'Get YouTube Premium',
        ),
        Divider(),
        Option(
          icon: Icons.analytics_outlined,
          text: 'Time Watched',
        ),
        Option(
          icon: CupertinoIcons.question_circle,
          text: 'Help and Feedback',
        ),
      ],
    );
  }
}

class Option extends StatelessWidget {
  final String text;
  final IconData icon;
  const Option({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12.5),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
