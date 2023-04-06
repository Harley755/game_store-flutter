import 'package:flutter/material.dart';
import 'package:game_store/models/game.dart';

class GalleryDetailSection extends StatelessWidget {
  final Game game;
  const GalleryDetailSection({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      // color: Colors.red,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        scrollDirection: Axis.horizontal,
        itemCount: game.images.length,
        separatorBuilder: (context, index) => const SizedBox(width: 15.0),
        itemBuilder: (context, index) => SizedBox(
          width: 250.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              game.images[index],
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
      ),
    );
  }
}
