import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 30.0,
      ),
      child: Stack(
        children: [
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              prefixIcon: const Icon(
                Icons.search_outlined,
                size: 30.0,
              ),
              hintText: 'Search Game',
              hintStyle: TextStyle(
                fontSize: 16.0,
                color: Colors.grey.withOpacity(.7),
              ),
            ),
          ),
          Positioned(
            right: 12.0,
            bottom: 10.0,
            child: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xFF5F67EA),
              ),
              child: const Icon(
                Icons.mic_outlined,
                color: Colors.white,
                size: 25.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
