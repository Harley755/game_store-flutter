import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top * 1.3,
        left: 25.0,
        right: 25.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'What would you like to play ?',
                style: TextStyle(
                  fontSize: 19.0,
                  color: Colors.white,
                ),
              )
            ],
          ),
          CircleAvatar(
            child: Image.asset(
              'assets/images/avatar.png',
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          )
        ],
      ),
    );
  }
}
