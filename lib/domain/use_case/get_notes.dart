import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

class GetNotes {
  final NoteRepository noteRepository;

  const GetNotes({
    required this.noteRepository,
  });

  Future<List<Note>> call() async {
    return await noteRepository.getNotes();
  }
}
