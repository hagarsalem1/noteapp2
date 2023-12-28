import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/AppBarcustom.dart';
import 'package:noteapp/views/widget/Noteslistview.dart';

class CustombodyNoteview extends StatelessWidget {
  const CustombodyNoteview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          Expanded(child: NotesList()),
        ],
      ),
    );
  }
}
