import 'package:flutter/material.dart';
import 'package:game_store/models/game.dart';

class ReviewDetailSection extends StatelessWidget {
  final Game game;
  const ReviewDetailSection({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 20.0,
      ),
      height: 200.0,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Ratings and review",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              Text(
                "View",
                style: TextStyle(color: Colors.grey.withOpacity(0.7)),
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                game.score.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 48.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildFiveStars(),
                  const SizedBox(height: 5),
                  Text(
                    "${game.review.toString()} reviews",
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          SizedBox(
            width: double.maxFinite,
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: const Color(0xFF5F67EA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: const Text(
                "Install",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row buildFiveStars() {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 25.0,
        ),
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 25.0,
        ),
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 25.0,
        ),
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 25.0,
        ),
        Icon(
          Icons.star,
          color: Colors.grey.withOpacity(0.7),
          size: 25.0,
        ),
      ],
    );
  }
}
