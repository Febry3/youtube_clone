class Video {
  final String id;
  final String author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislikes;
  final String subscribers;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
    required this.subscribers,
  });

  set state(Video state) {}
}

final List<Video> videos = [
  Video(
    id: 'x606y4QWrxo',
    author: 'Asep Surasep',
    title:
        'Ketika atan menjadi setan dasdddddddddddddddddddddddddddddddddddddddddddddddddsddddddddddddddddddddddddddddddddddddddddddddda',
    thumbnailUrl: 'assets/thumbnails/thumbnail1.png',
    duration: '0:20',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
    subscribers: '100K',
  ),
  Video(
    author: 'Yanto Kopling',
    id: 'vrPk6LB9bjo',
    title: 'Green Screen',
    thumbnailUrl: 'assets/thumbnails/thumbnail2.jpg',
    duration: '20:66',
    timestamp: DateTime(2021, 2, 26),
    viewCount: '8K',
    likes: '485',
    dislikes: '69',
    subscribers: '100K',
  ),
  Video(
    id: 'ilX5hnH8XoI',
    author: 'Antolo',
    title: 'White Screen',
    thumbnailUrl: 'assets/thumbnails/thumbnail3.jpg',
    duration: '10:53',
    timestamp: DateTime(2020, 7, 12),
    viewCount: '18K',
    likes: '1k',
    dislikes: '422',
    subscribers: '100K',
  ),
  Video(
    id: 'x606y4QWrxo',
    author: 'Budi Diarta',
    title: 'Ketika atan menjadi setan 2',
    thumbnailUrl: 'assets/thumbnails/thumbnail1.png',
    duration: '0:20',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
    subscribers: '100K',
  ),
  Video(
    id: 'x606y4QWrxo',
    author: 'Diarta Putro',
    title: 'Ketika atan menjadi setan 3',
    thumbnailUrl: 'assets/thumbnails/thumbnail1.png',
    duration: '0:20',
    timestamp: DateTime(2021, 3, 20),
    viewCount: '10K',
    likes: '958',
    dislikes: '4',
    subscribers: '100K',
  ),
];

final List<String> channelnames = [
  'Asep',
  'Budi',
  'Cahyo',
  'Dodi',
  'Esfran',
  'Fuad',
];
