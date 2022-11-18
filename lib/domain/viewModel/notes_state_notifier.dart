import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/model/notes_state.dart';
import 'package:note_app/domain/model/order_type.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/domain/model/note_order.dart';

class NotesStateNotifier extends StateNotifier<NotesState> {
  final NoteRepository? repository;
  Note? _recentDeletedNote;

  NotesStateNotifier({required this.repository})
      : super(NotesState(
            notes: [],
            noteOrder: const NoteOrder.date(OrderType.descending()),
            isOrderSectionVisible: false)) {
    getNotes();
  }

  void toggleOrderSection() {
    state = state.copyWith(isOrderSectionVisible: !state.isOrderSectionVisible);
  }

  Future<void> changeOrder(NoteOrder noteOrder) async {
    state = state.copyWith(noteOrder: noteOrder);
    getNotes();
  }

  Future<void> getNotes() async {
    if (repository != null) {
      List<Note> notes = await repository!.getNotes();

      state.noteOrder.when(title: (OrderType orderType) {
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

      state = state.copyWith(notes: notes);
    }
  }

  Future<void> deleteNote(Note note) async {
    if (repository != null) {
      _recentDeletedNote = note;
      await repository!.deleteNote(note);
      getNotes();
    }
  }

  Future<void> restoreNote() async {
    if (repository != null && _recentDeletedNote != null) {
      await repository!.insertNote(_recentDeletedNote!);
      _recentDeletedNote = null;
      getNotes();
    }
  }
}
