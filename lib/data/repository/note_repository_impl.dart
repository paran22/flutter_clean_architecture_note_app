import 'package:note_app/data/data_source/note_db_helper.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

class NoteRepositoryImpl implements NoteRepository {
  final NoteDbHelper database;

  NoteRepositoryImpl({required this.database});

  @override
  Future<void> deleteNote(Note note) async {
    await database.deleteNote(note);
  }

  @override
  Future<Note?> getNoteById(int id) async {
    return await database.getNoteById(id);
  }

  @override
  Future<List<Note>> getNotes() async {
    return await database.getNotes();
  }

  @override
  Future<void> insertNote(Note note) async {
    await database.insertNote(note);
  }

  @override
  Future<void> updateNote(Note note) async {
    await database.deleteNote(note);
  }
}
