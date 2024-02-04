import 'package:flutter/material.dart';
import 'package:youtube_clone/data.dart';
import 'package:youtube_clone/widgets/widgets.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'History',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Text('View all'),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: videos.length,
              itemBuilder: (context, index) {
                final video = videos[index];
                return HistoryVideoCard(video: video);
              },
            ),
          ),
        ],
      ),
    );
  }
}
