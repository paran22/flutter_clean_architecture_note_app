import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

class UpdateNote {
  final NoteRepository noteRepository;

  const UpdateNote({
    required this.noteRepository,
  });

  Future<void> call(Note note) async {
    await noteRepository.updateNote(note);
  }
}
