import 'package:flutter/material.dart';
import 'package:youtube_clone/data.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'package:youtube_clone/widgets/widgets.dart';

class VideoInfo extends StatelessWidget {
  final Video video;

  const VideoInfo({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      video.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '${video.viewCount} views  ${timeago.format(video.timestamp)}',
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        ChannelInfo(video: video),
        const SizedBox(
          height: 10,
        ),
        VideoButton(
          video: video,
        ),
      ],
    );
  }
}

class ChannelInfo extends StatelessWidget {
  final Video video;

  const ChannelInfo({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 16,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                video.author,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                video.subscribers,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Subscribe(),
        ],
      ),
    );
  }
}

class VideoButton extends StatelessWidget {
  final Video video;

  const VideoButton({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 35,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            const SizedBox(
              width: 2.5,
            ),
            LikesandDislikes(video: video),
            const SizedBox(
              width: 2.5,
            ),
            Share(video: video),
            const SizedBox(
              width: 2.5,
            ),
            Download(video: video),
            const SizedBox(
              width: 2.5,
            ),
            Save(video: video)
          ],
        ),
      ),
    );
  }
}

class LikesandDislikes extends StatelessWidget {
  final Video video;

  const LikesandDislikes({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 42, 42, 42),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              const SizedBox(
                width: 7,
              ),
              const Icon(
                Icons.thumb_up_outlined,
                size: 18,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(video.likes),
              const SizedBox(
                width: 5,
              ),
              const VerticalDivider(),
              const Icon(
                Icons.thumb_down_outlined,
                size: 18,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Share extends StatelessWidget {
  final Video video;

  const Share({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 42, 42, 42),
            borderRadius: BorderRadius.circular(20)),
        child: const Padding(
          padding: EdgeInsets.all(5.0),
          child: Row(
            children: [
              SizedBox(
                width: 7,
              ),
              Icon(
                Icons.share,
                size: 18,
                color: Colors.grey,
              ),
              SizedBox(
                width: 6,
              ),
              Text('Share'),
              SizedBox(
                width: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Download extends StatelessWidget {
  final Video video;

  const Download({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 42, 42, 42),
            borderRadius: BorderRadius.circular(20)),
        child: const Padding(
          padding: EdgeInsets.all(5.0),
          child: Row(
            children: [
              SizedBox(
                width: 7,
              ),
              Icon(
                Icons.download,
                size: 18,
                color: Colors.grey,
              ),
              SizedBox(
                width: 6,
              ),
              Text('Download'),
              SizedBox(
                width: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Save extends StatelessWidget {
  final Video video;

  const Save({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 42, 42, 42),
            borderRadius: BorderRadius.circular(20)),
        child: const Padding(
          padding: EdgeInsets.all(5.0),
          child: Row(
            children: [
              SizedBox(
                width: 7,
              ),
              Icon(
                Icons.save_alt_outlined,
                size: 18,
                color: Colors.grey,
              ),
              SizedBox(
                width: 6,
              ),
              Text('Save'),
              SizedBox(
                width: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
