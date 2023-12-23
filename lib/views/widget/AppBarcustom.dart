import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/custonicon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustonSearchIcon(),
      ],
    );
  }
}
