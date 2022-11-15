import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

class AddNote {
  final NoteRepository noteRepository;

  const AddNote({
    required this.noteRepository,
  });

  Future<void> call(Note note) async {
    await noteRepository.insertNote(note);
  }
}
