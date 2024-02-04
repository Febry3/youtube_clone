import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:youtube_clone/screens/home_screen.dart';
import 'package:youtube_clone/data.dart';
import 'package:youtube_clone/screens/profile_screen.dart';
import 'package:youtube_clone/screens/shorts_screen.dart';
import 'package:youtube_clone/screens/subscription_screen.dart';
import 'package:youtube_clone/screens/video_screen.dart';

final selectedVideo = StateProvider<Video?>((ref) => null);

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int selectedIndex = 0;
  static const double videoPlayerMinHeight = 60.0;

  final screens = [
    const HomeScreen(),
    const ShortScreen(),
    const Scaffold(body: Center(child: Text('Add'))),
    const SubscriptionScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, watch, _) {
          final selected = watch(selectedVideo).state;
          final miniPlayerController =
              watch(miniPlayerControllerProvider).state;

          return Stack(
            children: screens
                .asMap()
                .map(
                  (i, screen) => MapEntry(
                    i,
                    Offstage(offstage: selectedIndex != i, child: screen),
                  ),
                )
                .values
                .toList()
              ..add(
                Offstage(
                  offstage: selected == null,
                  child: Miniplayer(
                    controller: miniPlayerController,
                    minHeight: videoPlayerMinHeight,
                    maxHeight: MediaQuery.of(context).size.height,
                    builder: ((height, percentage) {
                      if (selected == null) {
                        return const SizedBox.shrink();
                      }

                      if (height <= videoPlayerMinHeight + 50.0) {
                        // ignore: avoid_unnecessary_containers
                        return Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    selected.thumbnailUrl,
                                    height: videoPlayerMinHeight - 4,
                                    width: 120,
                                    fit: BoxFit.cover,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  selected.title,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                selected.author,
                                                style: const TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () => {},
                                    icon: const Icon(
                                      Icons.play_arrow,
                                      size: 30,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () => {
                                      context.read(selectedVideo).state = null
                                    },
                                    icon: const Icon(
                                      Icons.close,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              const LinearProgressIndicator(
                                value: 0.8,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        );
                      }
                      return const VideoScreen();

                      // ignore: avoid_unnecessary_containers
                    }),
                  ),
                ),
              ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 12,
        selectedFontSize: 12,
        currentIndex: selectedIndex,
        onTap: (i) => setState(() => selectedIndex = i),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_back_outlined),
            activeIcon: Icon(Icons.video_camera_back),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
              size: 40,
            ),
            activeIcon: Icon(
              Icons.add_circle,
              size: 40,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            activeIcon: Icon(Icons.subscriptions),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 13,
              backgroundColor: Colors.white,
            ),
            label: 'You',
          ),
        ],
      ),
    );
  }
}
