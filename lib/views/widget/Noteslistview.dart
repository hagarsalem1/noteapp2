import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/Notesiten.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: NotesItem(),
            );
          }),
    );
  }
}
