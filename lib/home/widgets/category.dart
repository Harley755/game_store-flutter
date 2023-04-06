import 'package:flutter/material.dart';
import 'package:game_store/home/widgets/newest.dart';
import 'package:game_store/home/widgets/popular.dart';

class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final categories = [
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color(0xFF605CF4),
      'title': 'Arcade'
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': const Color(0xFFFC77A6),
      'title': 'Racing'
    },
    {
      'icon': Icons.casino_outlined,
      'color': const Color(0xFF4391FF),
      'title': 'Strategy'
    },
    {
      'icon': Icons.sports_esports,
      'color': const Color(0xFF7182F2),
      'title': 'More'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800.0,
      decoration: const BoxDecoration(
        color: Color(0xFFF6F8FF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 140.0,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              separatorBuilder: (context, index) => const SizedBox(width: 25.0),
              itemBuilder: (context, index) => Column(
                children: [
                  const SizedBox(height: 25.0),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: categories[index]['color'] as Color,
                    ),
                    child: Icon(
                      categories[index]['icon'] as IconData,
                      color: Colors.white,
                      size: 40.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    categories[index]['title'] as String,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: const Text(
              'Popular game',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PopularGame(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: const Text(
              'Newest game',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          NewestGame(),
        ],
      ),
    );
  }
}
