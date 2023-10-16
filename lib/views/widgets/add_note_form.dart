import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubits/cubit/add_note_cubit.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/views/widgets/custom_bottom.dart';
import 'package:noteapp/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            hint: 'title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 17,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'content',
            maxlines: 5,
          ),
          const SizedBox(
            height: 60,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomBottom(
                isLoading: true,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    BlocProvider.of<AddNoteCubit>(context).addNote(
                      NoteModel(
                          title: title!,
                          subTitle: subTitle!,
                          date: DateTime.now().toString(),
                          color: Colors.blue.value),
                    );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
