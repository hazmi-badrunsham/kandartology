import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'core/routing/app_router.dart';
import 'core/theme/app_theme.dart'; // We'll create this next
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  debugPrint('🔥 Firebase initialized: ${Firebase.app().name}');
  
  runApp(
    // 🔹 Wrap app with ProviderScope for Riverpod
    const ProviderScope(
      child: KandartologyApp(),
    ),
  );
}

class KandartologyApp extends ConsumerWidget {
  const KandartologyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Kandaq',
      theme: AppTheme.lightTheme, // We'll create this next
      routerConfig: router, // 🔹 Use GoRouter
      debugShowCheckedModeBanner: false,
    );
  }
}