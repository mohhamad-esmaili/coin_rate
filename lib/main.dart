import 'package:flutter/material.dart';
import 'package:coin_rate/locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:coin_rate/core/config/app_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:coin_rate/feature/home/presentation/bloc/home_bloc.dart';
import 'package:coin_rate/feature/home/presentation/screen/home_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupLocator();

  runApp(const Root());
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: AppTheme.darkTheme,
      locale: const Locale('fa', ''),
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale('fa', ''),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: BlocProvider(
        create: (_) => locator<HomeBloc>()..add(Load10TopCoins()),
        child: const HomeView(),
      ),
    );
  }
}
