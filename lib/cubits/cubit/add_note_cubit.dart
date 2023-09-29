import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

part 'add_note_state.dart';

class NoteCubit extends Cubit<AddNoteState> {
  NoteCubit() : super(AddNoteInitial());
}
