class Game {
  final String bgImage;
  final String icon;
  final String name;
  final String type;
  final num score;
  final num download;
  final num review;
  final String description;
  final List<String> images;

  Game({
    required this.bgImage,
    required this.icon,
    required this.name,
    required this.type,
    required this.score,
    required this.download,
    required this.review,
    required this.description,
    required this.images,
  });

  static List<Game> games() {
    return [
      Game(
        bgImage: 'assets/images/ori1.jpg',
        icon: 'assets/images/ori_logo.png',
        name: 'Ori and The Blind Forest',
        type: 'Adventure',
        score: 4.8,
        download: 382,
        review: 324,
        description:
            "Ori is stranger to peril, but when a fateful flight puts the owlet ku in har'ms way.Ori is stranger to peril, but when a fateful flight puts the owlet ku in har'ms way.Ori is stranger to peril, but when a fateful flight puts the owlet ku in har'ms way.",
        images: [
          'assets/images/ori2.jpg',
          'assets/images/ori3.jpg',
          'assets/images/ori4.jpg',
        ],
      ),
      Game(
        bgImage: 'assets/images/rl1.jpg',
        icon: 'assets/images/rl_logo.png',
        name: 'Rayman Legends',
        type: 'Adventure',
        score: 4.7,
        download: 226,
        review: 148,
        description:
            "Rayman is stranger to peril, but when a fateful flight puts the owlet ku in har'ms way.Ori is stranger to peril, but when a fateful flight puts the owlet ku in har'ms way.Ori is stranger to peril, but when a fateful flight puts the owlet ku in har'ms way.",
        images: [
          'assets/images/rl2.jpg',
          'assets/images/rl3.jpg',
          'assets/images/rl4.jpg',
          'assets/images/rl5.jpg',
        ],
      ),
    ];
  }
}
