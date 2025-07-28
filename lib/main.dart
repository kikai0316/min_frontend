import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:minmin_frontend/view/initial_page.dart';
import 'package:minmin_frontend/widget/widget/surveillance_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      // routes: {
      //   // '/login_page': (context) => const LoginPage(
      //   //       accountType: AccountType.general,
      //   //     ),
      //   // '/initial': (context) => const InitialPage(),
      // },
      debugShowCheckedModeBanner: false,
      home: Surveillance(
        onForeground: () async {},
        onBackground: () async {},
        child: const InitialPage(),
      ),
    );
  }
}
