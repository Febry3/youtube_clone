import 'package:flutter/material.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:youtube_clone/data.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:youtube_clone/screens/navbar_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_clone/screens/video_screen.dart';

class VideoCard extends StatelessWidget {
  final Video video;

  const VideoCard({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read(selectedVideo).state = video;
        context
            .read(miniPlayerControllerProvider)
            .state
            .animateToHeight(state: PanelState.MAX);
      },
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                video.thumbnailUrl,
                height: 220.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 7,
                right: 7,
                child: Container(
                  padding: const EdgeInsets.all(3.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.75),
                  ),
                  child: Text(
                    video.duration,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 25, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
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
                        '${video.author}  ${video.viewCount}  ${timeago.format(video.timestamp)}',
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.more_vert,
                  size: 20,
                  color: Colors.grey,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
