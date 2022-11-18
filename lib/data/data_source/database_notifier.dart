import 'package:riverpod/riverpod.dart';
import 'package:sqflite/sqflite.dart';

final databaseProvider = StateNotifierProvider<DatabaseNotifier, Database?>(
    (ref) => DatabaseNotifier());

class DatabaseNotifier extends StateNotifier<Database?> {
  DatabaseNotifier() : super(null);

  Future<void> open() async {
    final database = await openDatabase(
      'notes_db',
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
            'CREATE TABLE note (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, content TEXT, color INTEGER, timestamp INTEGER)');
      },
    );
    state = database;
  }
}
