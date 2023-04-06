import 'package:flutter/material.dart';
import 'package:game_store/models/game.dart';

class NewestGame extends StatelessWidget {
  NewestGame({super.key});

  final List<Game> games = Game.games();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      // color: Colors.red,
      child: Column(
        children: games
            .map(
              (game) => Container(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                // color: Colors.blue,
                margin: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.asset(
                        game.icon,
                        width: 60.0,
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            game.name,
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    game.type,
                                    style: TextStyle(
                                      color: Colors.grey.withOpacity(0.8),
                                    ),
                                  ),
                                  buildStars(),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 5.0,
                                  horizontal: 15.0,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF5F67EA),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: const Text(
                                  'Install',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Row buildStars() {
    return Row(
      children: const [
        Icon(
          Icons.star,
          size: 15.0,
          color: Colors.amber,
        ),
        Icon(
          Icons.star,
          size: 15.0,
          color: Colors.amber,
        ),
        Icon(
          Icons.star,
          size: 15.0,
          color: Colors.amber,
        ),
        Icon(
          Icons.star,
          size: 15.0,
          color: Colors.amber,
        ),
        Icon(
          Icons.star,
          size: 15.0,
          color: Colors.amber,
        ),
      ],
    );
  }
}
