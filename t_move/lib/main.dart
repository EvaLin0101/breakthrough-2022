import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:go_router/go_router.dart';
import 'package:stripe_example/.env.dart';
import 'package:stripe_example/screens/card_payments/no_webhook_payment_screen.dart';
import 'package:stripe_example/screens/payment_success.dart';
import 'package:stripe_example/trainTicketPage.dart';

import 'models/order_form.dart';
import 'newSwanstoneCastleTicketPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = stripePublishableKey;
  Stripe.merchantIdentifier = 'merchant.flutter.stripe.test';
  Stripe.urlScheme = 'flutterstripe';
  await Stripe.instance.applySettings();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return NewSwanstoneCastleTicketPage();
        },
      ),
      GoRoute(
        path: '/bundle',
        builder: (BuildContext context, GoRouterState state) {
          return TrainTicketPage();
        },
      ),
      GoRoute(
        path: '/payment',
        pageBuilder: (context, state) {
          return MaterialPage(
            fullscreenDialog: true,
            child: NoWebhookPaymentScreen(state.extra as OrderForm),
          );
        },
      ),
      GoRoute(
        path: '/success',
        builder: (BuildContext context, GoRouterState state) {
          return PaymentSuccess();
        },
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: exampleAppTheme,
    );
  }
}

final exampleAppTheme = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Color(0xff61b7ac),
    secondary: Color(0xff61b7ac),
  ),
  primaryColor: Colors.white,
  appBarTheme: AppBarTheme(elevation: 1),
);
