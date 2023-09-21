import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_app_bar.dart';
import 'package:noteapp/views/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: const [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(),
          NoteItem(),
        ],
      ),
    );
  }
}
