import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/Models/Note_model.dart';
import 'package:noteapp/views/widget/Colors.dart';

part 'addnote_state.dart';

class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super(AddnoteInitial());

  Addnote(NotesModel note) {
    emit(AddnoteInitialLoading());
    try {
      var noteBox = Hive.box<NotesModel>(kNotesBox);
      emit(AddnoteInitialScussed());
      noteBox.add(note);
    } catch (e) {
      AddnoteInitialFaluire(e.toString());
    }
  }
}
