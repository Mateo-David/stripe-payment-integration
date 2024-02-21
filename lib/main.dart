import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:humantek_task/stripe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
      'pk_test_51OOy3uDC62mLUVol9gL1EyUxfjH0eRnkU9u0c4l4IuVUW4tq7cgJky8jMfaXNG6IzTjlMudOBWpUNBKhxZwekhTM00MeOoqFO6';
  await dotenv.load(fileName: 'assets/.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StripeView(),
    );
  }
}
