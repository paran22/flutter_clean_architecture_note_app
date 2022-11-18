import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:note_app/common/colors.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/repository/note_repository.dart';
import 'package:note_app/common/post_frame_mixin.dart';
import 'package:note_app/presentation/viewModel/note_state_notifier.dart';

final _colorProvider = StateProvider.autoDispose<int>((ref) => roseBud.value);

final _noteStateProvider =
    StateNotifierProvider.autoDispose<NoteStateNotifier, Note?>((ref) {
  final repository = ref.watch(noteRepositoryProvider);
  return NoteStateNotifier(repository: repository);
});

class AddEditNoteScreen extends ConsumerStatefulWidget {
  final Note? note;

  const AddEditNoteScreen({Key? key, this.note}) : super(key: key);

  @override
  ConsumerState<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends ConsumerState<AddEditNoteScreen>
    with PostFrameMixin {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.note != null) {
      postFrame(() {
        _titleController.text = widget.note!.title;
        _contentController.text = widget.note!.content;
        ref.read(_colorProvider.notifier).state = widget.note!.color;
        ref.read(_noteStateProvider.notifier).getNote(id: widget.note!.id!);
      });
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Write your note'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: Color(ref.watch(_colorProvider)),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 48, left: 16, right: 16, bottom: 16),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...noteColors
                    .map(
                      (color) => InkWell(
                        onTap: () {
                          ref.read(_colorProvider.notifier).state = color.value;
                        },
                        child: _buildBackgroundColor(
                          color: color,
                          selected: ref.read(_colorProvider) == color.value,
                        ),
                      ),
                    )
                    .toList()
              ],
            ),
            TextField(
              controller: _titleController,
              maxLines: 1,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: darkGray),
              decoration: const InputDecoration(
                hintText: '제목을 입력하세요',
                border: InputBorder.none,
              ),
            ),
            TextField(
              controller: _contentController,
              maxLines: null,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: darkGray),
              decoration: const InputDecoration(
                hintText: '내용을 입력하세요',
                border: InputBorder.none,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final title = _titleController.text;
          final content = _contentController.text;
          if (title.isEmpty || content.isEmpty) {
            const snackBar = SnackBar(
              content: Text('제목과 내용을 입력해주세요.'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            return;
          }
          ref.read(_noteStateProvider.notifier).saveNote(
                title: title,
                content: content,
                color: ref.read(_colorProvider),
              );
          Navigator.of(context).pop(true);
        },
        child: const Icon(Icons.save),
      ),
    );
  }

  Widget _buildBackgroundColor({
    required Color color,
    required bool selected,
  }) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 5.0,
            spreadRadius: 1.0,
          ),
        ],
        border: selected
            ? Border.all(
                color: Colors.black,
                width: 3.0,
              )
            : null,
      ),
    );
  }
}
