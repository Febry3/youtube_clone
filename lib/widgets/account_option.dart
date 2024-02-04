import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountOption extends StatelessWidget {
  final String text;
  final IconData icon;
  const AccountOption({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 42, 42, 42)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              const SizedBox(
                width: 7.5,
              ),
              Icon(
                icon,
                size: 20,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(
                width: 7.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AccountOptionList extends StatelessWidget {
  const AccountOptionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          AccountOption(
            icon: Icons.account_box_outlined,
            text: 'Switch Account',
          ),
          AccountOption(
            icon: Icons.supervised_user_circle_outlined,
            text: 'Google Account',
          ),
          AccountOption(
            icon: Icons.security_outlined,
            text: 'Turn on incognito',
          ),
        ],
      ),
    );
  }
}
