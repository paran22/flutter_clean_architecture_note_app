import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:note_app/data/data_source/note_db_helper.dart';
import 'package:note_app/data/repository/note_repository_impl.dart';
import 'package:note_app/domain/model/note.dart';

final noteRepositoryProvider = Provider<NoteRepository?>((ref) {
  final database = ref.watch(noteDbProvider);
  if (database != null) {
    return NoteRepositoryImpl(database: database);
  }
  return null;
});

abstract class NoteRepository {
  Future<List<Note>> getNotes();

  Future<Note?> getNoteById(int id);

  Future<void> insertNote(Note note);

  Future<void> updateNote(Note note);

  Future<void> deleteNote(Note note);
}
