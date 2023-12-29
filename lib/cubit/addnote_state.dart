part of 'addnote_cubit.dart';

@immutable
sealed class AddnoteState {}

final class AddnoteInitial extends AddnoteState {}

final class AddnoteInitialLoading extends AddnoteState {}

final class AddnoteInitialScussed extends AddnoteState {}

final class AddnoteInitialFaluire extends AddnoteState {
  final String errmassage;

  AddnoteInitialFaluire(this.errmassage);
}
