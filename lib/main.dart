import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:note_app/common/colors.dart';
import 'package:note_app/presentation/screen/notes_screen.dart';

void main() async {
  //플렛폼 채널의 위젯 바인딩을 보장
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        unselectedWidgetColor: Colors.white,
        primaryColor: Colors.white,
        backgroundColor: darkGray,
        canvasColor: darkGray,
        floatingActionButtonTheme: Theme.of(context)
            .floatingActionButtonTheme
            .copyWith(backgroundColor: Colors.white, foregroundColor: darkGray),
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              backgroundColor: darkGray,
            ),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
            ),
      ),
      home: const NotesScreen(),
    );
  }
}
