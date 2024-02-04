import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:youtube_clone/data.dart';
import 'package:youtube_clone/screens/navbar_screen.dart';
import 'package:youtube_clone/widgets/video_info.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_clone/widgets/widgets.dart';

final miniPlayerControllerProvider =
    StateProvider.autoDispose<MiniplayerController>(
  (ref) => MiniplayerController(),
);

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverToBoxAdapter(
              child: Consumer(builder: (context, watch, _) {
                final selected = watch(selectedVideo).state;
                return Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          selected!.thumbnailUrl,
                          height: 220.0,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        IconButton(
                          iconSize: 30.0,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                          onPressed: () => {
                            context
                                .read(miniPlayerControllerProvider)
                                .state
                                .animateToHeight(state: PanelState.MIN),
                          },
                        )
                      ],
                    ),
                    const LinearProgressIndicator(
                      value: 0.8,
                      color: Colors.red,
                    ),
                    VideoInfo(video: selected),
                    const SizedBox(
                      height: 15,
                    ),
                    const CommentBox(),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                );
              }),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final video = videos[index];
                  return VideoCard(video: video);
                },
                childCount: videos.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
