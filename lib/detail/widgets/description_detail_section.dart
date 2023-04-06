import 'package:flutter/material.dart';
import 'package:game_store/models/game.dart';
import 'package:readmore/readmore.dart';

class DescriptionDetailSection extends StatelessWidget {
  final Game game;
  const DescriptionDetailSection({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ReadMoreText(
        game.description,
        trimLines: 2,
        colorClickableText: const Color(0xFF5F67EA),
        trimMode: TrimMode.Line,
        trimCollapsedText: '  more',
        trimExpandedText: '  reduire',
        style: TextStyle(
          color: Colors.grey.withOpacity(0.8),
          height: 1.5,
        ),
      ),
    );
  }
}
