import 'package:note_app/domain/use_case/add_note.dart';
import 'package:note_app/domain/use_case/delete_note.dart';
import 'package:note_app/domain/use_case/get_note.dart';
import 'package:note_app/domain/use_case/get_notes.dart';
import 'package:note_app/domain/use_case/update_note.dart';

class UseCases {
  final AddNote addNote;
  final DeleteNote deleteNote;
  final GetNote getNote;
  final GetNotes getNotes;
  final UpdateNote updateNote;

  const UseCases({
    required this.addNote,
    required this.deleteNote,
    required this.getNote,
    required this.getNotes,
    required this.updateNote,
  });
}
