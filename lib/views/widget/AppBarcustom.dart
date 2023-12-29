import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/custonicon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustonSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
