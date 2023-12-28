import 'package:flutter/material.dart';
import 'package:noteapp/views/widget/addnote_bottomsheet.dart';
import 'package:noteapp/views/widget/noteview%20custom%20_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          child: const Icon(
            Icons.add,
          )),
      body: const CustombodyNoteview(),
    );
  }
}
