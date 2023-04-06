import 'package:flutter/material.dart';
import 'package:game_store/detail/widgets/description_detail_section.dart';
import 'package:game_store/detail/widgets/gallery_detail_section.dart';
import 'package:game_store/detail/widgets/header_detail_section.dart';
import 'package:game_store/detail/widgets/review_detail_section.dart';
import 'package:game_store/models/game.dart';

class GameInfo extends StatelessWidget {
  final Game game;
  const GameInfo({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          HeaderDetailSection(game: game),
          GalleryDetailSection(game: game),
          DescriptionDetailSection(game: game),
          ReviewDetailSection(game: game),
        ],
      ),
    );
  }
}
