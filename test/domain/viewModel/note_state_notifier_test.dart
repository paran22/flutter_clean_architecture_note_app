import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/domain/viewModel/note_state_notifier.dart';
import 'package:note_app/main.dart';

void main() {
  testWidgets('note state test', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          noteRepositoryProvider.overrideWithValue(FakeRepository()),
        ],
        child: const MyApp(),
      ),
    );

    final Note1 =
    Note(title: 'test1', content: 'content1', color: 1, timestamp: 1);
    final Note2 =
    Note(title: 'test2', content: 'content2', color: 2, timestamp: 2);

    final noteStateNotifier = NoteStateNotifier(repository: FakeRepository());
    noteStateNotifier.saveNote(title: 'title', content: 'content', color: 3);
  });
}

class FakeRepository implements NoteRepository {
  FakeRepository();

  @override
  Future<void> deleteNote(Note note) {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Future<Note?> getNoteById(int id) {
    // TODO: implement getNoteById
    throw UnimplementedError();
  }

  @override
  Future<List<Note>> getNotes() {
    // TODO: implement getNotes
    throw UnimplementedError();
  }

  @override
  Future<void> insertNote(Note note) {
    // TODO: implement insertNote
    throw UnimplementedError();
  }

  @override
  Future<void> updateNote(Note note) {
    // TODO: implement updateNote
    throw UnimplementedError();
  }
}
