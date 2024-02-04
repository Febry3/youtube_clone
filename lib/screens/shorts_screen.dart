import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_clone/widgets/widgets.dart';

class ShortScreen extends StatelessWidget {
  const ShortScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/thumbnails/thumbnail1.png',
            fit: BoxFit.fitWidth,
            height: double.infinity,
          ),
          const TopRightIcons(),
          const BotRightIcons(),
          const ShortVideoInfo(),
        ],
      ),
    );
  }
}

class TopRightIcons extends StatelessWidget {
  const TopRightIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          Icons.search,
          size: 30,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.camera_alt_outlined,
          size: 30,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.more_vert,
          size: 30,
        )
      ],
    );
  }
}

class BotRightIcons extends StatelessWidget {
  const BotRightIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 7,
      right: 7,
      child: Column(
        children: [
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.thumb_up),
              ),
              const Text(
                '69K',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.thumb_down),
              ),
              const Text(
                'Dislike',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.comment),
              ),
              const Text(
                '10',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.arrowshape_turn_up_right_fill),
              ),
              const Text(
                'Share',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.arrow_2_squarepath),
              ),
              const Text(
                'Remix',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const ShortAvatarText(),
          ),
        ],
      ),
    );
  }
}

class ShortAvatarText extends StatelessWidget {
  const ShortAvatarText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'AG',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}

class ShortVideoInfo extends StatelessWidget {
  const ShortVideoInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      left: 15,
      bottom: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 16,
                child: ShortAvatarText(),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '@YantooSlamet96',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Subscribe(
                w: 100,
                h: 32.5,
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Atan menjadi setan',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Icon(
                CupertinoIcons.music_note_2,
                size: 18,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Original Sound',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
