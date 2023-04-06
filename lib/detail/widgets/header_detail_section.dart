import 'package:flutter/material.dart';
import 'package:game_store/models/game.dart';

class HeaderDetailSection extends StatelessWidget {
  final Game game;
  const HeaderDetailSection({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Image.asset(game.bgImage, width: 80.0),
          const SizedBox(width: 15.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  game.name,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  game.type,
                  style: TextStyle(color: Colors.grey.withOpacity(0.5)),
                ),
                const SizedBox(height: 5.0),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 15.0,
                    ),
                    Text(
                      game.score.toString(),
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 30),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 15,
                        ),
                        Text(
                          '${game.download.toString()} k',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
