import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:light_bmi_calculator/presentation/blocs/collaborate_provider.dart';
import 'package:light_bmi_calculator/presentation/blocs/theme_provider.dart';
import 'package:light_bmi_calculator/presentation/screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeProvider()),
        BlocProvider(create: (context) => CollaborateProvider()),
      ],
      child: BlocBuilder<ThemeProvider, ThemeData>(
        builder: (BuildContext context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: state,
            home: const HomeScreen(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
