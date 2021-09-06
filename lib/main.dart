import 'package:airplane_app/cubit/page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/signup-page': (context) => SignUpPage(),
          '/bonus-page': (context) => BonusPage(),
          '/main-page': (context) => MainPage(),
          '/detail-page': (context) => DetailPage(),
          '/choose-seat-page': (context) => ChooseSeatPage(),
          '/checkout-page': (context) => CheckOutPage(),
          '/success-checkout-page': (context) => SuccessCheckoutPage(),
        },
      ),
    );
  }
}
