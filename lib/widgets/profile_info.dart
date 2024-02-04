import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Anonym',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text('@Anonym9669'),
                  SizedBox(
                    width: 5,
                  ),
                  Text('•'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'View channel',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    size: 16,
                    color: Colors.grey,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
