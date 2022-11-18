import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

class NoteStateNotifier extends StateNotifier<Note?> {
  final NoteRepository? repository;

  NoteStateNotifier({required this.repository}) : super(null);

  Future<void> getNote({required int id}) async {
    if (repository != null) {
      state = await repository!.getNoteById(id);
    }
  }

  Future<void> saveNote({
    int? id,
    required String title,
    required String content,
    required int color,
  }) async {
    if (repository != null) {
      Note note;
      if (id == null) {
        note = Note(
          title: title,
          content: content,
          color: color,
          timestamp: DateTime.now().millisecondsSinceEpoch,
        );
        await repository!.insertNote(note);
      } else {
        note = state!.copyWith(
          title: title,
          content: content,
          color: color,
          timestamp: DateTime.now().millisecondsSinceEpoch,
        );
        await repository!.updateNote(note);
      }
      state = note;
    }
  }
}
