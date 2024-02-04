import 'package:flutter/material.dart';
import 'package:youtube_clone/data.dart';

class HistoryVideoCard extends StatelessWidget {
  const HistoryVideoCard({
    super.key,
    required this.video,
  });

  final Video video;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 170,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Image.asset(
                    video.thumbnailUrl,
                  ),
                  Positioned(
                    bottom: 7,
                    right: 7,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.75),
                          borderRadius: BorderRadius.circular(3.5)),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          video.duration,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 145,
                      child: Text(
                        video.title,
                        style: const TextStyle(fontSize: 16),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      video.author,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.more_vert,
                  size: 14,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
