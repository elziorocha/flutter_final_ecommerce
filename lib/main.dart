import 'package:flutter/material.dart';
import 'package:flutter_final/Provider/carrinho_provider.dart';
import 'package:flutter_final/Provider/favorito_provider.dart';
import 'package:flutter_final/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CarrinhoProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: GoogleFonts.mulishTextTheme()),
        home: LoginScreen(),
      );
}
