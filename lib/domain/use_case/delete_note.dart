import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

class DeleteNote {
  final NoteRepository noteRepository;

  const DeleteNote({
    required this.noteRepository,
  });

  Future<void> call(Note note) async {
    await noteRepository.deleteNote(note);
  }


}