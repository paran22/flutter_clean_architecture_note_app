import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/domain/use_case/get_notes.dart';

import 'get_notes_test.mocks.dart';

@GenerateMocks([NoteRepository])
void main() {
  test('정렬 기능이 잘 동작해야 한다', () async {
    final repository = MockNoteRepository();
    final useCase = GetNotes(noteRepository: repository);

    when(repository.getNotes()).thenAnswer((_) async => [
          Note(title: 'title1', content: 'content1', timestamp: 0, color: 1),
          Note(title: 'title2', content: 'content2', timestamp: 2, color: 2),
        ]);
  });
}
