import 'package:note_app/data/data_source/database_notifier.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:riverpod/riverpod.dart';
import 'package:sqflite/sqflite.dart';

final noteDbProvider = Provider<NoteDbHelper?>((ref) {
  final database = ref.watch(databaseProvider);
  ref.watch(databaseProvider.notifier).open();
  if (database != null) {
    return NoteDbHelper(database: database);
  }
  return null;
});

class NoteDbHelper {
  Database database;

  NoteDbHelper({required this.database});

  Future<Note?> getNoteById(int id) async {
    final List<Map<String, dynamic>> maps =
        await database.query('note', where: 'id = ?', whereArgs: [id]);

    if (maps.isNotEmpty) {
      return Note.fromJson(maps.first);
    }

    return null;
  }

  Future<List<Note>> getNotes() async {
    final maps = await database.query('note');
    return maps.map((map) => Note.fromJson(map)).toList();
  }

  Future<void> insertNote(Note note) async {
    await database.insert('note', note.toJson());
  }

  Future<void> updateNote(Note note) async {
    await database.update(
      'note',
      note.toJson(),
      where: 'id = ?',
      whereArgs: [note.id],
    );
  }

  Future<void> deleteNote(Note note) async {
    await database.delete(
      'note',
      where: 'id = ?',
      whereArgs: [note.id],
    );
  }
}
