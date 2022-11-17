import 'package:flutter/material.dart';
import 'package:note_app/presentation/add_edit_note/screen/add_edit_note_screen.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your note',
          style: TextStyle(fontSize: 30.0),
        ),
        actions: [
          IconButton(
            onPressed: () {},
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
            child: Container(),
          ),
          // ...state.notes
          //     .map(
          //       (note) => GestureDetector(
          //         onTap: () async {
          //           bool? isSaved = await Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //               builder: (context) => AddEditNoteScreen(
          //                 note: note,
          //               ),
          //             ),
          //           );
          //           if (isSaved != null && isSaved) {
          //           }
          //         },
          //         child: NoteItem(
          //           note: note,
          //           onDeleteTap: () {
          //             final snackBar = SnackBar(
          //               content: const Text('노트가 삭제되었습니다'),
          //               action: SnackBarAction(
          //                 label: '취소',
          //                 onPressed: () {
          //                 },
          //               ),
          //             );
          //             ScaffoldMessenger.of(context).showSnackBar(snackBar);
          //           },
          //         ),
          //       ),
          //     )
          //     .toList(),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          bool? isSaved = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddEditNoteScreen()),
          );
          if (isSaved != null && isSaved) {}
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
