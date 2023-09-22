import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomTextField(hint: 'title'),
          SizedBox(
            height: 17,
          ),
          CustomTextField(
            hint: 'content',
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
