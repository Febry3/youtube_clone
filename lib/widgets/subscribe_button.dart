import 'package:flutter/material.dart';

class Subscribe extends StatelessWidget {
  final double w, h;
  const Subscribe({super.key, this.w = 100, this.h = 35});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: const Center(
        child: Text(
          'Subscribe',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
