import 'package:flutter/material.dart';
import 'package:game_store/detail/detail.dart';
import 'package:game_store/models/game.dart';

class PopularGame extends StatelessWidget {
  PopularGame({super.key});

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
        scrollDirection: Axis.horizontal,
        itemCount: games.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10.0),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailGame(game: games[index]),
          )),
          child: Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Hero(
                  tag: games[index].name,
                  child: Image.asset(games[index].bgImage),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
