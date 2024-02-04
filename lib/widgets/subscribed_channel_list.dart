import 'package:flutter/material.dart';
import 'package:youtube_clone/data.dart';

class SubscribedChannelList extends StatelessWidget {
  const SubscribedChannelList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Container(
          height: 80,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: channelnames.length,
            itemBuilder: (context, index) {
              final channelname = channelnames[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                    ),
                    Text(
                      channelname,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
