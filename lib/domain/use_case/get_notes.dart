import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/domain/util/note_order.dart';
import 'package:note_app/domain/util/order_type.dart';

class GetNotes {
  final NoteRepository noteRepository;

  const GetNotes({
    required this.noteRepository,
  });

  Future<List<Note>> call(NoteOrder noteOrder) async {
    List<Note> notes = await noteRepository.getNotes();
    noteOrder.when(title: (OrderType orderType) {
      orderType.when(ascending: () {
        notes.sort((a, b) => a.title.compareTo(b.title));
      }, descending: () {
        notes.sort((a, b) => -a.title.compareTo(b.title));
      });
    }, date: (OrderType orderType) {
      orderType.when(ascending: () {
        notes.sort((a, b) => a.timestamp.compareTo(b.timestamp));
      }, descending: () {
        notes.sort((a, b) => -a.timestamp.compareTo(b.timestamp));
      });
    }, color: (OrderType orderType) {
      orderType.when(ascending: () {
        notes.sort((a, b) => a.color.compareTo(b.color));
      }, descending: () {
        notes.sort((a, b) => -a.color.compareTo(b.color));
      });
    });

    return notes;
  }
}
