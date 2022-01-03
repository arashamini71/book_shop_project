import 'package:book_shop_project/bloc/book_bloc.dart';
import 'package:book_shop_project/home_screen.dart';
import 'package:book_shop_project/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BookBloc>(
      create: (context) => BookBloc()..add(GetBooks()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Roboto',
          scaffoldBackgroundColor: const Color(0xFF1041FB),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFF1041FB),
              elevation: 0,
              titleTextStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              )),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
