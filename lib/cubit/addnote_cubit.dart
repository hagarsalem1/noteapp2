import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/Models/Note_model.dart';

part 'addnote_state.dart';

class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super(AddnoteInitial());

  Addnote(NotesModel note) {}
}
