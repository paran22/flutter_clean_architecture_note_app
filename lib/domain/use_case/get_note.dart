import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';

class GetNote {
  final NoteRepository noteRepository;

  const GetNote({
    required this.noteRepository,
  });

  Future<Note?> call(int id) async {
    return await noteRepository.getNoteById(id);
  }
}
