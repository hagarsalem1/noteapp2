import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/AppBarcustom.dart';
import 'package:noteapp/views/widget/custom%20text%20field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(
              icon: Icons.check,
              title: 'Edit Notes',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(hint: 'Title', maxlines: 1),
            SizedBox(
              height: 16,
            ),
            CustomTextField(hint: 'Content', maxlines: 5),
          ],
        ),
      ),
    );
  }
}
