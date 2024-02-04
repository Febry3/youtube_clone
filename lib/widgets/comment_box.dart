import 'package:flutter/material.dart';

class CommentBox extends StatelessWidget {
  const CommentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 42, 42, 42),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Comments',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '200K',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 305,
                        child: const Text(
                          'Mantap 👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍👍',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    size: 16,
                    color: Colors.grey,
                  )
                ],
              ),
              const SizedBox(
                height: 2.5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
