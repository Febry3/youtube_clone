import 'package:flutter/material.dart';
import 'package:youtube_clone/widgets/custom_app_bar.dart';
import 'package:youtube_clone/widgets/widgets.dart';
import 'package:youtube_clone/data.dart';
import '../widgets/subscribed_channel_list.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomAppBar(),
          const SubscribedChannelList(),
          CategoryList(),
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
    );
  }
}
