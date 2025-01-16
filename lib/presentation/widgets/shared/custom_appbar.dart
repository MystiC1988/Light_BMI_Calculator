import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:light_bmi_calculator/presentation/blocs/collaborate_provider.dart';
import 'package:light_bmi_calculator/presentation/blocs/theme_provider.dart';
import 'package:light_bmi_calculator/presentation/widgets/dialogs/collaborate_dialog.dart';
import 'package:light_bmi_calculator/presentation/widgets/dialogs/info_dialog.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return SafeArea(
      child: Column(
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
                  bottom: 0,
                  left: 20,
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
                  bottom: 0,
                  right: 20,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: BlocBuilder<CollaborateProvider, bool>(
                        builder: (BuildContext context, state) {
                      return (state)
                          ? Pulse(
                              infinite: true,
                              duration: const Duration(seconds: 2),
                              child: showCollaborateDialogBtn(context),
                            )
                          : showCollaborateDialogBtn(context);
                    }),
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

  IconButton showCollaborateDialogBtn(BuildContext context) {
    return IconButton(
      iconSize: 30,
      splashColor: Colors.black,
      splashRadius: 30,
      padding: EdgeInsets.zero,
      icon: const Icon(Icons.favorite_outline, color: Colors.pink),
      onPressed: () {
        context.read<CollaborateProvider>().setCollaboratedShowed();
        showCollaborationDialog(context);
      },
    );
  }

  Future<dynamic> showCollaborationDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.supportDialogTitle),
        content: CollaborateDialog(),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.closeText),
          ),
        ],
      ),
    );
  }

  Future<dynamic> showInfoDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
            AppLocalizations.of(context)!.bmiCalculationExplanationDialogTitle),
        content: const InfoDialog(),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.closeText),
          ),
        ],
      ),
    );
  }
}
