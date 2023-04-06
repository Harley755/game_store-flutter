import 'package:flutter/material.dart';
import 'package:game_store/detail/widgets/game_info.dart';
import 'package:game_store/detail/widgets/detail_sliver_delagate.dart';
import 'package:game_store/models/game.dart';

class DetailGame extends StatelessWidget {
  final Game game;
  const DetailGame({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
              game: game,
              expandedHeight: 360,
              roundedContainerHeight: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: GameInfo(game: game),
          )
        ],
      ),
    );
  }
}
