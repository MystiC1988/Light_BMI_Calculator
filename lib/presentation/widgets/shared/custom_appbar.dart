import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:light_bmi_calculator/presentation/blocs/collaborate_provider.dart';
import 'package:light_bmi_calculator/presentation/widgets/dialogs/collaborate_dialog.dart';
import 'package:light_bmi_calculator/presentation/widgets/dialogs/info_dialog.dart';
import 'package:light_bmi_calculator/l10n/app_localizations.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colors = Theme.of(context).colorScheme;
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              iconSize: 30,
              padding: EdgeInsets.zero,
              icon: Icon(Icons.info_outline, color: colors.primary),
              onPressed: () {
                showInfoDialog(context);
              },
            ),
            (isDarkMode)
                ? SvgPicture.asset(
                    'assets/images/icons/logo_dark.svg',
                    height: 100,
                  )
                : SvgPicture.asset(
                    'assets/images/icons/logo.svg',
                    height: 100,
                  ),
            BlocBuilder<CollaborateProvider, bool>(
                builder: (BuildContext context, state) {
              return (state)
                  ? Pulse(
                      infinite: true,
                      duration: const Duration(seconds: 2),
                      child: showCollaborateDialogBtn(context),
                    )
                  : showCollaborateDialogBtn(context);
            }),
          ],
        ),
      ),
    );
  }

  IconButton showCollaborateDialogBtn(BuildContext context) {
    return IconButton(
      iconSize: 30,
      splashColor: Colors.black,
      splashRadius: 30,
      padding: EdgeInsets.zero,
      icon: const Icon(Icons.favorite_outline,
          color: Color.fromARGB(255, 255, 109, 109)),
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
        content: const CollaborateDialog(),
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
