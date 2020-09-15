import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tdlib_example/utils/router.dart' as utilrouter;
import 'package:tdlib_example/utils/const.dart';
import 'package:tdlib_example/services/telegram_service.dart';
import 'package:tdlib_example/services/locator.dart';

void main() {
  //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlay.);

  WidgetsFlutterBinding.ensureInitialized();
  Provider.debugCheckInvalidValueType = null;
  setupLocator();
  runApp(
    MultiProvider(
      providers: [
        Provider<TelegramService>(
          create: (_) => TelegramService(lastRouteName: initRoute),
          lazy: false,
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: locator<NavigationService>().navigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      onGenerateRoute: utilrouter.Router.generateRoute,
      initialRoute: initRoute,
    );
  }
}
