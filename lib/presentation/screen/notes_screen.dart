import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:note_app/domain/model/notes_state.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/domain/util/note_order.dart';
import 'package:note_app/presentation/components/note_item.dart';
import 'package:note_app/presentation/components/order_section.dart';
import 'package:note_app/presentation/screen/add_edit_note_screen.dart';
import 'package:note_app/presentation/viewModel/notes_state_notifier.dart';

final _notesStateProvider =
    StateNotifierProvider<NotesStateNotifier, NotesState>((ref) {
  final repository = ref.watch(noteRepositoryProvider);
  return NotesStateNotifier(repository: repository);
});

class NotesScreen extends ConsumerStatefulWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends ConsumerState<NotesScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(_notesStateProvider.notifier).getNotes();
  }

  @override
  Widget build(BuildContext context) {
    final notesState = ref.watch(_notesStateProvider);
    final isOrderSection = notesState.isOrderSectionVisible;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your note',
          style: TextStyle(fontSize: 30.0),
        ),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(_notesStateProvider.notifier).toggleOrderSection();
            },
            icon: const Icon(Icons.sort),
          )
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: isOrderSection
                ? OrderSection(
                    noteOrder: ref.watch(
                      _notesStateProvider.select((value) => value.noteOrder),
                    ),
                    onOrderChanged: (NoteOrder noteOrder) {
                      ref
                          .read(_notesStateProvider.notifier)
                          .changeOrder(noteOrder);
                    },
                  )
                : Container(),
          ),
          ...notesState.notes
              .map(
                (note) => GestureDetector(
                  onTap: () async {
                    bool isSaved = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddEditNoteScreen(
                          note: note,
                        ),
                      ),
                    );
                    if (isSaved) {
                      ref.read(_notesStateProvider.notifier).getNotes();
                    }
                  },
                  child: NoteItem(
                    note: note,
                    onDeleteTap: () {
                      ref.read(_notesStateProvider.notifier).deleteNote(note);
                      final snackBar = SnackBar(
                        content: const Text('노트가 삭제되었습니다'),
                        action: SnackBarAction(
                          label: '취소',
                          onPressed: () {
                            ref
                                .read(_notesStateProvider.notifier)
                                .restoreNote();
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                ),
              )
              .toList(),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          bool isSaved = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddEditNoteScreen()),
          );
          if (isSaved) {
            ref.read(_notesStateProvider.notifier).getNotes();
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
