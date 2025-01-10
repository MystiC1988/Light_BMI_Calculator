import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:light_bmi_calculator/presentation/blocs/theme_provider.dart';
import 'package:light_bmi_calculator/presentation/widgets/dialogs/collaborate_dialog.dart';
import 'package:light_bmi_calculator/presentation/widgets/dialogs/info_dialog.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return AppBar(
      surfaceTintColor: Colors.transparent,
      toolbarHeight: 200,
      backgroundColor: Colors.transparent,
      elevation: 4,
      title: Column(
        children: [
          BlocBuilder<ThemeProvider, ThemeData>(
              builder: (BuildContext context, state) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/icon.png', width: 50),
                const SizedBox(width: 10),
                Text(
                  'Light',
                  style: TextStyle(
                      fontFamily: "Akayatelivigala",
                      fontSize: 30,
                      color: (state.brightness == Brightness.dark)
                          ? colorScheme.secondary
                          : const Color.fromARGB(180, 255, 255, 255),
                      fontWeight: FontWeight.w100),
                ),
                const Text(
                  ' BMI Calculator',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Akayatelivigala",
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ],
            );
          }),
          SizedBox(
            height: 80,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  bottom: 10,
                  left: 5,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: IconButton(
                      iconSize: 30,
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.info_outline, color: Colors.white),
                      onPressed: () {
                        showInfoDialog(context);
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 5,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: IconButton(
                      iconSize: 30,
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.favorite_outline,
                          color: Colors.pink),
                      onPressed: () {
                        showCollaborationDialog(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }

  Future<dynamic> showCollaborationDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Support Development'),
        content: const CollaborateDialog(),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  Future<dynamic> showInfoDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('About BMI Calculator'),
        content: const InfoDialog(),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
