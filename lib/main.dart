import '/utils/constants.dart';
import '/view_models/item_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_page.dart';
import 'widgets/my_bool_notifier.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ItemViewModel()),
        ChangeNotifierProvider(create: (context) => MyBoolNotifier()),
      ],
      // create: (BuildContext context) {},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cart App',
        theme: ThemeData(
          primaryColor: AppColors.primaryColor,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
