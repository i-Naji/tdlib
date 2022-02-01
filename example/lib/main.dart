import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tdlib/td_client.dart';

import './utils/router.dart' as utilrouter;
import './utils/const.dart';
import './services/telegram_service.dart';
import './services/locator.dart';

void main() async {
  //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlay.);

  WidgetsFlutterBinding.ensureInitialized();
  Provider.debugCheckInvalidValueType = null;
  await TdPlugin.initialize();
  setupLocator();
  runApp(
    MultiProvider(
      providers: [
        Provider<TelegramService>(
          create: (_) => TelegramService(lastRouteName: initRoute),
          lazy: false,
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);
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
